NAME = libft.a

DEP = libft.h Makefile

CFLAGS = -Wall -Wextra -Werror

FILES = $(filter-out $(wildcard ft_lst*.c),$(wildcard *.c))

OBJ = $(FILES:.c=.o)

BONUS = $(wildcard ft_lst*.c)

BONUS_OBJ = $(BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJ) $(DEP)
	@ar rcs $(NAME) $(OBJ)

bonus: $(BONUS_OBJ)
	@ar rcs $(NAME) $(BONUS_OBJ)

clean:
	rm -f *.o

fclean: clean
	rm -f libft.a

re: fclean all

.PHONY: all clean fclean bonus re