#!/bin/bash

declare -a g1s1=("Ekonomija" "Matematika1" "Menadzment" "OIKT" "Psihologija" "Engleski1");
declare -a g1s2=("Matematika2" "Programiranje1" "UIS" "OO" "Proizvodni_sistemi");
declare -a g2s1=("AROS" "Matematika3" "Verovatnoca" "Marketing" "Programiranje2" "Engleski2");
declare -a g2s2=("DMS" "FMIR" "MTR" "SPA" "Statistika");
declare -a g3s1=("EPOS" "MLJR" "OI1" "RMT" "TS");
declare -a g3s2=("Baze" "LINS" "MPP" "OI2" "POIS" "PJ");
declare -a g4s1=("PIS" "ITEH" "SISJ" "PS" "Inteligentni");
declare -a g4s2=("OK" "Mobilno_racunarstvo" "ZRS" "NJT" "Diplomski");

moja_funkcija(){
		godina=$1
		mkdir $godina.godina;
		cd $godina.godina;
		mkdir S1 S2;
		cd S1;
		case $godina in 
		1)
		niz1=("${g1s1[@]}");
		niz2=("${g1s2[@]}");
		;;
		2)
		niz1=("${g2s1[@]}");
		niz2=("${g2s2[@]}");
		;;
		3)
		niz1=("${g3s1[@]}");
		niz2=("${g2s2[@]}");
		;;
		4)
		niz1=("${g4s1[@]}");
		niz2=("${g2s2[@]}");
		esac
		length=${#niz1[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${niz1[$i]};
			mkdir ${niz1[$i]};
		done
		
		cd ..;
		cd S2;
		
		length=${#niz2[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${niz2[$i]};
			mkdir ${niz2[$i]};
		done
		cd ..
		cd ..
		printf "\n"
}

case $1 in
	"1") 
	moja_funkcija 1
	;;
	"2") 
	moja_funkcija 2
	;;
	"3") 
	moja_funkcija 3
	;;
	"4") 
	moja_funkcija 4
	;;
	"--all") 
		moja_funkcija 1
		moja_funkcija 2
		moja_funkcija 3
		moja_funkcija 4
	;;
esac
