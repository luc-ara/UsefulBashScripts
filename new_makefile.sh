#!/bin/bash

touch makefile
echo 'CC = gcc' >> makefile
echo 'CFLAGS = -Wall -Wextra -Werror -Wconversion -Wuninitialized -Wformat=2 -Wmissing-declarations -Wstrict-prototypes -Wpointer-arith' >> makefile
echo '' >> makefile
echo 'TOPDIR = ./' >> makefile
echo 'INCDIR = ./inc' >> makefile
echo 'SRCDIR = ./src' >> makefile
echo 'OBJDIR = ./obj' >> makefile
echo 'BINDIR = ./bin' >> makefile
echo '' >> makefile
echo '$(OBJDIR)/%.o: $(SRCDIR)/%.c' >> makefile
