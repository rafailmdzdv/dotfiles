echo " $(sensors | grep 'Package id 0:' | awk '{print $4}')"
