#include "first.cc"
#include "gtest/gtest.h"

TEST(factorial, positivos)
{
    ASSERT_EQ(1,factorial(1));
    ASSERT_EQ(2,factorial(2));
    ASSERT_EQ(6,factorial(3));
    ASSERT_EQ(24,factorial(4));
    ASSERT_EQ(120,factorial(5));
    ASSERT_EQ(720,factorial(6));
    ASSERT_EQ(5040,factorial(7));
    ASSERT_EQ(40320,factorial(8));
    ASSERT_EQ(362880,factorial(9));
}

TEST(factorial, negativos)
{
    ASSERT_EQ(0,factorial(-1));
    ASSERT_EQ(0,factorial(-2));
    ASSERT_EQ(0,factorial(-3));
    ASSERT_EQ(0,factorial(-4));
}

TEST(factorial, cero)
{
    ASSERT_EQ(0,factorial(0));
}
