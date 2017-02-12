# Name_Printer:
##Task: Prints full name of the person.

It is a command line application that allows client to print full name, built in Ruby. The task is developed in TDD using RSpec.

## Description:
The name printer defines print_name method on Person class that provides full name of a person when first_name and the last_name of the person is specified.


## Classes and Methods:

```
1. class Person
```

The Person object, is like controller of this project, holds the methods that can be defined on it. The class is initialized with first_name and last_name, however these can also be nil.


#### Following methods are used in Person Class:

```
print_name
```

The method gives the full name and removes off unnecessary spaces in it.

###### Private methods:

```
format_name name
```

The method is used as cleanser that is used to remove extra or unnecessary spaces from first_name and last_name. This method also capitalizes them.

```
full_name
```

The method combines the cleansed first_name and last_name.


## Installation

```
git clone https://github.com/VinSri/Name_Printer

cd Name_Printer

bundle

rspec spec
```