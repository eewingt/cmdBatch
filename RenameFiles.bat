@echo off
cd C:\logs

echo "Input rename filename, exclude extension :"
SET /P var1=
echo "Will be renaming file to "%var1%

ren pokemon.txt %var1%.txt

If exist C:\logs\%var1%.txt (
 echo "Rename Successful"
) else (
echo "Rename failed"
)

timeout 5
