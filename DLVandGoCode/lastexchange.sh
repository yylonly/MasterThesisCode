#!/bin/sh
for file in `ls $1`
do 
   perl -pi -e's/\r\n//g' $1/$file
   perl -pi -e's/\n//g' $1/$file
#   perl -pi -e's/(<[a-zA-Z:]*part[^<>]*)element(="[a-zA-Z:]+"\s*\/>)/$1type$2/g' $1/$file
# perl -pi -e's/(<[a-zA-Z:]*part[^<>]*)element(="[a-zA-Z:]+")/$1type$2/g' $1/$file
 perl -pi -e's/(<[a-zA-Z:]*part[^<>]*)element(="[^<]+")/$1type$2/g' $1/$file
   perl -pi -e's/(<\/[a-zA-Z:]*definitions>)\s*(<QOS>.*<\/QOS>)/$2$1/' $1/$file
   perl -pi -e's/<\?xml version = "1.0"\?>/<\?xml version = "1.0" enconding = "UTF-8"\?>/' $1/$file
done
