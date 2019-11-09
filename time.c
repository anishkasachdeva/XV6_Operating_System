#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"


int main(int argc, char *argv[])
{

	int pid;
	int status = 0, a, b;
	if (argc < 2)
	{
		printf(1, "Usage: time <process>\n");
		exit();
	}
	else
	{
		pid = fork();
		if (pid == 0)
		{
			exec(argv[1], argv);
			printf(1, "Exec %s Failed\n", argv[1]);
			exit();
		}
		else
		{
			status = waitx(&a, &b);
			printf(1, "Wait Time = %d\nRun Time = %d with Status %d \n", a, b, status);
		}
	}

	exit();
}
// /*int main(void)
// {
//     int pid = fork();
//     if(pid < 0)
//     {
//         exit();
//     }
//     if(pid == 0)
//     {
//         for(int i=0;i<4e6;i++)
//         {
//             volatile int x = 1;
//             x++;
//         }
//         exit();
//     }
// 	for (int i = 1; i <= 3;i++)
//     {
//         if(fork() == 0)
//         {
//             volatile int a = 5,i = 0;
//             for(;i < 4e7; i++)
//             {
//                 a += (int)(3.14 * 6.23);
//             }
//             printf(1, "%d\n", a);
//         }
//     }
//     for(int i = 1;i <= 3;i++)
//     {
//         wait();
//     }
//     int x,y;
//     waitx(&x,&y);
//     printf(1,"waitime = %d , runtime = %d\n",x,y);
//     exit();
//     return 0;
// }/*