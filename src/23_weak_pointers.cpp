/**
 * https://www.learncpp.com/cpp-tutorial/circular-dependency-issues-with-stdshared_ptr-and-stdweak_ptr/
 */

#include <iostream>
#include <memory>
#include <utility>

class Person {
    std::string m_name;
    std::shared_ptr<Person> m_partner; // initially created empty

public:

    explicit Person(std::string name) : m_name(std::move(name)) {
        std::cout << m_name << " created\n";
    }

    ~Person() {
        std::cout << m_name << " destroyed\n";
    }

    friend bool partnerUp(std::shared_ptr<Person> &p1, std::shared_ptr<Person> &p2) {
        if (!p1 || !p2)
            return false;

        p1->m_partner = p2;
        p2->m_partner = p1;

        std::cout << p1->m_name << " is now partnered with " << p2->m_name << '\n';
        return true;
    }
};

class Resource {
public:
    std::shared_ptr<Resource> m_ptr{}; // initially created empty

    Resource() { std::cout << "Resource acquired\n"; }

    ~Resource() { std::cout << "Resource destroyed\n"; }
};

class FixedPerson {
    std::string m_name;
    std::weak_ptr<FixedPerson> m_partner; // note: This is now a std::weak_ptr

public:

    explicit FixedPerson(std::string name) : m_name(std::move(name)) {
        std::cout << m_name << " created\n";
    }

    ~FixedPerson() {
        std::cout << m_name << " destroyed\n";
    }

    friend bool fixedPartnerUp(std::shared_ptr<FixedPerson> &p1, std::shared_ptr<FixedPerson> &p2) {
        if (!p1 || !p2)
            return false;

        p1->m_partner = p2;
        p2->m_partner = p1;

        std::cout << p1->m_name << " is now partnered with " << p2->m_name << '\n';

        return true;
    }

    std::shared_ptr<FixedPerson> getPartner() { return m_partner.lock(); } // use lock() to convert weak_ptr to shared_ptr
};

int main() {
    auto lucy{std::make_shared<Person>("Lucy")}; // create a FixedPerson named "Lucy"
    auto ricky{std::make_shared<Person>("Ricky")}; // create a FixedPerson named "Ricky"

    partnerUp(lucy, ricky); // Make "Lucy" point to "Ricky" and vice-versa
    //no de-allocations because there is a circular dependency

    //it can happen even with unique ptr

    auto ptr1{std::make_shared<Resource>()};

    ptr1->m_ptr = ptr1; // m_ptr is now sharing the Resource that contains it

    auto fixedLucy{std::make_shared<FixedPerson>("Lucy")};
    auto fixedRicky{std::make_shared<FixedPerson>("Ricky")};

    fixedPartnerUp(fixedLucy, fixedRicky);

    //The downside of std::weak_ptr is that std::weak_ptr are not directly usable (they have no operator->).
    // To use a std::weak_ptr, you must first convert it into a std::shared_ptr. Then you can use the std::shared_ptr.
    auto partner = fixedRicky->getPartner(); // get shared_ptr to Ricky's partner
    return 0;
}