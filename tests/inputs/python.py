from mymodule import person1

print("Hello, World!")

# This is to make file executable

if True:
    print("True")
else:
    print("False")

import sys

Days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

word = "word"

sentence = "This is a sentence."

paragraph = """This is a paragraph. It is
made up of multiple lines and sentences."""

thisdict = {"brand": "Ford", "model": "Mustang", "year": 1964}

print(thisdict["brand"])

# You.
# Cannot.
# Comment.
# Multilines.

import sys

x = "foo"
sys.stdout.write(x + "\n")

# Interpolation.

name = "World"
program = "Python"
print(f'Hello {name}! This is {program}')
print("%s %s" %('Hello', 'World', ))
print('Hello %s! This is %s.' %(name, program))
print('Hello {name}!This is{program}.'.format(name = name, program = program))

# Loops.

i = 1
while i < 6:
    print(i)
i += 1

fruits = ["apple", "banana", "cherry"]

for x in fruits:
    print(x)
if x == "banana":
    break

# Objetcts.

class Person:
    def __init__(self, name, age):
    self.name = name
self.age = age

def myfunc(self):
    print("Hello my name is " + self.name)
p1 = Person("John", 36)
p1.myfunc()

#Random code

import sys

try:
   # open file stream
   file = open(file_name, "w")
except IOError:
   print "There was an error writing to", file_name
   sys.exit()
print "Enter '", file_finish,
print "' When finished"
while file_text != file_finish:
   file_text = raw_input("Enter text: ")
   if file_text == file_finish:
      # close the file
      file.close
      break
   file.write(file_text)
   file.write("\n")
file.close()
file_name = raw_input("Enter filename: ")
if len(file_name) == 0:
   print "Next time please enter something"
   sys.exit()
try:
   file = open(file_name, "r")
except IOError:
   print "There was an error reading file"
   sys.exit()
file_text = file.read()
file.close()
print file_text
