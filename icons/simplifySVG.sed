#text
s/-inkscape-font-specification:[a-zA-Z0-9]*[ ]*//g
s/baseline-shift:[a-z]*[ ]*//g
s/block-progression:[a-z]*[ ]*//g
s/color:[#0-9a-z]*[ ]*//g
s/direction:[a-z]*[ ]*//g
s/font-family:[a-zA-Z0-9]*[ ]*//g
s/font-size:[0-9\.a-z]*[ ]*//g
s/font-stretch:[0-9a-z]*[ ]*//g
s/font-style:[a-z]*[ ]*//g
s/font-variant:[a-z]*[ ]*//g
s/font-weight:[0-9a-z]*[ ]*//g
s/letter-spacing:[0-9a-z]*[ ]*//g
s/line-height:[0-9a-z%]*[ ]*//g
s/text-align:[a-z]*[ ]*//g
s/text-anchor:[a-z]*[ ]*//g
s/text-decoration:[a-z]*[ ]*//g
s/text-indent:[0-9a-z]*[ ]*//g
s/text-transform:[a-z]*[ ]*//g
s/word-spacing:[0-9a-z]*[ ]*//g
s/writing-mode:[a-z\-]*[ ]*//g

#misc
s/display:[a-z]*[ ]*//g
s/inkscape:connector-curvature=[\"'0-9]*//g
s/stroke:nonestroke-width:[0-9]//g
s/stroke:none//g
s/fill-opacity:1//g
s/overflow:[a-z]*[ ]*//g
s/marker:none//g
s/visibility:visible//g
s/enable-background:accumulate//g
s/<!--.*-->//g
s/rx='0'//g
s/rx="0"//g
s/ry='0'//g
s/ry="0"//g
s/id=[\"'][^ ]*[\"'][ ]*//g
s/xmlns:[^ ]*//g
s/standalone='no'//g
s/<title[^<]*<\/title>//g
s/<defs.*<\/defs>//g
s/<?xml version='1.0'[^>]*>/<?xml version='1.0'?>/g

#finishing cleanup
s/style=''//g
s/  */ /g
s/;;*/;/g
s/;'/'/g
s/;"/"/g
s/';/'/g
s/";/"/g
s/>[ ]*</></g
