/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/09 11:04:57 by antmoren          #+#    #+#             */
/*   Updated: 2022/06/10 11:36:23 by antmoren         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./ft_printf/includes/ft_printf.h"
#include <unistd.h>

int	main(int argc, char **argv)
{
	int	i;

	i = 1;
	while (i < argc)
	{
		ft_printf("%s", argv[i]);
		i++;
	}
}
