#!/bin/bash
./16/r.rb
./24/r.rb
./48/r.rb
for f in ./*/actions/*.svg;
	echo $f;
done
~/git/svgo/bin/svgo -f ./16/actions
~/git/svgo/bin/svgo -f ./24/actions
~/git/svgo/bin/svgo -f ./48/actions
