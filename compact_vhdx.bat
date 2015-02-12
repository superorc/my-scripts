@echo off

SET VHDX_dir=D:\tsprofiles\test

FOR %%c in (%VHDX_dir%\*.*) DO (
	
	echo select vdisk file=%%c > %%c.txt
	echo compact vdisk >> %%c.txt
	
	diskpart /s %%c.txt
	echo %%c done
	)
	
FOR %%c in (%VHDX_dir%\*.txt) DO del %%c

echo success!