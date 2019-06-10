#!/bin/bash

cd ../data/1-pushshift_slim

ls RS_* | while read line; do printf "$line "; rem=$(grep 'True$' $line | wc -l) tot=$(wc -l < $line); printf "$rem/$tot = "; echo "scale=6; $rem/$tot" | bc; done

# RESULT:

# RS_2017-08.csv 8705673/10410481 = .836241
# RS_2017-09.csv 8169141/9774383 = .835770
# RS_2017-10.csv 8568368/10266494 = .834595
# RS_2017-11.csv 8761471/10364106 = .845366
# RS_2017-12.csv 8921640/10557875 = .845022
# RS_2018-01.csv 9464771/11306844 = .837083
# RS_2018-02.csv 8891351/10567232 = .841407
# RS_2018-03.csv 10226571/12022695 = .850605
# RS_2018-04.csv 9695161/11997151 = .808121
# RS_2018-05.csv 9947922/12079653 = .823527

## data above not usable, is_crosspostable is not a proxy for is_removed
## usable data below

# RS_2018-06.csv 1996504/11904499 = .167710
# RS_2018-07.csv 2400649/13305763 = .180421
# RS_2018-08.csv 2463039/13408256 = .183695
# RS_2018-09.csv 2544362/13107216 = .194119
# RS_2018-10.csv 2543416/13975029 = .181997
# RS_2018-11.csv 2533970/13862156 = .182797
# RS_2018-12.csv 2607615/14894453 = .175072
# RS_2019-01.csv 2829970/16445392 = .172082
# RS_2019-02.csv 2652000/15743621 = .168449

