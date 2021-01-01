
#hello:
#	echo "hello world"

#blah: blah.o
#	cc blah.o -o blah
#blah.o: blah.c
#	cc -c blah.c -o blah.o
#blah.c:
#	echo "int main(){return 0;}" > blah.c

#some_file: other_file
#	echo "first line in some_file target"
#	touch some_file
#other_file:
#	echo "other_file never been created"
#clean:
#	rm -f some_file
#

#files = file1 file2
#some_file: ${files}
#	echo "look at this variable: " ${files}
#	touch some_file
#file2:
#	touch file2
#file1:
#	touch file1
#clean:
#	rm -f file1 file2 some_file

#all: one two three
#one:
#	touch one
#two:
#	touch two
#three:
#	touch three
#clean:
#	rm -r one two three

#all: f1.o f2.o
#f1.o f2.o:
#	echo $@

#objects = foo.o bar.o all.o
#all: $(objects)
#
## These files compile via implicit rules
## Syntax - targets ...: target-pattern: prereq-patterns ...
## In the case of the first target, foo.o, the target-pattern matches foo.o and sets the "stem" to be "foo".
## It then replaces the '%' in prereq-patterns with that stem
#$(objects): %.o: %.c
#
#all.c:
#	echo "int main() { return 0; }" > all.c
#
#%.c:
#	echo $@
#	touch $@
#	echo ""
#clean:
#	rm -f *.c *.o all

# all:
# 	@echo "this line will not be printed"
# 	echo "this line will "

one:
	-false
	touch one
clean:
	rm -f one