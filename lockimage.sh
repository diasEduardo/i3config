images=();
#var=$(command)
dim=$(xrandr |grep \* |awk '{print $1}')
#echo "${dim}"
for entry in ~/Pictures/lockscreen/${dim}/*.png;
do
  images=( "${images[@]}" "$entry" );

  #echo "${images[@]}"
done

RANGE=${#images[@]}
#echo "$RANGE"
if let "$RANGE > 0 "; then
	number=$RANDOM
	let "number %= $RANGE"
	i3lock -i ${images[$number]} -u -c 000000 -e
else
	i3lock -u -c 000000 -e	
fi