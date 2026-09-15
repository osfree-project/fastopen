#
# A Makefile for FASTOPEN
# (c) osFree project,
#

DESC = File cache
#defines object file names in format $(p)objname$(e)
SOURCES = fastopen fastseek fastinit fastp fastsm
# defines additional options for C compiler
#STUB     = $(FILESDIR)$(SEP)os2$(SEP)mdos$(SEP)$(PROJ).exe
UNI2H = 0
JWASM = 1
TARGET_API = DOS

!include $(%ROOT)tools/mk/build.mk
!include $(MYDIR)fastopen.mk

ADD_COPT = -i=$(PORT_BASE)v4.0$(SEP)src$(SEP)h
ADD_ASMOPT = -Zm -Zg -I=$(PORT_BASE)v4.0$(SEP)src$(SEP)inc
ADD_LINKOPT = op nocase

.c: $(PORT_BASE)v4.0$(SEP)src$(SEP)cmd$(SEP)fastopen
.asm: $(PORT_BASE)v4.0$(SEP)src$(SEP)cmd$(SEP)fastopen

.h: $(PORT_BASE)v4.0$(SEP)src$(SEP)cmd$(SEP)fastopen
.h: $(PORT_BASE)v4.0$(SEP)src$(SEP)h
.inc: $(PORT_BASE)v4.0$(SEP)src$(SEP)inc
