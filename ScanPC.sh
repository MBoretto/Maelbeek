#!/bin/bash

tot=0
accesi=0
massimo=$1
this=ainfb04

rm on
	#for i in ainfa01 ainfa02 ainfa03 ainfa04 ainfa05 ainfa06 ainfa07 ainfa08 ainfb01 ainfb02 ainfb03 ainfb04 ainfb05 ainfb06 ainfb07 ainfb08 ainfc01 ainfc02 ainfc03 ainfc04 ainfc05 ainfc06 ainfc07 ainfc08 ainfd01 ainfd02 ainfd03 ainfd04 ainfd05 ainfd06 ainfd07 ainfd08 ainfe01 ainfe02 ainfe03 ainfe04 ainfe05 ainfe06 ainfe07 ainfe08 ainff01 ainff02 ainff03 ainff04 ainff05 ainff06 ainff07 ainff08 ainfg01  ainfg02 ainfg03 ainfg04 ainfg05 ainfg06 ainfg07 ainfg08 ainfh01 ainfh02 ainfh03 ainfh04 ainfh05 ainfh06 ainfi01 ainfi02 ainfi03 ainfi04 ainfi05 ainfi06 ainfl01 ainfl02 ainfl03 ainfl04 ainfl05 ainfl06 biblio01 biblio02 biblio03 biblio04 labuno01 labuno02 labuno03 labuno04 labuno05 labuno06 labuno07 labuno08 labuno09 labdue01 labdue02 labdue03 labdue04 labdue05 labdue06 labdue07 labdue08
	#no biblio no ainfl06 ainfa02 ainfg06
	for i in ainfa01 ainfa03 ainfa04 ainfa05 ainfa06 ainfa07 ainfa08 ainfb01 ainfb02 ainfb03 ainfb04 ainfb05 ainfb06 ainfb07 ainfb08 ainfc01 ainfc02 ainfc03 ainfc04 ainfc05 ainfc06 ainfc07 ainfc08 ainfd01 ainfd02 ainfd03 ainfd04 ainfd05 ainfd06 ainfd07 ainfd08 ainfe01 ainfe02 ainfe03 ainfe04 ainfe05 ainfe06 ainfe07 ainfe08 ainff01 ainff02 ainff03 ainff04 ainff05 ainff06 ainff07 ainff08 ainfg01  ainfg02 ainfg03 ainfg04 ainfg05 ainfg07 ainfg08 ainfh01 ainfh02 ainfh03 ainfh04 ainfh05 ainfh06 ainfi01 ainfi02 ainfi03 ainfi04 ainfi05 ainfi06 ainfl01 ainfl02 ainfl03 ainfl04 ainfl05
	do
		#if [ "$this" != "$i" ]
				if [ "$accesi" -lt "$massimo" ]
					then
						#echo "Welcome $i times"
						output=`ping -c 1 $i`
						#echo $output
						posizione=`expr index "$output" %`
						percentuale=${output: $posizione-4 :3}

						#pulisco eventuali terimini inutili
						if [ "${percentuale: 0 :1}" == ',' ] 
							then 
							percentuale=${percentuale: 1 :${#percentuale}}
						fi


						#verifico che sia acceso
						if [ "$percentuale" == '100' ] 
							then
								echo "*	"$i
						
						elif [[ "$percentuale" < "100" ]] 
							then
								echo $i
								echo $i >> "on"
								let "accesi += 1" 
						fi

						#tot=$tot+1
						let "tot += 1" 
				fi

				let "tot += 1" 
	done
echo ""
echo $accesi"/"$tot
