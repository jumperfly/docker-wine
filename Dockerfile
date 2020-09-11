FROM archlinux

ENV WINEDEBUG=-all
RUN echo -e '[multilib]\nInclude = /etc/pacman.d/mirrorlist' >> /etc/pacman.conf &&\
  pacman -Sy --noconfirm wine wine-gecko wine-mono &&\
  yes|pacman -Scc
