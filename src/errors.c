/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   errors.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vduran-m <vduran-m@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/06/01 19:14:38 by vduran-m          #+#    #+#             */
/*   Updated: 2025/06/01 19:42:49 by vduran-m         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "pipex.h"

int	envpexit(void)
{
	ft_putstr_fd("ERROR: Can't find environment variables\n", 2);
	return (0);
}

int	pathexit(void)
{
	ft_putstr_fd("ERROR: Can't find PATH= routes\n", 2);
	exit(EXIT_FAILURE);
	return (0);
}

void	ft_error(void)
{
	perror("ERROR");
	exit(EXIT_FAILURE);
}

void	freepath(char	**paths)
{
	int	i;

	i = -1;
	while (paths[++i])
		free(paths[i]);
	free(paths);
}
