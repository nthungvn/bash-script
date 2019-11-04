
max=5
for i in `seq 2 $max`
echo "Will run $max tests"
do
	echo "Test $i"
    wget -qO - https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -
done
