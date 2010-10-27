#
# config.mk.in -- autoconf template for Vim on Unix		vim:ts=8:sw=8:
#
# DO NOT EDIT config.mk!!  It will be overwritten by configure.
# Edit Makefile and run "make" or run ./configure with other arguments.
#
# Configure does not edit the makefile directly. This method is not the
# standard use of GNU autoconf, but it has two advantages:
#   a) The user can override every choice made by configure.
#   b) Modifications to the makefile are not lost when configure is run.
#
# I hope this is worth being nonstandard. jw.



VIMNAME		= vim
EXNAME		= ex
VIEWNAME	= view

CC		= gcc
DEFS		= -DHAVE_CONFIG_H
CFLAGS		= -g -O2 -D_FORTIFY_SOURCE=1
CPPFLAGS	= 
srcdir		= .

LDFLAGS		= 
LIBS		= -lm -lncurses -lnsl  -ldl
TAGPRG		= ctags

CPP		= gcc -E
CPP_MM		= M
DEPEND_CFLAGS_FILTER = | sed 's+-I */+-isystem /+g'
X_CFLAGS	=  
X_LIBS_DIR	=  
X_PRE_LIBS	=  -lSM -lICE -lXpm
X_EXTRA_LIBS	= 
X_LIBS		= -lXt -lX11

LUA_LIBS	= 
LUA_SRC		= 
LUA_OBJ		= 
LUA_CFLAGS	= 
LUA_PRO		= 

MZSCHEME_LIBS	= 
MZSCHEME_SRC	= 
MZSCHEME_OBJ	= 
MZSCHEME_CFLAGS	= 
MZSCHEME_PRO	= 
MZSCHEME_EXTRA  = 
MZSCHEME_MZC	= 

PERL		= 
PERLLIB		= 
PERL_LIBS	= 
SHRPENV		= 
PERL_SRC	= 
PERL_OBJ	= 
PERL_PRO	= 
PERL_CFLAGS	= 

PYTHON_SRC	= 
PYTHON_OBJ	= 
PYTHON_CFLAGS	= 
PYTHON_LIBS	= 
PYTHON_CONFDIR	= 
PYTHON_GETPATH_CFLAGS = 

PYTHON3_SRC	= 
PYTHON3_OBJ	= 
PYTHON3_CFLAGS	= 
PYTHON3_LIBS	= 
PYTHON3_CONFDIR	= 

TCL		= 
TCL_SRC		= 
TCL_OBJ		= 
TCL_PRO		= 
TCL_CFLAGS	= 
TCL_LIBS	= 

HANGULIN_SRC	= 
HANGULIN_OBJ	= 

WORKSHOP_SRC	= 
WORKSHOP_OBJ	= 

NETBEANS_SRC	= netbeans.c
NETBEANS_OBJ	= objects/netbeans.o

RUBY		= 
RUBY_SRC	= 
RUBY_OBJ	= 
RUBY_PRO	= 
RUBY_CFLAGS	= 
RUBY_LIBS	= 

SNIFF_SRC	= 
SNIFF_OBJ	= 

AWK		= gawk

STRIP		= strip

EXEEXT		= 

COMPILEDBY	= 

INSTALLVIMDIFF	= installvimdiff
INSTALLGVIMDIFF	= installgvimdiff
INSTALL_LANGS	= install-languages
INSTALL_TOOL_LANGS	= install-tool-languages

### sed command to fix quotes while creating pathdef.c
QUOTESED        = sed -e 's/[\\"]/\\&/g' -e 's/\\"/"/' -e 's/\\";$$/";/'

### Line break character as octal number for "tr"
NL		= "\\012"

### Top directory for everything
prefix		= /usr/local

### Top directory for the binary
exec_prefix	= ${prefix}

### Prefix for location of data files
BINDIR		= ${exec_prefix}/bin

### For autoconf 2.60 and later (avoid a warning)
datarootdir	= ${prefix}/share

### Prefix for location of data files
DATADIR		= ${datarootdir}

### Prefix for location of man pages
MANDIR		= ${datarootdir}/man

