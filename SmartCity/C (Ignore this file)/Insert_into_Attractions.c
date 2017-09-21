#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

int main () {
	/* open the file for writing */
	FILE * SQL = fopen ("C:\\Users\\Aiden\\Desktop\\SmartCity\\C\\SQL.txt","a");
	//fp = fopen ("C:\\Users\\Aiden\\Desktop\\SmartCity\\SQL.txt","a");

	char attractionID[5];
	// char name[30];
	// char streetNum[3];
	// char streetName[20];
	// char suburb[20];
	// char areaCode[4];
	// char website[20];
	// char attractionType[20];
	// char rating[2];

	// printf("Enter ID: ");
	// scanf("%s", attractionID);
	// printf("Enter Name: ");
	// scanf("%s", name);
	// printf("Enter Street Number: ");
	// scanf("%s", streetNum);
	// printf("Enter Street Name: ");
	// scanf("%s", streetName);
	// printf("Enter Suburb: ");
	// scanf("%s", suburb);
	// printf("Enter Area Code: ");
	// scanf("%s", areaCode);
	// printf("Enter Website: ");
	// scanf("%s", website);
	// printf("Enter Type: ");
	// scanf("%s", attractionType);
	// printf("Enter Rating: ");
	// scanf("%s", rating);


	/* write to txt file */
	// for(int ch = 33 ; ch <= 100; ch++ ) {
 // 	   	fputc(ch, SQL);
	// }

	for (int i = 0; i < 33; i++) {
		printf("Enter ID: ");
		scanf("%s", attractionID);
		fprintf(SQL, "INSERT INTO `Attractions` (`attractionID`, `name`, `streetNum`, `streetName`, `suburb`, `areaCode`, `website`, `attractionType`, `rating`) VALUES (`");
		fprintf(SQL, attractionID);
		fprintf(SQL, "`, `");
		// fprintf(SQL, name);
		fprintf(SQL, "`, `");
		// fprintf(SQL, streetNum);
		fprintf(SQL, "`, `");
		// fprintf(SQL, streetName);
		fprintf(SQL, "`, `");
		// fprintf(SQL, suburb);
		fprintf(SQL, "`, `");
		// fprintf(SQL, areaCode);
		fprintf(SQL, "`, `");
		// fprintf(SQL, website);
		fprintf(SQL, "`, `");
		// fprintf(SQL, attractionType);
		fprintf(SQL, "`, `");
		// fprintf(SQL, rating);
		fprintf(SQL, "`);");
		fprintf (SQL, "\r\n");
	}
	/* close the file */  
	fclose (SQL);

	/* Precaution */
	return 0;
}