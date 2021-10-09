#include <iostream>

void funNameIs() {
    std::cout << __func__ << std::endl;
}

int main() {
    funNameIs();

    //uniform initialization
    int a{}; //0
//    int b{3.14}; error
    int *arr = new int[]{1, 2, 3, 4};
}