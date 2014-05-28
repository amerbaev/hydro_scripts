#!/usr/bin/csh
#Генерирует одинаковые файлы со скриптом северной двины, исправить или просто запомнить
#
foreach arch ( *.scodes.gz)
	echo $arch
	gzip -dfk $arch
	foreach file (*.scodes)
		foreach code ( 142 143 167 168 182 )
			cdo -f nc copy -selcode,${code} -sellonlatbox,103,143,74,50 -daymean ${file} ${file}_c${code}.nc
		end
		cdo add ${file}_c142.nc ${file}_c143.nc ${file}_c4.nc
		rm ${file}_c142.nc ${file}_c143.nc
		foreach code ( 4 167 168 182 )
			if( -e c${code}_tmp-1.nc) then
				cdo mergetime c${code}_tmp-1.nc ${file}_c${code}.nc c${code}_tmp.nc
				rm ${file}_c${code}.nc
				mv -f c${code}_tmp.nc c${code}_tmp-1.nc
			else
				mv ${file}_c${code}.nc c${code}_tmp-1.nc
			endif
		end
		rm ${file}
	end
end
foreach code ( 4 167 168 182 )
	mv c${code}_tmp-1.nc c${code}.nc
end
echo ALL DONE
#