IDIR =../include
CC=gcc
CFLAGS=-I$(IDIR)

ODIR=obj
LDIR =../lib

LIBS=-lm

# ------------------------------------------------
# patsubst: PATtern SUBSTitute
# $(patsubst PATTERN,REPLACEMENT,TEXT)
# https://www.gnu.org/software/make/manual/html_node/Text-Functions.html#Text-Functions
_DEPS = hellomake.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = hellomake.o hellofunc.o 
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))
# https://stackoverflow.com/questions/32176074/function-patsubst-in-makefile
# *. If no % in the pattern, this is a simple substitution (which keep the spaces).
# *. Else it split the text by words and get rid of all spaces (using the isblank function).
# *. Finally, it does the replacement
# -------------------------------------------------

# ----------------------------------------------------
# this section first instructs gcc to compile individual 
# object file for each c source file, then instructs gcc 
# to compile the final executable named hellomake using all
# the objects generated in the previous step. 
# ----------------------------------------------------
$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)  
# -c: Only run preprocess, compile, and assemble step

hellomake: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)
# without -c flag, gcc will not only run preprocess, 
# compile and assemble steps, but also linking step.
# ----------------------------------------------------

.PHONY: clean
# without the line above, if there's a file called clean in the directory, make clean will not work as expected.
# https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ 
# 1. *~ means are usually editor generated backups
# 2. explainaing ``core``:
# Some (all?) Posix systems have a feature called core dumps. (It's disabled in most Linux distros by default.) 
# When your application crashes, you may have seen something like:
# 
# ``Segmentation fault (core dumped)``
# 
# If core dumps are enabled, a file will be created named ``core`` that 
# contains information about the program's state when it crashed, so you can use a tool like gdb to debug crashes after they occur