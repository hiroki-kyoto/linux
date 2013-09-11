# home/pear/robot.sh
# generate a c file:
echo -e "\e[1;34m " hello, we are here to "help" you automatically generate a c "file" and compile it"! \e[0m"
echo "write program to file ..."
echo "#include <stdio.h>" > test.c
echo " ">>test.c
echo "int main(int argc, const char* argv[])">>test.c
echo "{">>test.c
echo "printf(\"Hi, I am a robot, your answer is explicitly as:\n\");">>test.c
echo "double ans =" $1 ";">>test.c
echo "printf(\"${1}=%f\n\",ans);">>test.c
echo "return 0;">>test.c
echo "}">>test.c
echo -e "\e[1;31m writing process completed!\n \e[0m"
gcc -o test.o test.c
./test.o
echo -e "\e[1;31m do some cleaning, clear all the object file ...\n \e[0m"
rm test.o
echo -e "\e[1;32m do some cleaning, clear all the source file ...\n \e[0m"
rm test.c
echo -e "\e[1;31m task completed!\n \e[0m"
