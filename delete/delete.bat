@ECHO OFF
set params=%*


for %%f in (%params%) do (
	if NOT EXIST "%%f\" (
		del /q /s "%%f"
	)
)

for /D %%f in (%params%) do (
	del /q /s "%%f"
	rmdir /q /s "%%f"
)
