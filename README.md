# Ft_printf
<p align="center"><img src="https://cdn-images-1.medium.com/v2/resize:fit:1200/1*mb0KkzYAZDDSvdYC2MM5hg.jpeg" width="150" height="150" />

#
<h3><b>¤ Table of contents ¤</b></h3>

1) <b>How to use</b>
2) <b>Introduction</b>
3) <b>Instructions</b>
4) <b>Part 1: Parameters</b>
5) <b>Part 2: Example</b>

---
<h3><b>¤ How to use ¤</b></h3>

* Clone the git repository.
* Uncomment `main` at line 72 in `ft_print.c`
* Execute `make` in terminal.
* Execute the following line in the terminal: `gcc libftprintf.a && ./a.out`


---
<h3><b>¤ Introduction ¤</b></h3>
<p align="center">In "ft_printf", we are tasked to recode our own version of "printf" function. The goal of this particular exercise is to learn about variadic functions in C language, as well as to
  understand how "printf" functions.

---
<h3><b>¤ Instructions ¤</b></h3>

* Project must be written in C.

* Functions should not quit unexpectedly (segmentation fault, bus error, double free, etc) apart from undefined behaviors.

* All heap allocated memory space must be properly freed when necessary. No leaks will be tolerated.
If the subject requires it, you must submit a Makefile which will compile your source files to the required output with the flags -Wall, -Wextra and -Werror, use cc, and Makefile must not relink.

* Makefile must at least contain the rules $(NAME), all, clean, fclean and re.


---
<h3><b>¤ Part 1: Parameters ¤</b></h3>

<p align="left̨">

* Do NOT implement the buffer management of the original printf().
* Command ar must be used to to create the library. Using the libtool command is forbidden.
* `libftprintf.a` must be created at the root of repository.

  Following conversions must be implemented:
  
|Conversion|Description|
|:---------|:----------|
%c |Prints a single character.
%s |Prints a string (as defined by the common C convention).
%p |The void * pointer argument has to be printed in hexadecimal format.
%d |Prints a decimal (base 10) number.
%i |Prints an integer in base 10
%u |Prints an unsigned decimal (base 10) number.
%x |Prints a number in hexadecimal (base 16) lowercase format.
%X |Prints a number in hexadecimal (base 16) uppercase format.
%% |Prints a percent sign.


<h3><b>¤ Part 2: Example ¤</b></h3>

• %d •

```ruby
int	process_decimal(int n)
{
	long				new;
	int				length;
	int				flag;

	new = (long)n;
	length = 0;
	flag = 0;
	if (new < 0)
	{
		length += write(1, "-", 1);
		new = -new;
	}
	if (new / 10)
		length += process_decimal(new / 10);
	new = new % 10 + '0';
	length += write(1, &new, 1);
	return (length);
}
```

As you can see from the above example, getting characters (or in this case, digits) will not be the difficult part.

The challenge of this project is to learn about <stdarg.h> library and its content. Learning the structure of how "printf" operates will be the first step towards understanding this project.
