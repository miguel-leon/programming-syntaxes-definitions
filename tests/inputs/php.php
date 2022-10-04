<?php
// This is a single-line comment
#You can also make single-line comments like this
echo "The Best PHP Examples";
ECHO "Hello!<br>";
echo "Welcome to Developer News<br>";
EcHo "Enjoy all of the ad-free articles<br>";

$name = "Quincy";
echo "Hi! My name is " . $name . "<br>";
echo "Hi! My name is " . $NAME . "<br>";
echo "Hi! My name is " . $NaMe . "<br>";

/*
This comment block spans
over multiple
lines
*/

$x = "Hello!";
$y = 'Hello!';

$x = 5;

$x = true;
$y = false;

$colors = array("Magenta", "Yellow", "Cyan");

// Assign the value "Hello!" to greeting
$greeting = "Hello!";

$greeting = null;

class Car
{
    function Car()
    {
        $this->model = "Tesla";
    }
}

// create an object
$Lightning = new Car();

// show object properties
echo $Lightning->model;

$c = mysql_connect();

abstract class MyClass
{
    public function hello()
    {
        echo "Hello World!";
    }
}

class AnotherClass extends MyClass
{
}

$item = new AnotherClass();
$item->hello();

$a = 4;
switch ($a) {
    case 1:
        echo "One";
        break;
    case 2:
        echo "Two";
        break;
    case 3:
        echo "Three";
        break;
    default:
        echo "Many";
        break;
}

try
{
    throw new pene("This is an exception");
} 
catch (Exception $e)
{
    echo $e->getMessage();
}

class MyClass
{
    public $amount;
}

// Create an object with a reference
$value = 5;
$obj = new MyClass();
$obj->amount = &$value;

// Clone the object
$copy = clone $obj;

// Change the value in the original object
$obj->amount = 6;

// The copy is changed
print_r($copy);

class MyClass
{
    const MY_CONSTANT = 5;
}

echo MyClass::MY_CONSTANT;

trait Hola
{
    public function decirHola()
    {
        echo 'Hola';
    }
}

trait Mundo
{
    public function decirMundo()
    {
        echo 'Mundo!';
    }
}

trait HolaMundo
{
    use Hola, Mundo;
}

class MiHolaMundo
{
    use HolaMundo;
}

$o = new MiHolaMundo();
$o->decirHola();
$o->decirMundo();
$str = "Is your name O'Reilly?";

// Outputs: Is your name O\'Reilly?

echo addslashes($str);
echo "alert(" . json_encode($var) . ");\n";

$name = "PHP";
echo "I am reading {$name}POT";

?>
