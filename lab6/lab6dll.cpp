#include "pch.h"
#include <iostream>
#include "Header.h"
using namespace std;
extern "C" __declspec(dllexport) int sumOfNumbers(char* a, char let) {
	//char a[512];
	int sum = 0;
	//char let;
	for (int i = 0; i < strlen(a); ++i)
	{
			if (a[i] == let)
			{
				sum += i;
			}
	}
	return sum;
}