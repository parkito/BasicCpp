#include <iostream>

int main() {
    //benefits come when we compare complex structured objects
    int i{10};
    std::strong_ordering so{i <=> 20}; // numbers
    if (so == std::strong_ordering::less) {
        std::cout << "less" << std::endl;
    }

    if (std::is_lt(so)) {
        std::cout << "less";
    }

    std::partial_ordering po{i <=> 20}; // floats

    std::weak_ordering wo{i <=> 20}; // for custom types
}