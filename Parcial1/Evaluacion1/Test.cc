#include <time.h>
#include "OrdenamientoGenerico.h"
#include "gtest/gtest.h"
#include "../TypedTest/Hierarchie.h"

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

class OrdenamientoFixture : public TimeFixture
{
public:
    void SetUp(){
        TimeFixture::SetUp();
    }
    void TearDown()
    {

    }
    static void SetUpTestCase(){
    }
    static void TearDownTestCase(){
    }
};

TEST(Ordenamiento, Constructor){
    int res[] = {1,2,3};
    int arr[] = {3,2,1};
    Ordenamiento<int>::insercion(res, 3, Ordenamiento<int>::desc);
    for(int i = 0;i<3;i++){
        EXPECT_EQ(res[i],arr[i]);
    }
}
