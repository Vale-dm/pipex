# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vduran-m <vduran-m@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/06/01 16:14:38 by vduran-m          #+#    #+#              #
#    Updated: 2025/06/01 16:14:39 by vduran-m         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = pipex
CC = cc
CFLAGS = -Wall -Werror -Wextra

# Source
SOURCES = src/pipex.c src/utils.c src/errors.c
OBJECTS = ${SOURCES:.c=.o}
LIBFT_DIR	= ./libft
LIBFT = $(LIBFT_DIR)/libft.a

# Headers
HEADER = src/pipex.h
INCLUDES = -I./src -I./libft -I.

all: $(LIBFT) $(NAME)

$(LIBFT):
	@make -C $(LIBFT_DIR)

$(NAME): $(OBJECTS)
	$(CC) $(OBJECTS) -L$(LIBFT_DIR) -lft -o $(NAME)
	
%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	@make -C $(LIBFT_DIR) clean
	rm -f $(OBJECTS)

fclean: clean
	@make -C $(LIBFT_DIR) fclean
	rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re
