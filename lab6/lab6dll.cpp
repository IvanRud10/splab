#include "pch.h"
#include <iostream>
#include "Header.h"
using namespace std;
extern "C" __declspec(dllexport) int sumOfNumbers(char* a, char let) {
	int sum = 0;
	for (int i = 0; i < strlen(a); ++i)
	{
		if (a[i] == let)
		{
			sum += i;
		}
	}
	return sum;
}
