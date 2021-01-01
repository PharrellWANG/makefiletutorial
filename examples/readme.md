# Makefile Tutorial

Learning to write Makefile. 

1. ``tuto_001`` contains tutorial from reference #1.
2. ``tuto_002`` contains tutorial from reference #5.

extra resources: 
1. see ``darwin.mk`` in ``cpslib.git`` in my github repo.

# Key Points

1. ``make`` with no arguments executes the first rule in the makefile.

2. Furthermore, by putting the list of files on which the command depends on the first line after the :, make knows that the rule hellomake needs to be executed if any of those files change. 

3. There must be a tab at the beginning of any command, and make will not be happy if it's not there.

4. ``CC`` and ``CFLAGS`` are special constants that communicate to ``make`` how we want to compile the source files. In particular, the macro CC is the C compiler to use, and CFLAGS is the list of flags to pass to the compilation command.

5. *dependency list*.

6. By putting the object files--hellomake.o and hellofunc.o--in the dependency list and in the rule, make knows it must first compile the .c versions individually, and then build the executable hellomake.

7. The CFLAGS variable sets compile flags for gcc, LDFLAGS see [Variables Used by Implicit Rules (from GNU Make Manual)](https://www.gnu.org/software/make/manual/html_node/Implicit-Variables.html)

8. ``-Wl,option``, from ref#9, to see meaning of these linking options, refer to ref#10.

    Pass option as an option to the linker. If option contains commas, it is split into multiple options at the commas. You can use this syntax to pass an argument to the option. For example, -Wl,-Map,output.map passes -Map output.map to the linker. When using the GNU linker, you can also get the same effect with -Wl,-Map=output.map.

9. 

## References

1. [A Simple Makefile Tutorial](https://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/)
2. [GNU Makefile Manual](https://www.gnu.org/software/make/manual/html_node/Makefile-Contents.html)
3. [Writing Makefiles from MIT](http://web.mit.edu/gnu/doc/html/make_3.html)
4. [Automatic Variables from GNU Makefile Manual](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html), its counterpart in windows in called [Filename Macros](https://docs.microsoft.com/en-us/cpp/build/reference/filename-macros?view=vs-2019)
5. [makefile tutorial website](https://makefiletutorial.com/)
6. [CFLAGS: GCC compile flags](https://gcc.gnu.org/onlinedocs/gcc/Option-Summary.html)
7. [standford makefile tutorial](https://web.stanford.edu/class/cs107/resources/make)
8. [GNU Liner Manual](https://ftp.gnu.org/old-gnu/Manuals/ld-2.9.1/html_node/ld_toc.html)
9. [gcc options for linking](https://gcc.gnu.org/onlinedocs/gcc/Link-Options.html#Link-Options)
10. [LD linking options for gcc](https://ftp.gnu.org/old-gnu/Manuals/ld-2.9.1/html_node/ld_3.html)