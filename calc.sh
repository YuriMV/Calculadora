#!/bin/bash
#calculadora simples em shellscript by sysh0ck
################################################
soma () {
printf "Digite o primeiro numero\n: ";
read num1
printf "Digite o segundo numero\n: ";
read num2
a1=$(expr "$num1" + "$num2")
echo "Resultado: $a1";
echo ""

echo "Continuar : c";
echo "Sair : s";
echo "Voltar ao menu : m";
echo ""
read -p "Digite uma opção: " rsp1

if [ "$rsp1" = "s" ]
 then
   exit;
elif [ "$rsp1" = "c" ]
  then
   soma
elif [ "$rsp1" = "m" ]
  then 
   menu
else
 echo "opção inválida";
fi
}
divisao () {
printf "Digite o primeiro numero para a divisão\n: ";
read numdiv1
printf "Digite o segundo numero para a divisão\n: ";
read numdiv2
nd=$(expr "$numdiv1" / "$numdiv2")

echo "Resultado: $nd";
echo ""

echo "Continuar : c";
echo "Sair : s";
echo "Voltar ao menu : m";
echo ""
read -p "Digite uma opção: " rsp1
if [ "$rsp1" = "s" ]
 then
   exit;
elif [ "$rsp1" = "c" ]
  then
   divisao
elif [ "$rsp1" = "m" ]
  then 
   menu
else
 echo "opção inválida";
fi
}
multiplicacao () {
printf "Digite o primeiro numero para multiplicar\n: ";
read numut1
printf "Digite o segundo numero para multiplicar\n: ";
read numut2
nm=$(($numut1 * $numut2))
echo "Resultado: $nm"
echo ""

echo "Continuar : c";
echo "Sair : s";
echo "Voltar ao menu : m";
echo ""
read -p "Digite uma opção: " rsp1

if [ "$rsp1" = "s" ]
 then
   exit;
elif [ "$rsp1" = "c" ]
  then
   multiplicacao
elif [ "$rsp1" = "m" ]
  then 
   menu
else
 echo "opção inválida";
fi
}
subtracao () {
printf "Digite o primeiro numero para subtrair\n: ";
read numsub1
printf "Digite o segundo numero para subtrair\n: ";
read numsub2
ns=$(expr "$numsub1" - "$numsub2")
echo "Resultado: $ns";
echo ""

echo "Continuar : c";
echo "Sair : s";
echo "Voltar ao menu : m";
echo ""
read -p "Digite uma opção: " rsp1

if [ "$rsp1" = "s" ]
 then
   exit;
elif [ "$rsp1" = "c" ]
  then
   subtracao
elif [ "$rsp1" = "m" ]
  then 
   menu
else
 echo "opção inválida";
fi
}
menu () {
clear
echo "###Calculadora by sysh0ck###";
echo ""
echo "1: Soma";
echo "2: Divisão";
echo "3: Multiplicação";
echo "4: Subtração";
printf "Escolha uma opção acima\n: ";

read escolha
case $escolha in 
1)
 soma;;
2)
 divisao;;
3)
 multiplicacao;;
4)
 subtracao;;
1 | 2 | 3 | 4)
 exit;;
esac
}
menu
