#include <iostream>
#include "C:\Users\Іван\Source\Repos\lab6spdll\lab6spdll\Header.h"
using namespace std;

int main()
{
	int x = 0;
	char a[512];
	int sum = 0;
	char let;
	cout << "Input word text: ";
	cin.getline(a, 512, '\n');
	cout << "Input letter: ";
	cin >> let;
	x = sumOfNumbers(a, let);
	cout << "Sum = " << x << endl;
	return 0;
}

