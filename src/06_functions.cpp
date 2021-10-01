#include <iostream>

void funNameIs(){
    std::cout << __func__ << std::endl;
}

int main() {
    funNameIs();
}