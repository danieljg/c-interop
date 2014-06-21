#!/bin/bash
icc -c c_function.c
ifort -o interop fortran_main.f90 c_function.o
./interop
