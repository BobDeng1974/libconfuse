#!/bin/sh

echo -n "Running autopoint..."
autopoint && echo " done"

echo -n "Running aclocal..."
aclocal -I m4 || exit
echo " done"

echo -n "Running autoconf..."
autoconf || exit
echo " done"

echo -n "Running autoheader..."
autoheader || exit
echo " done"

echo -n "Running automake..."
automake || exit
echo " done"

echo "Running configure $*..."
./configure $*
