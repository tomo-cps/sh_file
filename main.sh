#!/usr/bin/bash
end=63
for i in $(seq 10 $end); do
	cat *.z$i > hoge_$i.zip
	yes | zip -FF hoge_$i.zip --output hoge_00$i.zip
	unzip hoge_00$i.zip
	echo 終了_$i
done
