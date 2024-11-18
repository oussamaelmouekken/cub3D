NAME = cub3D
CC = cc

CFILES = main.c 
OBJ = ${CFILES:.c=.o}
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS)  -o $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(OBJB) 

fclean: clean
	rm -f $(NAME) $(NAMEB)

re: fclean all

.PHONY : all  clean fclean re 