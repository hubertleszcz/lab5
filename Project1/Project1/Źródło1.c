#include <stdio.h>

float srednia_harm(float tablica[], unsigned int n);
float nowy_exp(float x);

int main() {
	unsigned int n = 6;
	float tab[] = { 200.00,1000.0, 100.5, 300.00, 400.5, 110.2 };
	float result = srednia_harm(tab, n);
	printf("%f", result);
}