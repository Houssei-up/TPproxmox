IMAGE_ID=$(pveam list local | grep debian | cut -d" " -f1)
CURRENT_ID=$(((100+$(pct list | wc -l))-1))
