
#include <vector>
#include <string>
#include <iostream>
#include <charconv>

void undefinedBehaviour() {
    char *p = {"bad"};
    char p1[] = {"bad"};//works because its an array
    p[0] = '1';
}

void rawString() {
    const char *str{R"(Hello "World"!)"};//no issues with "
    const char *str1{R"(Line
1 Line 2)"}; //several lines

}

void ctad() {
    std::vector names{"John", "Sam", "Joe"}; // vector<const char*>
    std::vector<std::string> numbers{"1", "2", "3"};
}

void converting() {
    int i = std::stoi("123");
    long l = std::stol("123");
    double d = std::stod("123.21");
    std::cout << i << " " << l << " " << d;
}

void toStr() {
    const size_t BufferSize{50};
    std::string out(BufferSize, ' '); // A string of BufferSize space characters.
    auto [ptr, error] {std::to_chars(out.data(), out.data() + out.size(), 12345)};
    if (error == std::errc{}) { std::cout << out << std::endl; /* Conversion successful. */ }
}

/**
 * WARNING 1 Functions returning a string should return a const string& or a string, but not a string_view.
 * Returning a string_view would introduce the risk of invalidating the returned string_view if, for example,
 * the string to which it refers needs to reallocate.
 *
 * WARNING 2 Storing a const string& or a string_view as a data member of a class requires you
 * to make sure the string to which they refer stays alive for the duration of the object’s lifetime.
 * It’s safer to store a std::string instead.
 *
 * WARNING 3 Never use std::string_view to store a view of temporary strings.
 */
std::string_view extractExtension(std::string_view filename) {
    std::string s{"Hello"};
    std::string_view sv{s + " World!"}; //the problem. If s is deleted - string_view is doomed
    std::cout << sv;

    return filename.substr(filename.rfind('.'));
}

int main() {
    converting();
}