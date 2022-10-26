#include <iostream>

#include <cstdlib>

#include <bits/stdc++.h>

using namespace std;

int main() {
  int option;
  int var [20][20];
  string arr[10][10];
  bool repeat = true;

  do {
    cout << "\n\n THIS IS THE OPTION 
MENU " << endl;
    cout << "1. CREATE TWO ARRAYS" << endl;
    cout << "2. ASCEND ORDER" << endl;
    cout << "0. QUIT" << endl;

    cout << "\nSelect an Option: ";
    cin >> option;

    switch (option) {

    case 1: {

      /*Take input of
      search Element */
      int Search_ele;
      printf("Enter the search element:");
      scanf("%d", & Search_ele);

      //Compute the position of the search Element
      int flag = 0, row, col;
      for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
          if (s[i][j] == Search_ele) {
            flag = 1;
            row = i;
            col = j;
          }
        }
      }
      //Display position of the search Element
      if (flag == 1)
        printf("Position of Search Element %d is (%d, %d)", Search_ele, row, col);
      else
        printf("Given Search Element is not found....");
    }

    break;
    case 2: {

      //Take input of search Element
      string Search_ele;
      printf("Enter the search element:");
      cin >> Search_ele;

      /*Compute the position of the search Element*/
      int flag = 0, row, col;
      for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
          if (arr[i][j] == Search_ele) {
            flag = 1;
            row = i;
            col = j;
          }
        }
      }
      //Display position of the search Element
      if (flag == 1)
      else
        printf("Given Search Element is not found....");

      printf("name?\n");
      scanf("%100s", temporal);

      string nombre = temporal;

      printf("Welcome %s", nombre.c_str());

      break;

    }

    case 0:
      repetir = false;
      break;
    }

  }
  while (repeat);

  return 0;
}