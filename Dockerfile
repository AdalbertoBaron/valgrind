# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaron <abaron@student.21-school.ru>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/18 17:36:42 by abaron            #+#    #+#              #
#    Updated: 2021/01/27 00:10:29 by abaron           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ubuntu:latest

ENV TZ=Europe/Moscow

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update
RUN apt install -y build-essential
RUN apt install -y manpages-dev
RUN apt install -y vim
RUN apt install -y valgrind

ENTRYPOINT ["bash"]