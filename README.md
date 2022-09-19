# Intro to Programming with Matlab

- Today's language:
1. For commercial, "shrink-wrapped", large, complex programs: C, C++, Java, C#.
2. To make programming easier and to solve numerical problems: MATLAB

## C1_W2
### Matlab as calculator

- You cannot add unit. A number it is just a number. 
- It is ok to use underscore as part of a name.
- Variables are listed in alphabetical order.
- ans: Answer
- Rules for variables name:
1. Can use _
2. UpperCase anywhere (Case senstitive)
3. Can have digits(x45, but not 45x)
4. Have to start with a letter

- Variables declared with ; will no.
- ; can be used to multiple commands in the same line.

### Commands
- save
- clear
- clc
- load

### Syntax & Semantics
- Syntax is a language’s set of rules for the form of the statements, including, for example, the rule that says you can't use a hash symbol in a variable name.
- As we said, the syntax of a command is its form. The semantics of a command is its meaning.

## C1_W3

### Matrices and Operators 

- Matrices (Plural of matrix) are special kinds of arrays. 
- Array: Any set of numbers arranged in a rectangular pattern. 
- Rows x Columns x Dimensions 
- Higher dimensions are uncommon
- The most common have special names:
1. 2D Array: Matrix
2. 1D Array: Vector

### The Colon Operator 

- Start_value:increment:Not_higher_than
- Operator is a function that's invoked by a symbol
- A function is an operation invoked by the name

### Combining and Transforming Matrices

- Combine matrices to result into a new matrix
- Transform a matrix you already have: Use the transposition operator
- The prime symbol : '. Transposition operator

### Arithmetic 

- Array addition: There are special rules for arithmetic on arrays: 
1. To add two matrix together we have to make sure that they have the same dimensions
- Array multiplication: It is very similar to array addition: Z = X.*Y (Need dot)
- Matrix multiplication: Very different from Array Multiplication: Z = X * Y
1. Do not has the dot
2. Operands must be "compatible": The width of the left operand of the matrix multiplication operator must be equal to the height of the right operand
3. Calculation of each element of Z uses both multiplication AND addition 
- Array division: There are two types of array divison:
1. X./Y(Over)
2. X.\Y(Under)  

## C1_W4

### Introduction to Functions 

- Matlab allows you to create built in function, just like original function
- We create  function by using the Editor(edit command)
- A function has its own private workspace and what happens in that workspace, stays in that workspace
- The function declaration: what the worlds sees
- function [out_arg1, out_arg2, ..] = function_name(in_arg1, in_arg2,..)
- Use meaningful names that tell you something about what your function does
- Do not use names of built-in functions, sqrt, plot, sin..
- Advantages:
- Functions allow you to break down large complex problems to smaller, more maneagable pieces
- Functional decomposition 
- Code reuse
- Generality

- Script is just a collection of MATLAB commands

## C1_W5

### Toolbox

- Built-in functions
- FUNCTION RETURNS 
- zeros(N,M): zeros
- ones(N,M): ones
- eye(N,M): zeros except for the diagonal elements that are ones
- rand(N,M): random numbers uniformly distributed in the range from 0 to 1
- acos(x): Angle in radians whose cosine equals x
- acot(x): Angle in radians whose cotangent equals x
- asin(x): Angle in radians whose sine equals x
- atan(x): Angle in radians whose tangent equals x
- atan2(y,x): Four-quadrant angle in radians whose tangent equals y/x 
- cos(x): Cosine of x (x in radians)
- cot(x): Cotangent of x (x in radians)
- sin(x): Sine of x (x in radians)
- tan(x): Tangent of x (x in radians)
- exp(x): e raised to the x power
- log(x): Natural logarithm x
- log2(x): Base-2 logarithm of x
- log10(x): Base-10 logarithm of x
- sqrt(x): Square root of 
- abs(z): Absolute value of z
- angle(z): Phase angle of z
- conj(z): Complex conjugate of z
- imag(z): Imaginary part of z
- real(z): Real part of z

- Polymorphism: If the type of an input argument to a function can vary from one call to another, it is called a "Polymorphic" function. Polymorphic means "having multiple forms", and it can save us a huge amount of work. 
- Second form of polymorphism: Variation in the number of arguments from a call to call. 
- Many built-in MATLAB functions employ the first of polymorphism by returning an output that is shaped like the input. 

