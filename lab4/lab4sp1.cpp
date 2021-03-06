﻿#include <stdio.h>
#include <math.h>
extern "C" double calc(double, float, float);
int main()
{
	double arr[5] = { 1.0, 2.0, 3.0, 4.0, 7.0 };
	float c = 0;
	float d = 0;
	double res = 0;
	printf("Enter numbers: \n");
	printf("C = ");
	scanf_s("%f", &c);
	printf("D = ");
	scanf_s("%f", &d);
	printf("\nCalculation result: \n");
	for (int i = 0; i < 5; ++i)
	{
		res = calc(arr[i], c, d);
		printf("Result in ASM:%d = %lf\n", i, res);
		if (c > d)
			printf("Result is C:%f \n", (atan(4 * d) / c - 1) / (12 + arr[i] - c));
		else
			printf("Result is C:%f \n", (atan(c) + c * d - arr[i] / 4) / (arr[i] *d - 1));
	}
	return 0;
}
