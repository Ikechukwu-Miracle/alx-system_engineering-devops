#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

/**
 * infinite_while - creates an infinite loop
 *
 * Return: 0 on terminating
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - creates 5 zombie processes
 *
 * Return: 0 on sucess
 */
int main(void)
{
	pid_t zom_pid;
	char count = 0;

	while (count < 5)
	{
		zom_pid = fork();
		if (zom_pid > 0)
		{
			printf("Zombie process created, PID: %d\n", zom_pid);
			sleep(1);
			count++;
		}
		else
			exit(0);
	}
	infinite_while();
	return (0);
}
