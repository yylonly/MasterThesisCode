//////////////////////////////////////////////////////////////////////////////
//Shared Library for the external builtin #fatt
//fatt_builtin.C
#include "extpred.h"
#ifdef __cplusplus
extern "C" {
#endif
BUILTIN(fatt,ii)
{
if( argv[0].isInt() && argv[1].isInt() )
            {
            // Convert the CONSTANT data to what we do have to compute
int x= argv[0].toInt();
int y= argv[1].toInt();   
            // Just perform the computation...
int fatt=1;
for(int i = 1; i <= x; i++)
fatt=fatt*i;
if( fatt == y)
return true;
}
      return false;
}
BUILTIN(fatt,io)
{
if( argv[0].isInt() )
            {
            // Convert the CONSTANT data to what we do have to compute
int x = argv[0].toInt();
// Just perform the computation...
int fatt = 1;
for(int i = 1; i <= x; i++)
            fatt=fatt*i;
// Convert the result into the proper CONSTANT data
// Save the result onto the output vector
            argv[1] = CONSTANT( fatt );
            return true;
            }
return false;
}
BUILTIN(fatt,oi)
// NOTE: The oracle has sense only for x>=2.
{
if( argv[1].isInt() && argv[1].toInt() >= 2 )
            {
// Convert the CONSTANT data to what we do have to compute
int x = argv[1].toInt();
// Just perform the computation...
            int fatt = 1;
for(int i = 1; fatt <= x; i++)
                  {
fatt = fatt*i;
if( fatt == x )
                        {
                        // Convert the result into
// the proper CONSTANT data.
// Save the result onto the output vector
argv[0] = CONSTANT(i);
return true;
                        }
                  }
            } 
return false;
}
#ifdef __cplusplus
}
#endif