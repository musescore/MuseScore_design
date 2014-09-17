#!/bin/bash

./r.rb 16 24 48
sed -i "s/<rect[^>]*height='16'[^>]*fill:none[^>]*>//g" 16/actions/*