- When we start MATLAB and call rand, it always returns the same exact number: 0.8147

### Debugging

- It is easy to make mistakes
- Syntax errors:
1. Matlab catches these
- Semantic erros:
1. Some may cause erros that MATLAB can catch
2. Some may cause the wrong result every time
3. Some may only cause problems occasionally 

- Matlab has built-in debugger(Tools)

## C1_W6

### Control flow

- Sequential Control: Sequence of commands  excuted one after the other
- Control construct: A method by which MATLAB selects the next command to execute
- Sequential control: default
- Selection or Branching

- IF STATEMENT
- Most common selection construct
- Begins with control statement   
- if keyword followed by a condition
- Ends with 'end' statement
- In between: Statements to be executed if and only if condition is true

- IF ELSE STATEMENT
- Executing a different set of statement based on the condition

- RELATIONAL OPERATORS
- Produces a result that depends on the relation between its two operands
- It can appers outside if-statement
- == : is equal to
- ~= : is not equal to
- <  : is less than
- >  : is greater than
- >= : is greater than or equal to
- <= : is less than or equal to 

- LOGICAL VALUES:
- Non-zero: true
- Zero: false
- MATLAB returns 1 for true

- How to combine logical values ? Logical operators
- && : and
- || : or
- ~  : not

- NESTED IF-STATEMENT 
- If-staements can contain other if-statements

### Variable number of function arguments

- Polymorphic functions: Functions that behave differently based on
- Number of input or output arguments 
- Type of input or output arguments
- Many built-in functions are polymorphic(Size, plot, sqrt)

### Robustness

- A function declaration specifies:
- Name of the function
- Number of input arguments 
- Number of output arguments

- Function code and documentation specify
- What the function does
- The type of the arguments
- What the arguments represent

- Robustness
- A function is robust if it handles erroneous input and output arguments
- Provides a meaningful error message

- Comments
- Extra text that is not part of the code
- Extra information for human reader
- Explain important or complicated parts of the program 
- Provide documentation of your function 

### Persistent Variables

- Variables:
- Local
- Global
- Persistent: It is a local variable, but it is value persist from one call of the function to the next. Relatively rarely used. None of the bad side effects of global variables. None of the bad effects of global variables. 

## C1_W7

- Loop: The loop is a new control construct that makes it possible to repeat a block of code a number of times. 
- MATLAB: Uses loops internally both to compute the result of the colon operator and to compute the sum of the elements
of the vector n above
- Implicit loop

- MATLAB implements FOR-LOOP

- While loop: For loops work well when we know the number of necessary iterations before the loop. 
- Logical Index: 
- Problem: Given a vector, v, of scalars, create a second, w, that contains only the non-negative elements of v.
Solution:

w=[];
jj=0;
for ii=1:length(v); 
  if v(ii) >=0 
    jj = jj+1;
    w(jj) = v(ii);
  end
end

- Matlab provides a more elegant solution
w=[];
for ii=1:length(v); 
  if v(ii) >=0 
  %All elements current in w + v(ii)
    w = [w v(ii)];
  end
end

- The ultimate solution

w = v(v>=0);

- This is an example of logical index

- Prealocation: In no prealoc version, matlab has no ideal how large the matrix a is eventually going to became. 
So every timewe add a new row, it had to find another place in the memory and copy the entire contents of the current array into the new
location before it could add the next element. Find a place in memory and reserving it for a var is calle memory allocation. 
If you prealloc, it will save time for matlab.
- You time a function with the help of two other functions called tick and tock. 

## C1_W8

- Limitations of computers:
1. Real numbers can be infinitly large
2. Have infinitily fine resolition
-Computers: Finite memory
1. Upper limit on the largest number that can be represented 
2. Lower limit on the absolute value of any non-zero number

- A data type is defined by:
1. Set of values
2. Set of operations that can be performed on those values

Double:
- Floating point representation 
- 64 bits (8 bytes)

Single:
- 32-bit floating point 

Integers:
- Signed, unsigned 
- 8, 16, 32, 64 - bit long 
