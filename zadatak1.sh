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

		mkdir $1.godina;
		cd $1.godina;
		mkdir S1 S2;
		cd S1;
		length=${#g$1s1[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g$1s1[$i]};
			mkdir ${g$1s1[$i]};
		done
		
		cd ..;
		cd S2;
		
		length=${#g$1s2[@]};
		for (( i=0; i<${length}; i++ )); 
		do
			echo ${g$1s2[$i]};
			mkdir ${g$1s2[$i]};
		done
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
		for (( i=1; i<=4; i++ )); 
		do
			moja_funkcija $i
		done
	;;
esac
