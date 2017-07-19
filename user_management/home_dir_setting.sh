array_name=("jhryu" "ysnoh")

echo "array = ${array_name[@]}"

for index in ${!array_name[*]} ; do                
        mv /home/${array_name[$index]} /mnt/disk1/home/${array_name[$index]}
	ln -s /mnt/disk1/home/${array_name[$index]} /home/${array_name[$index]}
done
