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

    ~Rectangle() {
        std::cout << "Deallocating" << std::endl;
    }

    int area() { return length * breadth; }
};

std::unique_ptr<Rectangle> createResource() {
    return std::make_unique<Rectangle>(1, 2);
}

void takeOwnership(std::unique_ptr<Rectangle> ptr) {
    std::cout << ptr->area() << std::endl;
}

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

    auto p2{createResource()};
    takeOwnership(std::move(p2));//to pass it to a function
//    std::cout << "After move" << p2->area() << std::endl; //sigsegv
    std::cout << createResource()->area() << std::endl;
    std::cout << (p2 == nullptr) << std::endl;
    std::cout << p2->area() << std::endl;
    std::cout << "Reset" << std::endl;
    p2.reset();
    std::cout << (p2 == nullptr) << std::endl;
}