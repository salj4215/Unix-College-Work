#include<stdio.h>
#include<math.h>
#include<stdlib.h>

int main(int argc, char * argv[])
{
int x = atoi(argv[1]);
int y = atoi(argv[2]);

int result = ( x * x ) + ( y * y );

double finalresult = sqrt(result);

printf ("%f\n", finalresult);
}
