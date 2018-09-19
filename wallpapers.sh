images=();
t=$1;
let "t=t*60";
for entry in ~/Pictures/wallpapers/*;
do
  images=( "${images[@]}" "$entry" );

  #echo "${images[@]}"
done
while true;
do
RANGE=${#images[@]}
number=$RANDOM
let "number %= $RANGE"
feh --bg-scale ${images[$number]}
sleep $t
done