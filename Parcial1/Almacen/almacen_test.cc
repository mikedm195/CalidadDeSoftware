#include <time.h>
#include "Almacen.h"
#include "gtest/gtest.h"

class TimeFixture : public ::testing::Test
{
public:
    virtual void SetUp(){
        tiempo = time(NULL);
    }
    void TearDown()
    {
        EXPECT_TRUE((time(NULL) - tiempo) <= 100000) << "Error: Connection timed out";
    }
private:
    time_t tiempo;
};

class AlmacenFixture : public TimeFixture
{
public:
    void SetUp(){
        TimeFixture::SetUp();
    }
    void TearDown()
    {

    }
    static void SetUpTestCase(){
        a = new Almacen(10);
    }
    static void TearDownTestCase(){
        delete a;
    }
    static Almacen *a;
};

Almacen * AlmacenFixture::a = 0;

TEST_F(AlmacenFixture, Constructor){
    sleep(11);
    ASSERT_EQ(10,a->getCapacity());
}
