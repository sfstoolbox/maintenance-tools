#!/usr/bin/gnuplot
#
# Plot logo for github organisation page.
#
# This produces two different version, whereby one is more or less identical to
# the original logo (the loudspeakers are shaped slightly different)
#
# AUTHOR: Hagen Wierstorf
# gnuplot 5.0 patchlevel 3

reset

# png
set terminal pngcairo size 200,200 enhanced font 'Verdana,10'
set output 'sfs1.png'

set xrange [-2:2]
set yrange [-2:2]

unset key
unset colorbox
set border 0
unset tics
set lmargin 0
set rmargin 0
set tmargin 0
set bmargin 0
set size ratio -1

set palette gray
set palette negative
set cbrange [-1:1]
call 'gp_draw_loudspeakers.gnu' 'array.txt' '0.15'
plot 'sfs1.dat' binary matrix w image

set output 'sfs2.png'
unset object
set palette defined (0 '#18bc9c', 1 '#ffffff')
set palette negative
set cbrange [-0.1:0.1]
plot 'sfs2.dat' binary matrix w image
