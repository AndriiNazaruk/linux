#!/bin/bash
file=/root/phonebook-General

RED="\033[31m"
GREEN="\033[32m"
END="\033[0m"


LeghiyPoshuk (){
while true;
do
clear
echo -e " \t 1.IMYA        \t 2.PRIZVISHE   \t 3.VIK $END\n"
echo -e " \t 4.TELEFON     \t 5.EMAIL       \t 6.MISTO $END\n"
echo -e " \t 7.NIK         \t 8.POVERNUTYSYA \t 9.EXIT $END\n"

read x
case $x in
1)
echo "`awk '{print $1}' /root/phonebook-General`"
;;
2)
echo "`awk '{print $2}' /root/phonebook-General`"
;;
3)
echo "`awk '{print $1 " " $3}' /root/phonebook-General`"
;;
4)
echo "`awk '{pring $4}' /root/phonebook-General`"
;;
5)
echo "`awk '{print $5}' /root/phonebook-General`"
;;
6)
echo "`awk '{print $6}' /root/phonebook-General`"
;;
7)
echo "`awk '{print $7}' /root/phonebook-General`"
;;
8)
main
;;
9)
exit 0
;;
*)
echo "ERROR"
;;
esac
sleep 5
done
}

TyazhkiyPoshuk (){
while true;
do
clear
echo -e " \t 1.Imya  \t 2.Prizvishye \t 3.Vik $END\n"
echo -e " \t 4.Telefon \t 5.Email   \t 6.Misto $END\n"
echo -e " \t 7.Nik     \t 8.Povernutsya \t 9.Exit $END\n"

read z
case $z in
1)
read q
echo -e "`awk '{print $1 " " $2}' /root/phonebook-General | grep -i $q `\n"
;;    
2)
read w
echo -e "`awk '{print $1 " " $2}' /root/phonebook-General | grep -i $w `\n"
;;
3)
read e
echo -e "`awk '{print $1 " " $3}' /root/phonebook-General | grep -i $e `\n"
;;
4)
read t
echo -e "`awk '{print $1 " " $4}' /root/phonebook-General | grep -i $t `\n"
;;
5)
read y
echo -e "`awk '{print $1 " " $5}' /root/phonebook-General | grep -i $y `\n"
;;
6)
read u
echo -e "`awk '{print $1 " " $6}' /root/phonebook-General | grep -i $u `\n"
;;
7)
read i
echo -e "`awk '{print $1 " " $7}' /root/phonebook-General | grep -i $i `\n"
;;
8)
main
;;
9)
exit 0
;;
*)
echo "ERROR"
;;
esac
sleep 5
done
}
Statistic(){
while true;
do
clear
echo -e " \t 1.Stat mista \t 2.Stat Email \t 3.Stat Vik $END\n"
echo -e " \t\t 4.Povernutsya \t 5.Exit $END\n"
read c
case $c in
1)
citys=`awk '{print $6}' /root/phonebook-General`;
for i in $citys
do
if grep -oiE "$i" /root/phonecity >>dev/null;
then
continue
else
echo "$i" >>root/phonecity
fi
done
per=`cat /root/phonecity`
for i in $per
do
echo "$i -- `grep -ic "$i" phonebook-General`"
done 
read
;;
2)
mail=`awk '{print $5}' /root/phonebook-General`;
for i in $mail
do
if grep -oiE "$i" /root/phoneemail >>/dev/null;
then
continue
else
echo "$i" >> /root/phoneemail
fi
done
eee=`cat /root/phoneemail`
for i in $eee
do
echo "$i -- `grep -ic "$i" phonebook-General`"
done
read
;;
3)
echo "Vid 01 do 18 -> `awk '{print " " $3 " "}' /root//phonebook-General | grep -ce "1[0-8]" -e "[0-9]"`"
echo "Vid 18 do 25 -> `awk '{print " " $3 " "}' /root/phonebook-General | grep -ce "2[0-5]" -e "19"`"
echo "Vid 25 do ++ -> `awk '{print " " $3 " "}' /root/phonebook-General | grep -ce "2[6-9]" -e "[3-9][0-0]"`"
;;
4)
main
;;
5)
exit 0
;;
*)
echo "ERROR"
;;
esac
sleep 5
done
}

main (){
echo -e "Lehkiy poshuk -> 1 $END\n"
echo -e "Tyashkiy poshuk -> 2 $END\n"
echo -e "Statistic -> 3 $END\n"
echo -e "Exit -> 4 $END\n"

read c
case $c in
1)
LeghiyPoshuk
;;
2)
TyazhkiyPoshuk
;;
3)
Statistic
;;
4)
exit 0
;;
*)
echo "ERROR"
;;
esac
sleep 3
}
main

 

   
   
