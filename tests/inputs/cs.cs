using System.IO; // include the System.IO namespace

File.SomeFileMethod(); // use the file class with methods

int myNum = 5; // Integer (whole number)
double myDoubleNum = 5.99 D; // Floating point number
char myLetter = 'D'; // Character
bool myBool = true; // Boolean
string myText = "Hello"; // String

/* The code below will print the words Hello World
to the screen, and it is amazing */

string firstName = "John ";
string lastName = "Doe";
string name = firstName + lastName;
Console.WriteLine(name);

string name = $"My full name is: {firstName} {lastName}";
Console.WriteLine(name);

int i = 0;
do {

  Console.WriteLine(i);
  i++;

} while (i < 5);

for (int i = 0; i < numbers.GetLength(0); i++) { // Outer loop
  
    for (int j = 0; j < numbers.GetLength(1); j++) { // Inner loop
        
        Console.WriteLine(numbers[i, j]);
    
    }

}

int time = 22;
if (time < 10) {
    
  Console.WriteLine("Good morning.");

} else 
if (time < 20) {

  Console.WriteLine("Good day.");

} else {

  Console.WriteLine("Good evening.");
}
// Outputs "Good evening."

static void MyMethod(string country = "Norway") {

  Console.WriteLine(country);

}

static void Main(string[] args) {

  MyMethod("Sweden");
  MyMethod("India");
  MyMethod();
  MyMethod("USA");

}

class Car {

  public string model;
  public string color;
  public int year;

  // Create a class constructor with multiple parameters
  public Car(string modelName, string modelColor, int modelYear) {

    model = modelName;
    color = modelColor;
    year = modelYear;

  }

  static void Main(string[] args) {

    Car Ford = new Car("Mustang", "Red", 1969);
    Console.WriteLine(Ford.color + " " + Ford.year + " " + Ford.model);
  }

}

// Sort a string
string[] cars = {"Volvo","BMW","Ford","Mazda"};
Array.Sort(cars);
foreach(string i in cars) {
  Console.WriteLine(i);
}

using System;

public class Example {

  public static void Main() {
        double[] hours = {.08333,.16667,.25,.33333,.5,.66667,1,2,29,30,31,90,365};
        DateTime dateValue = new DateTime(2009, 3, 1, 12, 0, 0);

        foreach(double hour in hours)
        Console.WriteLine("{0} + {1} hour(s) = {2}", dateValue, hour,
        dateValue.AddHours(hour));
  }

}