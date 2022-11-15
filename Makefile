NAME = libft.a

CC = gcc

CFLAGS = -c #-Wall -Wextra -Werror 

FILES = $(wildcard *.c)

OBJ = $(FILES:.c=.o)

all: $(NAME)
	$(CC) -o main main.c $(NAME); ./main.exe

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

$(OBJ): $(FILES)
	$(CC) $(CFLAGS) $(FILES)

clean:
	rm -f *.o

fclean: clean
	rm -f libft.a *.exe *.out

re: fclean all

.PHONY: all clean fclean re