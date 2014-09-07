#!/bin/bash
./16/r.rb
./24/r.rb
./48/r.rb

sed -i 's/inkscape:connector-curvature="0"//g' ./16/actions/*
sed -i 's/inkscape:connector-curvature="0"//g' ./24/actions/*
sed -i 's/inkscape:connector-curvature="0"//g' ./48/actions/*

~/git/svgo/bin/svgo -f ./16/actions
~/git/svgo/bin/svgo -f ./24/actions
~/git/svgo/bin/svgo -f ./48/actions
