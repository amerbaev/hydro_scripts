#!/bin/bash
echo C4
cp c4_$1_A01.nc c4_$1_daymean.nc
for j in $(seq 2 9); do
	if [ -f c4_$1_A0$j.nc ]; then
		cdo mergetime c4_$1_A0$j.nc c4_$1_daymean.nc c4_$1_daymean_tmp.nc
		rm c4_$1_daymean.nc
		mv c4_$1_daymean_tmp.nc c4_$1_daymean.nc
	fi
done
for j in $(seq 10 45); do
	if [ -f c4_$1_A$j.nc ]; then
		cdo mergetime c4_$1_A$j.nc c4_$1_daymean.nc c4_$1_daymean_tmp.nc
		rm c4_$1_daymean.nc
		mv c4_$1_daymean_tmp.nc c4_$1_daymean.nc
	fi
done
mv c4_$1_daymean.nc c4_$1_daymean_tmp.nc 
cdo daymean c4_$1_daymean_tmp.nc c4_$1_daymean.nc
rm c4_$1_daymean_tmp.nc
cdo ydaymean c4_$1_daymean.nc c4_$1_climate.nc

echo C167
cp c167_$1_A01.nc c167_$1_daymean.nc
for j in $(seq 2 9); do
	if [ -f c167_$1_A0$j.nc ]; then
		cdo mergetime c167_$1_A0$j.nc c167_$1_daymean.nc c167_$1_daymean_tmp.nc
		rm c167_$1_daymean.nc
		mv c167_$1_daymean_tmp.nc c167_$1_daymean.nc
	fi
done
for j in $(seq 10 45); do
	if [ -f c167_$1_A$j.nc ]; then
		cdo mergetime c167_$1_A$j.nc c167_$1_daymean.nc c167_$1_daymean_tmp.nc
		rm c167_$1_daymean.nc
		mv c167_$1_daymean_tmp.nc c167_$1_daymean.nc
	fi
done
mv c167_$1_daymean.nc c167_$1_daymean_tmp.nc 
cdo daymean c167_$1_daymean_tmp.nc c167_$1_daymean.nc
rm c167_$1_daymean_tmp.nc
cdo ydaymean c167_$1_daymean.nc c167_$1_climate.nc

echo C168
cp c168_$1_A01.nc c168_$1_daymean.nc
for j in $(seq 2 9); do
	if [ -f c168_$1_A0$j.nc ]; then
		cdo mergetime c168_$1_A0$j.nc c168_$1_daymean.nc c168_$1_daymean_tmp.nc
		rm c168_$1_daymean.nc
		mv c168_$1_daymean_tmp.nc c168_$1_daymean.nc	
	fi
done
for j in $(seq 10 45); do
	if [ -f c168_$1_A$j.nc ]; then
		cdo mergetime c168_$1_A$j.nc c168_$1_daymean.nc c168_$1_daymean_tmp.nc
		rm c168_$1_daymean.nc
		mv c168_$1_daymean_tmp.nc c168_$1_daymean.nc
	fi
done
mv c168_$1_daymean.nc c168_$1_daymean_tmp.nc 
cdo daymean c168_$1_daymean_tmp.nc c168_$1_daymean.nc
rm c168_$1_daymean_tmp.nc
cdo ydaymean c168_$1_daymean.nc c168_$1_climate.nc

echo C182
cp c182_$1_A01.nc c182_$1_daymean.nc
for j in $(seq 2 9); do
	if [ -f c182_$1_A0$j.nc ]; then
		cdo mergetime c182_$1_A0$j.nc c182_$1_daymean.nc c182_$1_daymean_tmp.nc
		rm c182_$1_daymean.nc
		mv c182_$1_daymean_tmp.nc c182_$1_daymean.nc
	fi
done
for j in $(seq 10 45); do
	if [ -f c182_$1_A$j.nc ]; then
		cdo mergetime c182_$1_A$j.nc c182_$1_daymean.nc c182_$1_daymean_tmp.nc
		rm c182_$1_daymean.nc
		mv c182_$1_daymean_tmp.nc c182_$1_daymean.nc
	fi
done
mv c182_$1_daymean.nc c182_$1_daymean_tmp.nc 
cdo daymean c182_$1_daymean_tmp.nc c182_$1_daymean.nc
rm c182_$1_daymean_tmp.nc
cdo ydaymean c182_$1_daymean.nc c182_$1_climate.nc