#include "libft.h"
#include <stdio.h>

gui
{
	int	i;

	i = 0;
	while (lst != NULL)
	{
		i++;
		lst = lst->next; 
	}
	return (i);
}