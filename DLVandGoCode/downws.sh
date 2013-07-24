#!/bin/bash
IFS=','
cat $1 | {
while read Rt Av Th Ss Rr Co Bp La Do ServiceName WSaddr
do
  
   mkdir -p $2

   ServiceName=${ServiceName//\//}  
 
   ServiceName=${ServiceName//\?/}  

   ServiceName=${ServiceName//" "/}  

   wget -O ./$2/${ServiceName}.wsdl --tries=1 --timeout=3 $WSaddr

   QOS="
   <QOS><RT>$Rt</RT><AV>$Av</AV><TH>$Th</TH><SS>$Ss</SS><RR>$Rr</RR><CO>$Co</CO><BP>$Bp</BP><LA>$La</LA><Do>$Do</Do></QOS>"
   echo $QOS >> ./$2/${ServiceName}.wsdl
done 
}
