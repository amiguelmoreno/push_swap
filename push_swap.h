/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: antmoren <antmoren@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/11 20:44:49 by antmoren          #+#    #+#             */
/*   Updated: 2022/06/12 00:44:48 by antmoren         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PUSH_SWAP_H
# define PUSH_SWAP_H

# include "ft_printf/includes/ft_printf.h"
# include <unistd.h>

typedef struct list_elemnt
{
	char				*content;
	struct list_elemnt	*next;
}						t_entry;

#endif