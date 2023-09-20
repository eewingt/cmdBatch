cd C:\logs

SET /P var1=
echo "Will be renaming file to "%var1%

ren Pokemon.txt %var1%.txt

If exist C:\logs\%var1%.txt (
msg "%username%" Rename successful
)

Else (
msg "%username%" Rename failed
)
