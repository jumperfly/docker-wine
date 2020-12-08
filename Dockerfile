FROM archlinux:base-20201206.0.10501

ENV WINEDEBUG=-all
RUN echo -e '[multilib]\nInclude = /etc/pacman.d/mirrorlist' >> /etc/pacman.conf &&\
  pacman -Sy --noconfirm wine wine-gecko wine-mono &&\
  yes|pacman -Scc
