#!/usr/bin/env sh
HYPRGAPSMOD=$(hyprctl getoption general:gaps_out| awk 'NR==1{print $3}')
if [ "$HYPRGAPSMOD" != 0 ] ; then
    hyprctl --batch "\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword decoration:rounding 0"
    exit
fi
hyprctl --batch "\
        keyword general:gaps_in 5;\
        keyword general:gaps_out 25;\
        keyword decoration:rounding 3"

