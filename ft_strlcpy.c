#include "libft.h"

size_t	ft_strlcpy(char *dest, char *src, size_t size)
{
	size_t	i;
	size_t	k;

	i = 0;
	k = 0;
	while (src[k])
		k++;
	if (size > 0)
	{
		while (i < k && i < size - 1)
		{
			dest[i] = src[i];
			i++;
		}
		dest[i] = '\0';
	}
	return (k);
}