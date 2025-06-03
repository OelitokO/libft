/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: OelitokO <omerelitok.05@gmail.com>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/06/02 06:41:10 by OelitokO          #+#    #+#             */
/*   Updated: 2025/06/03 05:18:55 by OelitokO         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_substr(const char *s, unsigned int start, size_t len)
{
	size_t	s_len;
	char	*s2;
	size_t	sub_size;

	s_len = ft_strlen(s);
	if (start >= s_len)
	{
		s2 = (char *)malloc(1);
		if (!s2)
			return (NULL);
		s2[0] = '\0';
		return (s2);
	}
	sub_size = len;
	if (s_len < start + len)
		sub_size = s_len - start;
	s2 = (char *)malloc(sub_size + 1);
	if (!s2)
		return (NULL);
	ft_memcpy(s2, s + start, sub_size);
	s2[sub_size] = '\0';
	return (s2);
}
