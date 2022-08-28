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
