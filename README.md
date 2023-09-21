# Ft_printf
<p align="center"><img src="https://42wolfsburg.de/wp-content/uploads/2021/08/42wolfsburg_instagram_logo.jpeg" width="150" height="150" />

#
<h3><b>¤ Table of contents ¤</b></h3>

1) <b>How to use</b>
2) <b>Introduction</b>
3) <b>Instructions</b>

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
