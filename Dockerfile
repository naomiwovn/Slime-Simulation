FROM archlinux

COPY . /app

RUN pacman -Syu --noconfirm && \
    pacman -S --needed base-devel --noconfirm && \ 
    pacman -S python --noconfirm && \
    pacman -S python-opencv --noconfirm && \
    pacman -S python-pytesseract --noconfirm 

WORKDIR /app
CMD ["python", "read_image.py"]