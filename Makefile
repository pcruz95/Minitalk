NAME = client
NAME2 = server

FLAGS = -Wall -Wextra -Werror

SRC = client.c utils.c
EXCH = client.o utils.o

SRC2 = server.c utils.c
EXCH2 = server.o utils.o

all: $(NAME) $(NAME2)

$(NAME): $(EXCH)
	gcc $(FLAGS) $(EXCH) -o $(NAME)

$(NAME2): $(EXCH2)
	gcc $(FLAGS) $(EXCH2) -o $(NAME2)

%.o: %.c     
	gcc $(FLAGS) -o $@ -c $<

clean:
	/bin/rm -f ./*.o
	/bin/rm -f ./*.o

fclean: clean
	/bin/rm -f $(NAME) $(NAME2)

re: fclean all