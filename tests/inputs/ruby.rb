#!/usr/bin/ruby -w
require 'trig.rb'

class Sample
    def hello
       puts "Hello Ruby!"
    end
 end


 $global_variable = 10

 if x > 2
   puts "x is greater than 2"
elsif x <= 2 and x!=0
   puts "x is 1"
else
   p "I can't guess the number"
end

$debug = 1
print "debug\n" if $debug

x = 1 
unless x>=2
   puts "x is less than 2"
 else
   puts "x is greater than 2"
end
 
 class Customer
   @@no_of_customers = 0   # class variable

    def initialize(id, name, addr)
       @cust_id = id # instance variable
       @cust_name = name
       @cust_addr = addr
    end
 
 # Now using above class to create objects
 object = Sample. new
 object.hello

a = "\nThis is a double-quoted string\n"
a = %Q{\nThis is a double-quoted string\n}
a = %{\nThis is a double-quoted string\n}
a = %/\nThis is a double-quoted string\n/

=begin
This is a comment.
This is a comment, too.
This is a comment, too.
I said that already.
=end

#You can also make single-line comments like this

while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

begin
   puts("Inside the loop i = #$i" )
   $i +=1
end while $i < $num

until $i > $num  do
   puts("Inside the loop i #You can also make single-line comments like this= #$i" )
   $i +=1;
end

for i in 0..5
   puts "Value of local variable is #{i}"
end

names = Array.new(4, "mac")
puts "#{names}"

#RegEx

if ( line1 =~ /Cats(.*)/ )
   sprintf "Line1 contains Cats"
end
if ( line2 =~ /Cats(.*)/ )
   puts "Line2 contains  Dogs"
end

def test(&block)
   block.call
end
test { puts "Hello World!"}

str = sprintf("%s\n", "abc")
