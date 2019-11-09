#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"

int main(int argc, char *argv[])
{
    for(volatile int i = 1; i<=50000;i++)
    {
        
    }
}

// #include "types.h"
// #include "stat.h"
// #include "user.h"

// void ff(int f)
// {
//   if(f<1)
//   return;
//   ff(f-1);
//   ff(f-2);
//   return;
// }

// int main()
// {
// 	sleep(10);
//   int pid = fork();
//   if(pid == 0)
//   {
//   	sleep (10);
//     int ppid = fork();
//     if(ppid == 0)
//     {
//       #ifdef PSB
//       set_priority(myproc()->priority,100);
//       #endif     
//       ff(33);
//       printf(1,"P1\n");
//      //#endif
//     }
//     else
//     {
//       #ifdef PSB
//       set_priority(myproc()->priority,70);
//       #endif
//       ff(39);
//       printf(1,"P2\n");
//       wait();
//       //#endif          
          
//     }
//   }
//   else
//   {
//     #ifdef PSB
//     set_priority(myproc()->priority,20);
//     #endif
//     ff(36);
//     printf(1,"P3\n");
//     wait();
//    // #endif  
//   }
//   exit();
// }


// #include "types.h"
// #include "user.h"

// int
// main(void)
// {
//     //test code for wait
//     for(int i=0;i<5;i++)
//     {
//         if(fork() == 0)
//         {
//             volatile int a=5,i = 0;
//             for(;i<1e7;i++)
//             {
//                 // if(i==2e7){
//                 //     set_priority(100 - i/2, getpid());
//                 // }
//                 if(i%((int)1e6)==0) printf(1, "At %d stage of proc %d\n", i/(int)1e6, getpid());
//                 a += (int)(3);
//             }
//             printf(1, "%d\n", a);
//             exit();
//         }
//     }
//     for(int i=0;i<5;i++)
//     {
//         wait();
//     }
//     exit();
//     return 0;
// }