#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include "caesar.h"
#include "vigenere.h"

// add your tests here

TEST_CASE("Caesar Shift"){
    CHECK(encryptCaesar("Way to Go!", 5) == "Bfd yt Lt!");
    CHECK(encryptCaesar("Hello, World!", 10) == "Rovvy, Gybvn!");
}

TEST_CASE("Vigenere Shoft"){
    CHECK(encryptVigenere("Hello, World!", "cake") == "Jevpq, Wyvnd!");
}
