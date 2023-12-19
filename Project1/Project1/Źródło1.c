#include <stdio.h>

float srednia_harm(float tablica[], unsigned int n);
float nowy_exp(float x);

void dodaj_tablice(char a[], char b[], char wynikowe[]);
void int2float(int* calkowite, float* zmienno_przec);
void pm_jeden(float* tabl);

int main() {
	//unsigned int n = 6;
	//float tab[] = { 200.00,1000.0, 100.5, 300.00, 400.5, 110.2 };
	//float result = srednia_harm(tab, n);
	//printf("%f", result);
	/*float exp = 2.00;
	float wynik = nowy_exp(exp);
	printf("%f", wynik);*/

	
//	char liczby_A[16] = { -128, -127, -126, -125, -124, -123, -122,
//-121, -120, 121, 122, 123, 124, 125, 126, 127 };
//	char liczby_B[16] = { 3, 3, 3, 3, 3, 3, 3, 3,
//	3, -3, -3, -3, -3, -3, -3, -3 };
//	char wynikowe[16];
//	dodaj_tablice(liczby_A, liczby_B, wynikowe);
//
//	for (int i = 0; i < 16; i++) {
//		printf("%d ", wynikowe[i]);
//	}

	//int a[2] = { 350, 24 };
	//float r[4];
	//// podany rozkaz zapisuje w pamiêci od razu 128 bitów,
	//// wiêc musz¹ byæ 4 elementy w tablicy
	//int2float(a, r);
	//printf("\nKonwersja = %f %f\n", r[0], r[1]);

	float tablica[4] = { 27.5,143.57,2100.0, -3.51 };
	printf("\n%f %f %f %f\n", tablica[0],
		tablica[1], tablica[2], tablica[3]);
	pm_jeden(tablica);
	printf("\n%f %f %f %f\n", tablica[0],
		tablica[1], tablica[2], tablica[3]);

}