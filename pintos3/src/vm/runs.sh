#!/bin/sh

export PATH=/home/c/coreyvessar/cis520/pintos/src/utils:/home/c/coreyvessar/cis520/usr/local/bin:$PATH
export BXSHARE=/home/c/coreyvessar/cis520/usr/local/share/bochs

make clean

clear
clear
echo Entering directory /examples ...
cd ../examples/
make

echo Entering directory /userprog ...
cd ../userprog/

# Stop for the user to press the enter key
#read -rp 'Press enter to continue...' secondyn </dev/tty 

echo Entering directory /userprog/build ...
cd build
pintos-mkdisk filesys.dsk --filesys-size=2;
pintos -f -q;

cd ..
cd ../vm/
make
#pintos -p ../../examples/echo -a echo -- -q;
#pintos -p ../../examples/echo -a cat -- -q;
#pintos -p ../../examples/echo -a halt -- -q;
#pintos -p ../../examples/echo -a lib -- -q;
#pintos -p ../../examples/echo -a mcp -- -q;
#pintos -p ../../examples/echo -a pwd -- -q;
#pintos -p ../../examples/echo -a shell -- -q;
#pintos -p ../../examples/echo -a bubsort -- -q;
#pintos -p ../../examples/echo -a cmp -- -q;
#pintos -q run 'echo This is userspace!';

#cd build
make check
