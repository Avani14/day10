read -p "Enter first number : " n1
read -p "Enter second number : " n2
read -p "Enter third number : " n3
declare -A answers
ans1=$(($n1+$n2*$n3))
ans2=$(($n1*$n2+$n3))
ans3=$(($n3+$n1/$n2))
ans4=$(($n1%$n2+$n3))
answers[a+b*c]=$ans1
answers[a*b+c]=$ans2
answers[c+a/b]=$ans3
answers[a%b+c]=$ans4
echo ${answers[@]}
echo ${!answers[@]}
declare -a ansArr
count=0
for i in ${answers[@]}
do
	ansArr[count++]=$i
done
echo ${ansArr[@]}
