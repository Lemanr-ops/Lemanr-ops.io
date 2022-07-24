(*
Use variables to store values
All programs usually consist of many steps where the program operates on data. As
part of running all those steps, it's common to store the intermittent result,
the data, in a named reference. Then you can read or manipulate the data later.
Named references are commonly referred to as variables.

Variables, bind a value
Variables are named references bound to a value, that you want to keep referring
to in your code. In F#, it's thought of as binding a value. So what you do is to
assign, or bind, a value to a named reference, a variable. To bind a value, you
use the let keyword, a name for your reference and assign a value to it, like
in the below code:
*)

//Simply assigns the name represenation (aka name) to the string value Chris
let name = "Chris"
// This is not allowed because "name" is immutable by default
name <- "Luis" 
// However we may do the following
let mutable OtherName = "Chris"
// This is allowed because OtherName was marked as mutable
OtherName <- "David" // This is allowed because OtherName was marked as mutable
printfn OtherName

(*
The next section goes over variable types

bool = True or False
int  = values from -2,147,483,648 to 2,147,483,648
string = unicode text
float, double = 64-bit float point type.
*)

(* 
Type is inferred
When you declare a variable, you can do so with or without type. If you don't
provide a type when you declare a variable, the F# compiler makes a best guess
on what the type should be by the value you assign to the variable. Consider the
following statements
*)
let age = 65 //int
let PI = 3.14 // float
let name = "my name" //string
(*
The compiler infers what the types should be, and it's right. You can also be more
explicit about what you want the type to be. To assign a data, you can use the
syntax variable:Name:<type> like in the code below    
*)
let sum:float = 0.0 //creates variable "sum" with type float
(*
Print to the screen
You often want to be able to print to the screen. It could be for various reasons,
such as:
    Application output: The application is doing some sort of calculation, and you
    want to see the output.
    Debugging: As part of debugging your code, you might have to output the result 
    at a given point to understand what's going wrong.

There are other reasons for wanting to output to the screen, but the preceding two
scenarios are the most common.

So how would you print to the screen? In F#, there are three different functions
you can use. They're printf, printfn, and even Console.WriteLine. So what's the
difference?
    printfn: It prints to stdout and adds a newline character.
    printf: It prints to stdout but with no newline character.
    Console.WriteLine: This function is from the System namespace and works in all .NET languages.

Now you know the difference, but which one should you use? Well, printfn and
printf are considered more idiomatic and preferred in F#.

Formatting

As part of printing to the screen, you might want to combine text and numbers. 
Or you might want the output to be formatted in a certain way, such as by using:
    
    Positional arguments: To format, you can use a .NET function like 
    string.Format, which uses positional arguments like string.Format("My name is
    {0} and I live in {1}", "Chris", "UK").

    String interpolation: Another way to combine variables and text is to use 
    something called interpolation. To use it, you need to precede the string with
    a $ sign and indicate placeholders with brackets {}. Here's an example of using
    interpolation:
*)
let name = "Luis"
let company = "Microsoft"
printfn $"Name: {name}, Company: {company}"
(* You can also add expressions in between the brackets, like so:   *)
let firstNumber = 2000
let secondNumber = 21
printfn $"The year is: {firstNumber + secondNumber}"
(* Note for the above:
There's no type checking using interpolation, so it might seem straightforward to 
use. Be sure to combine things correctly.
*)
(*
Specifiers: You can also use format specifiers as part of what you're trying to
print. Using specifiers is the most commonly used way to format in F#. Here's an
example:
*)
let name = "Chris"
printf "Hi %s" name
// prints: Hi Chris
(*
Here you can see how the formatter %s is used to mix the first string with the 
variable name.

Note:
When you use formatters like %s or %i, the compiler checks types. If your 
positional argument isn't of the type you've specified, it throws an error.

Format specifiers
There are many format specifiers. Here are some you're likely to encounter.

%s is used for strings and unescaped contents

%d, %i is Formatted as a decimal integer, signed if the basic integer type is signed

%b is Boolean true or false.
*)
