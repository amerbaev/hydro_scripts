#!/bin/bash
for i in $(seq $1 $2); do
	if [ "$i" -lt 10 ]; then
		cd had063_A0$i
	else
		cd had063_A$i
	fi
	csh hydro_select_sdvina.x
	cd ..
done
echo "All done"
exit 0