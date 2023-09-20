cd C:\logs
ren Pokemon.txt Pokemon2.txt

If exist C:\logs\Pokemon2.txt (
msg "%username%" Rename successful
)

Else (
msg "%username%" Rename failed
)
