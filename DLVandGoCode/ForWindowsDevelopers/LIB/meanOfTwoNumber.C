//Computing mean of two number
#include "extpred.h"
#include "stdlib.h"
#include "stdio.h"

#ifdef __cplusplus
extern "C" {
#endif
BUILTIN(mean,iii)  //base oracle
{
		return true;
}
BUILTIN(mean,iio)  //one, two, result
{
	if( argv[0].isString() && argv[1].isString())
    {
        double result = atof(argv[0].toString()) + atof(argv[1].toString()) / 2;
	    char r[20];
	    sprintf(r, "%.2f", result);
		argv[2] = CONSTANT(r, true);
		return true;
	}
	else
	{
		return false;
	}
}
#ifdef __cplusplus
}
#endif