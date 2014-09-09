#!/bin/bash

#sed -f simplifySVG.sed 16/src.svg
sed -i -f simplifySVG.sed 24/src.svg
sed -f simplifySVG.sed 48/src.svg
./r.rb 16 24 48
