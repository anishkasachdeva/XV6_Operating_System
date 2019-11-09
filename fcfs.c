
#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"

int main(void)
{
    for(int i=0;i<5;i++)
    {
        if(fork() == 0)
        {
            volatile int a=5,i = 0;
            for(;i<1e7;i++)
            {
                if(i%((int)1e6)==0) printf(1, "At %d stage of proc %d\n", i/(int)1e6, getpid());
                a += (int)(3);
            }
            printf(1, "%d\n", a);
            exit();
        }
    }
    for(int i=0;i<5;i++)
    {
        wait();
    }
    exit();
    return 0;
}