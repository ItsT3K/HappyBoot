#For this program to work well I HIGHLY recommend lolcat is installed before hand
#lolcat can be downloaded by doing
# Ubuntu/Debian: sudo apt-get install lolcat
# Arch: sudo pacman -S lolcat
# macOS (with BREW): brew install lolcat
FILE=boot.hello
lc=0
while read -r line; do
 ((lc++))
done < $FILE
rnd=$RANDOM
let "rnd %= $lc"
((rnd++))
i=0
while read -r line; do
 ((i++))
 [ $i -eq $rnd ] && break
done < $FILE 
printf '%s\n' "$line $(logname)!" 
echo ""
#Today will be randomized
FILE=boot.wonderful
lc=0
while read -r line; do
 ((lc++))
done < $FILE
rnd=$RANDOM
let "rnd %= $lc"
((rnd++))
i=0
while read -r line; do
 ((i++))
 [ $i -eq $rnd ] && break
done < $FILE 
printf '%s\n' "I feel like $line" | lolcat
#Motivational stuff!
echo ""
FILE=boot.motivation
lc=0
while read -r line; do
 ((lc++))
done < $FILE
rnd=$RANDOM
let "rnd %= $lc"
((rnd++))
i=0
while read -r line; do
 ((i++))
 [ $i -eq $rnd ] && break
done < $FILE 
printf '%s\n' "Remember to $line" 
echo ""
#Cool snapple facts
echo ""
FILE=boot.snapple
lc=0
while read -r line; do
 ((lc++))
done < $FILE
rnd=$RANDOM
let "rnd %= $lc"
((rnd++))
i=0
while read -r line; do
 ((i++))
 [ $i -eq $rnd ] && break
done < $FILE 
echo "and now for a cool snapple fact!"
printf '%s\n' "$line" 
echo ""
echo ":)" | lolcat -a -d 1