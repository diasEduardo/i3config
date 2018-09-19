images=();
for entry in ~/Pictures/lockscreen/*.png;
do
  images=( "${images[@]}" "$entry" );

  #echo "${images[@]}"
done

RANGE=${#images[@]}
number=$RANDOM
let "number %= $RANGE"
i3lock -i ${images[$number]} -u -c 000000 -e