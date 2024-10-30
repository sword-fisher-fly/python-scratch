#! /bin/bash


for i in {1..10}; do
  echo "i=" $i
done

declare i = 20
while [ $i -gt 20 ]; do
    echo "while-loop: i=" $i
    i=$(($i+1))
done


while read line; do
    # Do something with the line
    echo $line
done < filename.txt

subnet="192.168.1."
for i in {1..254}; do
    ip="${subnet}$i"
    # ping -c 1 -W 1 $ip >/dev/null 2>&1
    # if [ $? -eq 0 ]; then
    echo $ip
    # fi
done

#字符串处理

str="Hello, World!"

## 截取字符串
substr="${str:0:5}"
echo "substr: ${substr}"
front_part=$(echo "$str" | cut -c1-5)

echo "front part: ${front_part}"

awk_front_part=$(echo "$str" | awk '{print substr($0, 1, 5)}')
echo "awk front part: ${awk_front_part}"
## 替换字符串

replaced_str="${str//World/Python}"
echo "source str: ${str} replaced str: ${replaced_str}"

len=${#str}
echo "str len: ${len}"

## 拼接字符串
str1="Hello"
str2="World"
concatenated_str="${str1} ${str2}"
echo "concatenated str: ${concatenated_str}"

## 从左删除
str="HHHHHello, World!"
prefix="H"
trimmed_short_str=${str#*H}
echo "origin str: ${str}"
echo "left trimmed short str: ${trimmed_short_str}"
trimmed_long_str=${str##*H}
echo "left trimmed long str: ${trimmed_long_str}"

## 从右删除
str="Hello, World!HHHH"
suffix="H"
# trimmed_short_str=${str%${suffix}}
# echo "right trimmed short str: ${trimmed_short_str}"
trimmed_long_str=${str%%${suffix}}
echo "right trimmed long str: ${trimmed_long_str}"

## 字符串分割
str="apple,banana,orange"
IFS=',' read -ra fruits <<< "$str"
for fruit in "${fruits[@]}"; do
    echo "$fruit"
done