### Do we have a GUI
GUI_INC_LOC	= -pthread -I/nix/store/apfgwf20jp8cz7q1wyn3hs48anz1yksy-fontconfig-2.8.0/include -I/nix/store/csxg8kjrvpxph2p57syk671cwbim1ppr-freetype-2.4.1/include/freetype2 -I/nix/store/csxg8kjrvpxph2p57syk671cwbim1ppr-freetype-2.4.1/include -I/nix/store/bmf7nf6jraq76lzrl7s70vz9svgxv5cb-glib-2.24.1/include/glib-2.0 -I/nix/store/bmf7nf6jraq76lzrl7s70vz9svgxv5cb-glib-2.24.1/lib/glib-2.0/include -I/nix/store/qirsqzvzwxvxh7xl201fgycf473hgjsr-gtk+-2.20.1/include/gtk-2.0 -I/nix/store/qirsqzvzwxvxh7xl201fgycf473hgjsr-gtk+-2.20.1/lib/gtk-2.0/include -I/nix/store/mcrjdhhr1k7rcn8zkqfr87yxlh23f923-atk-1.30.0/include/atk-1.0 -I/nix/store/4svcahp3svlgjbm6ckd7cf3rh88wr4b7-pango-1.28.3/include/pango-1.0 -I/nix/store/ylfsx61j2frxh9ik80l6hqrvz6vjx3v2-cairo-1.8.10/include/cairo  
GUI_LIB_LOC	= -L/nix/store/apfgwf20jp8cz7q1wyn3hs48anz1yksy-fontconfig-2.8.0/lib -L/nix/store/csxg8kjrvpxph2p57syk671cwbim1ppr-freetype-2.4.1/lib -L/nix/store/bmf7nf6jraq76lzrl7s70vz9svgxv5cb-glib-2.24.1/lib -L/nix/store/qirsqzvzwxvxh7xl201fgycf473hgjsr-gtk+-2.20.1/lib -L/nix/store/mcrjdhhr1k7rcn8zkqfr87yxlh23f923-atk-1.30.0/lib -L/nix/store/4svcahp3svlgjbm6ckd7cf3rh88wr4b7-pango-1.28.3/lib -L/nix/store/ylfsx61j2frxh9ik80l6hqrvz6vjx3v2-cairo-1.8.10/lib  
GUI_SRC		= $(GTK_SRC)
GUI_OBJ		= $(GTK_OBJ)
GUI_DEFS	= $(GTK_DEFS)
GUI_IPATH	= $(GTK_IPATH)
GUI_LIBS_DIR	= $(GTK_LIBS_DIR)
GUI_LIBS1	= $(GTK_LIBS1)
GUI_LIBS2	= $(GTK_LIBS2)
GUI_INSTALL	= $(GTK_INSTALL)
GUI_TARGETS	= $(GTK_TARGETS)
GUI_MAN_TARGETS	= $(GTK_MAN_TARGETS)
GUI_TESTTARGET	= $(GTK_TESTTARGET)
GUI_TESTARG	= $(GTK_TESTARG)
GUI_BUNDLE	= $(GTK_BUNDLE)
NARROW_PROTO	= 
GUI_X_LIBS	= 
MOTIF_LIBNAME	= 
GTK_LIBNAME	= -pthread -L/nix/store/apfgwf20jp8cz7q1wyn3hs48anz1yksy-fontconfig-2.8.0/lib -L/nix/store/csxg8kjrvpxph2p57syk671cwbim1ppr-freetype-2.4.1/lib -L/nix/store/bmf7nf6jraq76lzrl7s70vz9svgxv5cb-glib-2.24.1/lib -L/nix/store/qirsqzvzwxvxh7xl201fgycf473hgjsr-gtk+-2.20.1/lib -L/nix/store/mcrjdhhr1k7rcn8zkqfr87yxlh23f923-atk-1.30.0/lib -L/nix/store/4svcahp3svlgjbm6ckd7cf3rh88wr4b7-pango-1.28.3/lib -L/nix/store/ylfsx61j2frxh9ik80l6hqrvz6vjx3v2-cairo-1.8.10/lib -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0  

### Any OS dependent extra source and object file
OS_EXTRA_SRC	= 
OS_EXTRA_OBJ	= 

### If the *.po files are to be translated to *.mo files.
MAKEMO		= 

# Make sure that "make first" will run "make all" once configure has done its
# work.  This is needed when using the Makefile in the top directory.
first: all
