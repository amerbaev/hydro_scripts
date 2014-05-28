#!/usr/bin/csh
#
foreach file ( *.nc)
	echo $file
	cdo -yearmean -fldmean $file mean/year_$file
	cdo -monmean -fldmean $file mean/mon_$file
end
echo ALL DONE
#