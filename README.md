# Assignment 2 – Basic fork and c cycle deveploment

This repository contains my submission for Assignment 2, which builds on the concepts covered in Lab 5 of the Operating Systems course (CSE233).  
The tasks mainly focus on how processes work in Linux, how programs are compiled and linked, and how the loader handles shared libraries at runtime.



## Project Summary
The assignment is split into several small C programs. 
Each program highlights a different part of process management or the build process in C. 

The key ideas demonstrated include:
- Creating child processes using `fork()`
- Managing background tasks in the terminal
- Sending signals to stop or resume a process
- Linking multiple source files into one executable
- Listing the dynamic libraries loaded by a program


## Files Included in This Repository

### **1. process_creation.c**
A small example showing how a new process is created. 
After calling `fork()`, two separate processes execute and print their IDs. 
This clearly demonstrates parent/child behavior.



### **2. file1.c & file2.c**
These two files are used to show how linking works.

- `file1.c` defines the function `hello()`
- `file2.c` contains `main()` and calls `hello()`

When compiled together, both files are merged into one final program through the linker.



### **3. simple_program.c**
A simple program used to explore how the loader works. 
With the command:


you can see every shared library the program depends on. 
Common results include:

- **linux-vdso.so.1** – a virtual shared object provided by the kernel 
- **libc.so.6** – the standard C library 
- **ld-linux-x86-64.so.2** – the dynamic loader that loads everything at runtime 



### **4. answers.txt**
This file contains my written explanations for all required tasks:
- How `fork()` creates processes 
- Running processes in the background 
- How to stop and resume them 
- The purpose of the linker 
- The role of the loader 
- Explanation of the libraries shown by `ldd`



### **5. Makefile**
A build file that compiles all programs automatically. 
It includes separate rules for each program, plus a clean command.

Commands you can use:



### **6. LICENSE**
This project uses the MIT License. 
It allows anyone to reuse or modify the code freely.



### **7. Assignment2screenshots.pdf**
A PDF that includes screenshots of:
- Compiling the code
- Running the executables
- Using the ldd command



## Requirements

Before running the code, make sure your system includes:

### **Linux (Ubuntu recommended)**  
Most commands and functions used depend on Linux behavior.

### **GCC compiler**  
Install it using:
sudo apt install gcc



## How to Compile and Run

### Compile everything:
make

### Compile specific files:
make process_creation
make linker_example
make simple_program

### Run the compiled programs:
./process_creation
./linker_example
./simple_program

### View dynamic libraries:
ldd simple_program

## License
This assignment is distributed under the MIT License. 
See the LICENSE file for full details.



## contributing 
This is a course assignment, but improvements and suggestions are always welcome. 
If you want to propose changes, you can open an issue or submit a pull request.
