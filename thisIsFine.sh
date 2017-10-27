for ((i=1 ; i<=$(wc -l thisIsFine.txt|awk '{print $1}'); i++)); do
  sed -n ${i}p thisIsFine.txt
  sleep .1
done
