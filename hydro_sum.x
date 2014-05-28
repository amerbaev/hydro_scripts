#!/usr/bin/csh
#
foreach file ( *.nc)
	echo $file
	cdo -yearsum -fldmean $file mean/year_$file
	cdo -monsum -fldmean $file mean/mon_$file
end
echo ALL DONE
#