#include "types.h"
#include "stat.h"
//#include "proc.h"
#include "user.h"
#include "fs.h"


int main(int argc, char *argv[])
{
    int pid;

    if (argc < 1)
    {
        printf(2, "Usage: info\n");
        exit();
    }
    pid = atoi(argv[1]);
    //printf(1, "Process Id %d\n",pid);
    struct proc_stat *p = 0;
    //= (struct proc_stat *)malloc(sizeof(struct proc_stat));

    // int ret_value = getpinfo(p);
    // if(ret_value == 1)
    // {
    //     //printf(1, "Process Id %d\n",p->pid);
    //     //printf(1, "Running Time %d\n",p->runtime);
    //     printf(1,"Success!\n");
    // }
    // else
    // {
    //     printf(1, "Such a process doesn't exist!\n");
    // }
    // exit();
    getpinfo(pid,p);
    exit();
}
