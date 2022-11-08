#include <iostream>
#include <memory>

class Resource {
public:
    Resource() { std::cout << "Resource acquired\n"; }

    ~Resource() { std::cout << "Resource destroyed\n"; }
};

int main() {
    Resource *res{new Resource};
    std::shared_ptr<Resource> ptr1 = std::make_shared<Resource>(); //better performance because control sum can be created along with object
    {
        std::shared_ptr<Resource> ptr2 = {ptr1}; // make another std::shared_ptr pointing to the same thing

        std::cout << "Killing one shared pointer\n";
    } // ptr2 goes out of scope here, but nothing happens

    std::cout << "Killing another shared pointer\n";
}