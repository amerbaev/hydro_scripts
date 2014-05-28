#!/bin/bash
mkdir Results_$1
for i in $(seq 1 9); do
	cd had063_A0$i/
	cp c4.nc ../Results_$1/c4_$1_A0$i.nc
	cp c167.nc ../Results_$1/c167_$1_A0$i.nc
	cp c168.nc ../Results_$1/c168_$1_A0$i.nc
	cp c182.nc ../Results_$1/c182_$1_A0$i.nc
	cd ..
done
for i in $(seq 10 45); do
	cd had063_A$i/
	cp c4.nc ../Results_$1/c4_$1_A$i.nc
	cp c167.nc ../Results_$1/c167_$1_A$i.nc
	cp c168.nc ../Results_$1/c168_$1_A$i.nc
	cp c182.nc ../Results_$1/c182_$1_A$i.nc
	cd ..
done