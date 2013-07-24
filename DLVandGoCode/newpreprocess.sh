#!/bin/bash
for file in `ls ./$1`
do
   if [ -e ./$1/$file ]
   then
      echo "file: $file"
      cat ./$1/$file | tr -d '\n' | grep -e "<\<[a-zA-Z:]*definitions\>[^<>]*>.*<\/[a-zA-Z:]*\<definitions\>>"
      Condition1=$?
      echo "condition1: $Condition1"
      cat ./$1/$file | tr -d '\n' | grep -e "<\<[a-zA-Z:]*message\>[^<>]*>.*<\/[a-zA-Z:]*\<message\>>"
      Condition2=$?
      echo "condition2: $Condition2"
      cat ./$1/$file | tr -d '\n' | grep -e "<\<[a-zA-Z:]*service\>[^<>]*>.*<\/[a-zA-Z:]*\<service\>>"
      Condition3=$?
      echo "condition3: $Condition3"
      if [ $Condition1 == 0 ] && [ $Condition2 == 0 ] && [ $Condition3 == 0 ]
      then
          sed -i -e 's/encoding=".*"/encoding="UTF-8"/' ./$1/$file
          perl -pi -e's/(<\/[a-zA-Z:]*definitions>)\s*(<QOS>.*<\/QOS>)/$2 $1/' ./$1/$file
      else
          echo "delete file: $file"
          rm -rf ./$1/$file
      fi
   fi
done
