# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbolkova <tbolkova@student.42wolfsburg.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/28 10:43:47 by tbolkova          #+#    #+#              #
#    Updated: 2022/10/26 15:08:48 by tbolkova         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libftprintf.a

SRC = ft_print.c printf_utils.c

OBJS = $(SRC:.c=.o)
LIBFT = ./Libft/

LIBFT_OBJS = libft/*.o

# BONUS_OBJS = 

CC = gcc

CFLAGS = -Wall -Werror -Wextra

all: $(OBJS)
	$(MAKE) -C ./Libft/
	ar -rcs $(NAME) $(OBJS) $(LIBFT_OBJS)

test: 
	$(CC) $(CFLAGS) $(OBJS) $(LIBFT)libft.a -o printf

$(NAME): all

# bonus: $(OBJS) $(BONUS_OBJS)
# 	ar -rcs $(NAME) $(OBJS) $(BONUS_OBJS)

clean:
	$(MAKE) clean -C libft
	rm -f $(OBJS)
# add bonus here later

fclean: clean
	$(MAKE) fclean -C libft 
	rm -f $(NAME) printf

re: fclean all

.PHONY: all clean fclean re printf
# include bonus here later