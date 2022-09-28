#include <iostream>
#include <memory>
#include <vector>

class Rectangle {
    int length;
    int breadth;

public:
    Rectangle(int l, int b) {
        length = l;
        breadth = b;
    }

    int area() { return length * breadth; }
};

int main() {
    //  unique_ptr
    // When using the std::unique_ptr smart pointer, you can only assign one owner for the pointer
    // behind the wrapper. The object the std::unique_ptr points to is deleted automatically when the
    // smart pointer leaves the scope.

    //  So we can’t share with another pointer, but we can transfer the control to p2 by removing p1.

    //  The std::unique_ptr smart pointer does not have a copy constructor, so you cannot share or
    //  duplicate it – the system will throw an error, just like in the example below:
    auto p1 = std::make_unique<Rectangle>(10, 5);
    std::cout << p1->area() << std::endl;
}