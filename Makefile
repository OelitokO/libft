# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: OelitokO <omerelitok.05@gmail.com>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/06/23 14:32:39 by OelitokO          #+#    #+#              #
#    Updated: 2025/06/23 19:39:05 by OelitokO         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f

SRCS = ft_isalnum.c ft_isalpha.c ft_isdigit.c ft_isascii.c ft_isprint.c \
		ft_strchr.c ft_strlcat.c ft_strlen.c ft_strncmp.c ft_strnstr.c \
		ft_strrchr.c ft_tolower.c ft_toupper.c ft_strlcpy.c ft_atoi.c \
		ft_memset.c ft_memcpy.c ft_bzero.c ft_memchr.c ft_memcmp.c \
		ft_memmove.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c \
		ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
		ft_striteri.c ft_strmapi.c ft_strtrim.c ft_split.c ft_itoa.c

BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
		ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
		ft_lstmap.c

OBJ = $(SRCS:.c=.o)
BONUS_OBJ = $(BONUS:.c=.o)

GREEN   = \033[0;32m
RED     = \033[0;31m
YELLOW  = \033[1;33m
RESET   = \033[0m

all: $(NAME)

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@ > /dev/null 2>&1 || (echo "Compile error in $(RED) ❌ $< $(RESET)" && false)
	@echo " $< $(GREEN)✅  OK $(RESET)"

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@echo "\n ✅  Build complete for :$(GREEN) $@ $(RESET)"

bonus: $(BONUS_OBJ)
	@ar r $(NAME) $(BONUS_OBJ)
	@echo "\n ✅  Bonus added to : $(GREEN) $(NAME) $(RESET)"

clean:
	@$(RM) $(OBJ) $(BONUS_OBJ)
	@echo "\n $(YELLOW)🧹  Cleaning up object files $(RESET)"

fclean: clean
	@$(RM) $(NAME)
	@echo "\n $(YELLOW)📦  Static library removed $(RESET)"

re: fclean all
	@echo "\n $(GREEN)♻️  Rebuild successful$(RESET)"


.PHONY: all bonus clean fclean re
