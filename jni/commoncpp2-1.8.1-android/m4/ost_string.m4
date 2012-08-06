dnl Copyright (C) 1999-2005 Open Source Telecom Corporation.
dnl Copyright (C) 2006-2010 David Sugar, Tycho Softworks.
dnl
dnl This program is free software; you can redistribute it and/or modify
dnl it under the terms of the GNU General Public License as published by
dnl the Free Software Foundation; either version 2 of the License, or
dnl (at your option) any later version.
dnl
dnl This program is distributed in the hope that it will be useful,
dnl but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
dnl GNU General Public License for more details.
dnl
dnl You should have received a copy of the GNU General Public License
dnl along with this program; if not, write to the Free Software
dnl Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
dnl
dnl As a special exception to the GNU General Public License, if you
dnl distribute this file as part of a program that contains a configuration
dnl script generated by Autoconf, you may include it under the same
dnl distribution terms that you use for the rest of that program.

AC_DEFUN([OST_CC_STRING],[
    AC_REQUIRE([OST_SYS_POSIX])
    AC_CHECK_FUNCS(strcasecmp)
    AC_CHECK_HEADERS(strings.h alloca.h)

AH_BOTTOM([
#include <cstring>
#ifdef HAVE_STRINGS_H
#ifndef _AIX
#include <strings.h>
#endif
#endif

#ifdef HAVE_ALLOCA_H
#include <alloca.h>
#endif

#ifndef HAVE_SNPRINTF
#if defined(WIN32) && defined(_MSC_VER) && _MSC_VER < 1400
#define snprintf        _snprintf
#define vsnprintf       _vsnprintf
#endif
#endif

#ifdef HAVE_STRCASECMP
#ifndef stricmp
#define stricmp(x,y) strcasecmp(x,y)
#endif
#ifndef strnicmp
#define strnicmp(x,y,n) strncasecmp(x,y,n)
#endif
#ifndef stristr
#define stristr(x, y) strcasestr(x,y)
#endif
#endif

    ])
])

