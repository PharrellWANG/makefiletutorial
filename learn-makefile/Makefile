
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

# one:
# 	-false
# 	touch one
# clean:
# 	rm -f one

# with_spaces = hello    # with_spaces has many spaces after "hello"
# after = $(with_spaces)there

# nullstring =
# space = $(nullstring) # Make a variable with a single space.

# all: 
# 	echo "$(after)"
# 	echo start"$(space)"end
# 	echo ${undefined}

# foo := start 
# foo += more

# all: 
# 	echo $(foo)

# # Overrides command line arguments
# override option_one = did_override
# # Does not override command line arguments
# option_two = not_override
# all: 
# 	echo $(option_one)
# 	echo $(option_two)

# bar := ${subst not,totally, "I am not superman"}
# all: 
# 	@echo $(bar)

# comma := ,
# empty:=
# space := $(empty) $(empty)
# foo := a b c
# bar := $(subst $(space), $(comma) ,$(foo))

# all: 
# 	@echo $(bar)


# foo := a.o b.o l.a c.o
# one := $(patsubst %.o,%.c,$(foo))
# # This is a shorthand for the above
# two := $(foo:%.o=%.c)
# # This is the suffix-only shorthand, and is also equivalent to the above.
# three := $(foo:.o=.c)

# all:
# 	echo $(one)
# 	echo $(two)
# 	echo $(three)

foo := $(if this-is-not-empty,then!,else!)
empty :=
bar := $(if $(empty),then!,else!)

all:
	@echo $(foo)
	@echo $(bar)