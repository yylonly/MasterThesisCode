//Computing mean of two number
#include "extpred.h"
#include "stdlib.h"
#include "stdio.h"
#include <string>

using namespace std;

#ifdef __cplusplus
extern "C" {
#endif

// generate new type for composition
BUILTIN(newType,iii)  //base oracle
{
		return true;
}
BUILTIN(newType,iio)  //one, two, result
{
	if( argv[0].isSymbol() && argv[1].isSymbol())
    {
       string first(argv[0].toSymbol());
	   string second(argv[1].toSymbol());
	   
	   if (first.compare(second) == 0)
	   {
	       argv[2] = CONSTANT(first.c_str(), false);
		   return true;
	   }
	   else
	   {
		   int firstservice;
		   int secondservice;

		   if (first.compare("localservice") == 0)
		   {
				firstservice = 2;
		   }
		   else
		   {
				if (first.compare("partnerservice") == 0)
				{
					firstservice = 1;
				}
				else
				{
					if (first.compare("openservice") == 0)
					{
						firstservice = 0;
					}
					else
					{
						firstservice = -1;
					}
				}
		   }
		   
		   if (second.compare("localservice") == 0)
		   {
				secondservice = 2;
		   }
		   else
		   {
				if (second.compare("partnerservice") == 0)
				{
					secondservice = 1;
				}
				else
				{
					if (second.compare("openservice") == 0)
					{
						secondservice = 0;
					}
					else
					{
						secondservice = -1;
					}
				}
		   }
		   
		   if (firstservice != -1 && secondservice != -1)
		   {
		   
			   if (secondservice >= firstservice)
			   {
				   argv[2] = CONSTANT(first.c_str(), false);
				   return true;
			   }
			   else
			   {
				   argv[2] = CONSTANT(second.c_str(), false);
				   return true;
			   }
		    }
			else
			{
			    return false;
	        }
	   }
	}
	else
	{
		return false;
	}
}

//check the type order openservice < partner < localservice is satisfy
BUILTIN(typeOrder,ii)  //base oracle
{
	if(argv[0].isSymbol() && argv[1].isSymbol())
    {
       string first(argv[0].toSymbol());
	   string second(argv[1].toSymbol());
	   
	   if (first.compare(second) == 0)
	   {
		   return true;
	   }
	   else
	   {
		   int firstservice;
		   int secondservice;

		   if (first.compare("localservice") == 0)
		   {
				firstservice = 2;
		   }
		   else
		   {
				if (first.compare("partnerservice") == 0)
				{
					firstservice = 1;
				}
				else
				{
					if (first.compare("openservice") == 0)
					{
						firstservice = 0;
					}
					else
					{
						firstservice = -1;
					}
				}
		   }
		   
		   if (second.compare("localservice") == 0)
		   {
				secondservice = 2;
		   }
		   else
		   {
				if (second.compare("partnerservice") == 0)
				{
					secondservice = 1;
				}
				else
				{
					if (second.compare("openservice") == 0)
					{
						secondservice = 0;
					}
					else
					{
						secondservice = -1;
					}
				}
		   }
		   
		   if (firstservice != -1 && secondservice != -1)
		   {
		   
			   if (firstservice <= secondservice)
			   {
				   return true;
			   }
			   else
			   {
				   return false;
			   }
		    }
			else
			{
			    return false;
	        }
	   }
	}
	else
	{
		return false;
	}
}


BUILTIN(newUrl,ii)  //base oracle
{
		return true;
}
BUILTIN(newUrl,io)  //one, two, result
{
	if( argv[0].isSymbol() || argv[0].isString())
    {
	    string newstring("http://xxxxxx");
	    argv[1] = CONSTANT(newstring.c_str(), true);
        return true;
	}
	else
	{
		return false;
	}
}

BUILTIN(aaaaXXXX,iiiiiiiiiiiiiiiiiiii)  //base oracle
{
	return true;
}



#ifdef __cplusplus
}
#endif