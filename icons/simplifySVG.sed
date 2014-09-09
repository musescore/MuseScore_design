#text
s/-inkscape-font-specification:[a-zA-Z0-9]*[ ]*[;\ ]//g
s/-inkscape-font-specification:[a-zA-Z0-9]*\"/\"/g
s/-inkscape-font-specification:[a-zA-Z0-9]*'/'/g
s/baseline-shift:[a-z]*[ ]*[;\ ]//g
s/block-progression:[a-z]*[ ]*[;\ ]//g
s/color:#[a-z0-9]*[ ]*[;\ ]//g
s/direction:[a-z]*[ ]*[;\ ]//g
s/font-family:[a-zA-Z0-9]*[ ]*[;\ ]//g
s/font-family:[a-zA-Z0-9]*[ ]*\"/\"/g
s/font-family:[a-zA-Z0-9]*[ ]*\'/\'/g
s/font-size:[0-9\.a-z]*[ ]*[;\ ]//g
s/font-stretch:[a-z]*[ ]*[;\ ]//g
s/font-style:[a-z]*[ ]*[;\ ]//g
s/font-variant:[a-z]*[ ]*[;\ ]//g
s/font-weight:[0-9a-z]*[ ]*[;\ ]//g
s/letter-spacing:[a-z]*[ ]*[;\ ]//g
s/line-height:[0-9a-z%]*[ ]*[;\ ]//g
s/text-align:[a-z]*[ ]*[;\ ]//g
s/text-anchor:[a-z]*[ ]*[;\ ]//g
s/text-decoration:[a-z]*[ ]*[;\ ]//g
s/text-indent:[0-9a-z]*[ ]*[;\ ]//g
s/text-transform:[a-z]*[ ]*[;\ ]//g
s/word-spacing:[a-z]*[ ]*[;\ ]//g
s/writing-mode:[a-z\-]*[ ]*[;\ ]//g

#misc
s/display:[a-z]*[ ]*[;\ ]//g
s/inkscape:connector-curvature=[\"0-9]*//g
s/stroke:none;stroke-width:[0-9];//g
s/stroke:none//g
s/fill-opacity:1;//g
s/overflow:[a-z]*[ ]*[;\ ]//g
s/marker:none;//g
s/visibility:visible;//g
s/enable-background:accumulate;//g
s/<!--.*-->//g
s/<g[^>]*>//g
s/<\/g>//g
