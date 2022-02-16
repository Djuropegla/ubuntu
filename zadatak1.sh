#!/bin/bash

declare -a g1s1=("Ekonomija" "Matematika1" "Menadzment" "OIKT" "Psihologija" "Engleski1");
declare -a g1s2=("Matematika2" "Programiranje1" "UIS" "OO" "Proizvodni_sistemi");
declare -a g2s1=("AROS" "Matematika3" "Verovatnoca" "Marketing" "Programiranje2" "Engleski2");
declare -a g2s2=("DMS" "FMIR" "MTR" "SPA" "Statistika");
declare -a g3s1=("EPOS" "MLJR" "OI1" "RMT" "TS");
declare -a g3s2=("Baze" "LINS" "MPP" "OI2" "POIS" "PJ");
declare -a g4s1=("PIS" "ITEH" "SISJ" "PS" "Inteligentni");
declare -a g4s2=("OK" "Mobilno_racunarstvo" "ZRS" "NJT" "Diplomski");

case $1 in
	"1") 
		mkdir 1.godina;
		cd 1.godina;
		mkdir S1 S2;
		cd S1;
		length=${#g1s1[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g1s1[$i]};
			mkdir ${g1s1[$i]};
		done
		
		cd ..;
		cd S2;
		
		length=${#g1s2[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g1s2[$i]};
			mkdir ${g1s2[$i]};
		done
	;;
	"2") 
		mkdir 2.godina;
		cd 2.godina;
		mkdir S1 S2;
		cd S1;
		length=${#g2s1[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g2s1[$i]};
			mkdir ${g2s1[$i]};
		done
		
		cd ..;
		cd S2;
		
		length=${#g2s2[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g2s2[$i]};
			mkdir ${g2s2[$i]};
		done
	;;
	"3") 
		mkdir 3.godina;
		cd 3.godina;
		mkdir S1 S2;
		cd S1;
		
		length=${#g3s1[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g3s1[$i]};
			mkdir ${g3s1[$i]};
		done
		
		cd ..;
		cd S2;
		
		length=${#g3s2[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g3s2[$i]};
			mkdir ${g3s2[$i]};
		done
	;;
	"4") 
		mkdir 4.godina;
		cd 4.godina;
		mkdir S1 S2;
		cd S1;
		
		length=${#g4s1[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g4s1[$i]};
			mkdir ${g4s1[$i]};
		done
		
		cd ..;
		cd S2;
		
		length=${#g4s2[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g4s2[$i]};
			mkdir ${g4s2[$i]};
		done
	;;
		"--all") 
		mkdir 1.godina;
		cd 1.godina;
		mkdir S1 S2;
		cd S1;
		length=${#g1s1[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g1s1[$i]};
			mkdir ${g1s1[$i]};
		done
		
		cd ..;
		cd S2;
		
		length=${#g1s2[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g1s2[$i]};
			mkdir ${g1s2[$i]};
		done
		cd ..
		cd ..
				mkdir 2.godina;
		cd 2.godina;
		mkdir S1 S2;
		cd S1;
		length=${#g2s1[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g2s1[$i]};
			mkdir ${g2s1[$i]};
		done
		
		cd ..;
		cd S2;
		
		length=${#g2s2[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g2s2[$i]};
			mkdir ${g2s2[$i]};
		done
		cd ..
		cd ..
				mkdir 3.godina;
		cd 3.godina;
		mkdir S1 S2;
		cd S1;
		
		length=${#g3s1[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g3s1[$i]};
			mkdir ${g3s1[$i]};
		done
		
		cd ..;
		cd S2;
		
		length=${#g3s2[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g3s2[$i]};
			mkdir ${g3s2[$i]};
		done
		cd ..
		cd ..
				mkdir 4.godina;
		cd 4.godina;
		mkdir S1 S2;
		cd S1;
		
		length=${#g4s1[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g4s1[$i]};
			mkdir ${g4s1[$i]};
		done
		
		cd ..;
		cd S2;
		
		length=${#g4s2[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g4s2[$i]};
			mkdir ${g4s2[$i]};
		done
	;;
esac
