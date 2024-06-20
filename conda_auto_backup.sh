for env in $(conda env list | cut -d" " -f1); do 
   if [[ ${env:0:1} == "#" ]] ; then continue; fi;
   echo "Exporting $env..."
   conda env export -n $env > ${env}.yml
done

git add .
git commit -m "Auto environment backup"
git push