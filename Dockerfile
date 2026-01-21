FROM ubuntu:22.04
RUN apt-get update && apt-get install -y nasm binutils
WORKDIR /app
COPY laba3.1.asm .
RUN nasm -felf64 laba3.1.asm -o laba3.o && ld laba3.o -o laba3
CMD ["./laba3"]
