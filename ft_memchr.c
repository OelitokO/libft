/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: OelitokO <omerelitok.05@gmail.com>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/31 04:19:03 by OelitokO          #+#    #+#             */
/*   Updated: 2025/05/31 06:35:55 by OelitokO         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	const unsigned char	*uc_ptr;
	unsigned char		uc;
	size_t				i;

	i = 0;
	uc_ptr = (const unsigned char *)s;
	uc = (unsigned char)c;
	while (i < n)
	{
		if (uc_ptr[i] == uc)
			return ((void *)(uc_ptr + i));
		i++;
	}
	return (NULL);
}
