# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/09 12:07:26 by antmoren          #+#    #+#              #
#    Updated: 2022/06/10 14:48:10 by antmoren         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	push_swap.a

# Source files
PUSH_SWAP	= 	push_swap.c

PRINTF_DIR = ft_printf/
SRC_DIR = ft_printf/sources/
LIBFT_DIR = ft_printf/libft/


# Source files
PRINTF 		= 	ft_printf.c			\

SRC_FILES 	= 	ft_printf_utils.c 	\
				ft_treat_char.c 	\
				ft_treat_decimals.c \
				ft_treat_pointer.c 	\
				ft_treat_hex.c 		\
				ft_treat_percent.c 	\
				ft_treat_string.c 	\

LIBFT_FILES = 	ft_isalnum.c	\
				ft_isalpha.c 	\
				ft_isascii.c 	\
				ft_isdigit.c	\
				ft_isprint.c 	\
				ft_strlen.c		\
				ft_strncmp.c 	\
				ft_strlcat.c 	\
				ft_strlcpy.c	\
				ft_strchr.c 	\
				ft_strrchr.c	\
				ft_toupper.c 	\
				ft_tolower.c	\
				ft_atoi.c		\
				ft_bzero.c		\
				ft_memset.c		\
				ft_memcpy.c		\
				ft_memmove.c 	\
				ft_memchr.c 	\
				ft_memcmp.c 	\
				ft_strnstr.c	\
				ft_calloc.c		\
				ft_strdup.c		\
				ft_substr.c 	\
				ft_strjoin.c	\
				ft_strtrim.c	\
				ft_split.c		\
				ft_putchar_fd.c \
				ft_putendl_fd.c \
				ft_putnbr_fd.c 	\
				ft_putstr_fd.c 	\
				ft_itoa.c 		\
				ft_strmapi.c 	\
				ft_striteri.c 	\
				ft_lstnew_bonus.c		\
				ft_lstadd_front_bonus.c \
				ft_lstsize_bonus.c 		\
				ft_lstlast_bonus.c 		\
				ft_lstadd_back_bonus.c 	\
				ft_lstdelone_bonus.c 	\
				ft_lstclear_bonus.c 	\
				ft_lstiter_bonus.c  	\
				ft_lstmap_bonus.c 		\


# Source files path
PRINTF = $(addprefix $(PRINTF_DIR), $(PRINTF_FILES))
SRC = $(addprefix $(SRC_DIR), $(SRC_FILES))
LIBFT = $(addprefix $(LIBFT_DIR), $(LIBFT_FILES))


# Objects
OBJS = $(PUSH_SWAP:.c=.o) $(PRINTF:.c=.o) $(SRC:.c=.o) $(LIBFT:.c=.o)

# Flags
CC 		= gcc 
INC 	= -I includes/
CFLAGS 	= -Wall -Wextra -Werror
AR 		= ar rcs

# all rule
all: $(NAME)

# Compiling command
$(NAME): $(OBJS)
	@$(AR) $(NAME) $(OBJS)
	@echo "(•̀ᴗ•́)و $(NAME) generated!".

# clean rule
clean: 
	@/bin/rm -f $(OBJS)

# fclean rule
fclean: clean
	@/bin/rm -f $(NAME)

# re rule
re: fclean all

# phony
.PHONY: all clean fclean re