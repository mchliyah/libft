# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mchliyah <mchliyah@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/09 12:33:10 by mchliyah          #+#    #+#              #
#    Updated: 2022/06/14 21:14:45 by mchliyah         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc

CFLAGS =  -Wall -Werror -Wextra -c

RM = rm -f

AR = ar rc

FILES= 					\
	./ft_atoi.c			\
	./ft_bzero.c		\
	./ft_calloc.c		\
	./ft_isalnum.c		\
	./ft_isalpha.c		\
	./ft_isascii.c		\
	./ft_isdigit.c		\
	./ft_isprint.c		\
	./ft_itoa.c			\
	./ft_memchr.c		\
	./ft_memcmp.c		\
	./ft_memcpy.c		\
	./ft_memmove.c		\
	./ft_memset.c		\
	./ft_putchar_fd.c	\
	./ft_putendl_fd.c	\
	./ft_putnbr_fd.c	\
	./ft_putstr_fd.c	\
	./ft_split.c		\
	./ft_strchr.c		\
	./ft_strdup.c		\
	./ft_striteri.c		\
	./ft_strjoin.c		\
	./ft_strlcat.c		\
	./ft_strlcpy.c		\
	./ft_strlen.c		\
	./ft_strmapi.c		\
	./ft_strncmp.c		\
	./ft_strnstr.c		\
	./ft_strrchr.c		\
	./ft_strtrim.c		\
	./ft_substr.c		\
	./ft_tolower.c		\
	./ft_toupper.c

FBONUS = 				\
	./ft_lstadd_back_bonus.c	\
	./ft_lstadd_front_bonus.c	\
	./ft_lstclear_bonus.c		\
	./ft_lstdelone_bonus.c		\
	./ft_lstiter_bonus.c		\
	./ft_lstlast_bonus.c		\
	./ft_lstnew_bonus.c			\
	./ft_lstsize_bonus.c		

OBJECTS = $(FILES:.c=.o)

%.o: %.c
	@$(CC) $(CFLAGS) $^ -o $@

C_RED = \033[1;31m
C_GREEN = \033[1;32m
C_L_BLUE = \033[1;34m
C_RES = \033[0m

all : $(NAME)

$(NAME) :  $(OBJECTS)
	@$(AR) $(NAME) $(OBJECTS)
	@echo "$(C_GREEN) [LIBFT CREATED!]$(C_RES)"


bonus : $(BONUOBJ)

$(BONUOBJ) : $(FBONUS)
	@$(AR) $(NAME) $(BONUOBJ)
	@echo "$(C_L_BLUE) [BONUS CREATED!]$(C_RES)"
	
clean : 
	@$(RM) $(OBJECTS) $(BONUOBJ)
	@echo "$(C_RED) [OBJECTS DELETED!]$(C_RES)"

fclean : clean
	@$(RM) $(NAME)
	@echo "$(C_RED) [LIBFT.A DELTED!]$(C_RES)"

re : fclean all

rebonus : fclean bonus

