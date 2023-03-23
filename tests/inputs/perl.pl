#Test code: https://www.tutorialspoint.com/perl/perl_syntax.html.
#!/usr/bin/perl

=begin
This is 
a Multiline 
comment
=cut 

$var    = "This is string scalar!";
$quote  = 'I m inside single quote - $var';
$double = "This is inside single quote - $var";
$doublebacktics = `This is inside single quote - $var`;
$q = q^This is inside single quote - $var^;
$qw = qw/This is inside single quote - $var/;
$qx = qx^Are you learning Perl String today?"$name asked.^;
$escape = "This example of escape -\tHello, World!";

$str = "hello" . "world";    # Concatenates strings.
$num = 5 + 10;               # adds two numbers.
$mul = 4 * 5;                # multiplies two numbers.
$mix = $str . $num;          # concatenates string and number.

@names = ( 'John Paul', 'Lisa', 'Kumar' );

@copy = @names;
$size = @names;
$r    = \@var;               #var reference.

print "Given names are : @copy\n";
print "Number of names are : $size\n";    # Other type interpolation

@days = qw/Mon Tue Wed Thu Fri Sat Sun/;

print "$days[0]\n";
print "$days[1]\n";
print "$days[2]\n";
print "$days[6]\n";
print "$days[-1]\n";
print "$days[-7]\n";

@var_10 = ( 1 .. 10 );
print "@var_10\n";

@days = qw/Monday Tuesday ... Sunday/;

# sort this array
@foods = sort(@foods);

print "After: @foods\n";

$a = 100;

if ( $a == 20 ) {
    # if condition is true then print the following
    printf "a has a value which is 20\n";
}
elsif ( $a == 30 ) {
    # if condition is true then print the following
    printf "a has a value which is 30\n";
}
else {
    # if none of the above conditions is true
    printf "a has a value which is $a\n";
}

use Switch;

$var   = 10;
@array = ( 10, 20, 30 );
%hash  = ( 'key1' => 10, 'key2' => 20 );

switch ($var) {
    case 10  { print "number 100\n" }
    case "a" { print "string a" }
    case [ 1 .. 10, 42 ] { print "number in list" }
    case ( \@array ) { print "number in list" }
    case ( \%hash )  { print "entry in hash" }
    else             { print "previous case not true" }
}

use Socket    # This defines PF_INET and SOCK_STREAM

$port = 12345;    # The unique port used by the sever to listen requests
$server_ip_address = "10.12.12.168";
bind( SOCKET, pack_sockaddr_in( $port, inet_aton($server_ip_address) ) ) or die "Can't bind to port $port! \n";

package Person;

sub new {
    my $class = shift;
    my $self  = {
        _firstName => shift,
        _lastName  => shift,
        _ssn       => shift,
    };

    $object = new Person( "Mohammad", "Saleem", 23234345 );

    # Print all the values just for clarification.
    print "First Name is $self->{_firstName}\n";
    print "Last Name is $self->{_lastName}\n";
    print "SSN is $self->{_ssn}\n";
    bless $self, $class;
    return $self;
}

$a = 0;
$b = 0;

# outer while loop
while ( $a < 3 ) {
    $b = 0;

    # inner while loop
    while ( $b < 3 ) {
        print "value of a = $a, b = $b\n";
        $b = $b + 1;
    }
    $a = $a + 1;
    print "Value of a = $a\n\n";
}

#for loop
for ( $a = 10 ; $a < 20 ; $a = $a + 1 ) {
    print "value of a: $a\n";
}

my @keys   = keys %ENV;
my @values = values %ENV;

while (@keys) { 
    print pop(@keys), '=', pop(@values), "\n";
}

use POSIX qw(strftime);

$datestring = strftime "%a %b %e %H:%M:%S %Y", localtime;
printf("date and time - $datestring\n");

open( DATA, "file.txt" ) or die "Couldn't open file file.txt, $!";

while (<DATA>) {
    print "$_";
}

printf $totalArea;

#Regular Expressions.

$string = ~/\S+\s+\S+/;

tr / a - z / A - Z /;

qr/(?=[^/*])/;

@lines = $string = ~/^(.*?) /gm;

$string = ~tr / a - z / a - z /s;

chomp($_)

sub ask_user {
  print "Hello Geeks!\n";
}

ask_user();
