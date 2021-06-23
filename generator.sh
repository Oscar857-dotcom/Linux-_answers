# making directories
for d in {0..9}
do
   mkdir icp"$d"
cd icp"$d"
   touch "$d" file 0.{0..9}.txt
cd ..
done

