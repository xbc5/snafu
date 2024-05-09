FROM fedora:37

RUN useradd -m user
RUN dnf update -y
RUN dnf install dnf-plugins-core -y
RUN dnf copr enable frostyx/qtile -y
RUN dnf install xorg-x11-server-Xephyr qtile qtile-extras python3.11 xterm -y

USER user

RUN mkdir -p /home/user/.config/qtile
