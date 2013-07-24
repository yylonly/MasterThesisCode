//Computing mean of two number
#include "extpred.h"
#include "stdlib.h"
#include "stdio.h"
#include "math.h"

#ifdef __cplusplus
extern "C" {
#endif
BUILTIN(costXX,iiiiiiiiiiiiiii)  //base oracle
{
	
		return true;
}
BUILTIN(costXX,iiiiiiiiiiiiiio)  //one, two, result
{
   
	if( argv[0].isString() && argv[1].isString() && argv[2].isString() && argv[3].isString() && argv[4].isString() && argv[5].isString() && argv[6].isSymbol()
	 && argv[7].isString() && argv[8].isString() && argv[9].isString() && argv[10].isString() && argv[11].isString() && argv[12].isString() && argv[13].isSymbol())
	//  && argv[14].isString() && argv[15].isString() && argv[16].isString() && argv[17].isString() && argv[18].isString() && argv[19].isString() && argv[20].isString())
    {
	   
		
	    double RT1 = atof(argv[0].toString());
		double AV1 = atof(argv[1].toString());
		double TH1 = atof(argv[2].toString());
		double RE1 = atof(argv[3].toString());
		double prise1 = atof(argv[4].toString());
		double RA1 = atof(argv[5].toString());
	
		
		double RT2 = atof(argv[7].toString());
		double AV2 = atof(argv[8].toString());
		double TH2 = atof(argv[9].toString());
		double RE2 = atof(argv[10].toString());
		double prise2 = atof(argv[11].toString());
		double RA2 = atof(argv[12].toString());
		
	//	double w1 = atof(argv[14].toString());
	//	double w2 = atof(argv[15].toString());
	//	double w3 = atof(argv[16].toString());
	//	double w4 = atof(argv[17].toString());
	//	double w5 = atof(argv[18].toString());
	//	double w6 = atof(argv[19].toString());
	//	double w7 = atof(argv[20].toString());

		
	   string first(argv[6].toSymbol());
	   string second(argv[13].toSymbol());
	   
	   double result = 0;
	   
	   if (first.compare(second) == 0)
	   {
	       result = 0;
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
			     result = firstservice - secondservice;
		    }
			else
			{
			    return false;
	        }
	   }
		
		
 //       double cost = sqrt(w1 * pow((RT1 - RT2), 2) + w2 * pow((AV1 - AV2), 2) + w3 * pow((TH1 - TH2), 2) + 
//		    w4 * pow((RE1 - RE2), 2) + w5 * pow((prise1 - prise2), 2) + w6 * pow((RA1 - RA2), 2) + w7 * result);
			
		
		double cost = sqrt(pow((RT1 - RT2), 2) +  pow((AV1 - AV2), 2) +  pow((TH1 - TH2), 2) + 
		    pow((RE1 - RE2), 2) + pow((prise1 - prise2), 2) +  pow((RA1 - RA2), 2) +  pow(result, 2));	
			
	
	    char r[20];
	    sprintf(r, "%.4f", cost);
	//	argv[21] = CONSTANT(r, true);
		argv[14] = CONSTANT(r, true);
		return true;
	}
	else
	{
		return false;
	}
 }
 BUILTIN(costYY,iiiiiiiiiiiiiiiiiiiiii)  //base oracle
{
	
		return true;
}
 BUILTIN(costYY,iiiiiiiiiiiiiiiiiiiiio)  //one, two, result
{
   
	if( argv[0].isString() && argv[1].isString() && argv[2].isString() && argv[3].isString() && argv[4].isString() && argv[5].isString() && argv[6].isSymbol()
	 && argv[7].isString() && argv[8].isString() && argv[9].isString() && argv[10].isString() && argv[11].isString() && argv[12].isString() && argv[13].isSymbol()
	 && argv[7].isString() && argv[8].isString() && argv[9].isString() && argv[10].isString() && argv[11].isString() && argv[12].isString() && argv[13].isSymbol()
	  && argv[14].isString() && argv[15].isString() && argv[16].isString() && argv[17].isString() && argv[18].isString() && argv[19].isString() && argv[20].isString())
    {
	   
		
	    double RT1 = atof(argv[0].toString());
		double AV1 = atof(argv[1].toString());
		double TH1 = atof(argv[2].toString());
		double RE1 = atof(argv[3].toString());
		double prise1 = atof(argv[4].toString());
		double RA1 = atof(argv[5].toString());
	
		
		double RT2 = atof(argv[7].toString());
		double AV2 = atof(argv[8].toString());
		double TH2 = atof(argv[9].toString());
		double RE2 = atof(argv[10].toString());
		double prise2 = atof(argv[11].toString());
		double RA2 = atof(argv[12].toString());
		
		double w1 = atof(argv[14].toString());
		double w2 = atof(argv[15].toString());
		double w3 = atof(argv[16].toString());
		double w4 = atof(argv[17].toString());
		double w5 = atof(argv[18].toString());
		double w6 = atof(argv[19].toString());
		double w7 = atof(argv[20].toString());

		
	   string first(argv[6].toSymbol());
	   string second(argv[13].toSymbol());
	   
	   double result = 0;
	   
	   if (first.compare(second) == 0)
	   {
	       result = 0;
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
			     result = firstservice - secondservice;
		    }
			else
			{
			    return false;
	        }
	   }
		
		
        double cost = sqrt(w1 * pow((RT1 - RT2), 2) + w2 * pow((AV1 - AV2), 2) + w3 * pow((TH1 - TH2), 2) + 
		    w4 * pow((RE1 - RE2), 2) + w5 * pow((prise1 - prise2), 2) + w6 * pow((RA1 - RA2), 2) + w7 * pow(result, 2));
			
		
	//	double cost = sqrt(pow((RT1 - RT2), 2) +  pow((AV1 - AV2), 2) +  pow((TH1 - TH2), 2) + 
	//	    pow((RE1 - RE2), 2) + pow((prise1 - prise2), 2) +  pow((RA1 - RA2), 2) +  pow(result, 2));	
			
	   
	    char r[20];
	    sprintf(r, "%.4f", cost);
		argv[21] = CONSTANT(r, true);
	//	argv[14] = CONSTANT(r, true);
		return true;
	}
	else
	{
		return false;
	}
}

BUILTIN(costZZ,iiiiiiiiiiiiiii)  //base oracle
{
	
		return true;
}
BUILTIN(costZZ,iiiiiiiiiiiiiio)  //one, two, result
{
   
	if( argv[0].isString() && argv[1].isString() && argv[2].isString() && argv[3].isString() && argv[4].isString() && argv[5].isString() && argv[6].isSymbol()
	 && argv[7].isString() && argv[8].isString() && argv[9].isString() && argv[10].isString() && argv[11].isString() && argv[12].isString() && argv[13].isSymbol())
	//  && argv[14].isString() && argv[15].isString() && argv[16].isString() && argv[17].isString() && argv[18].isString() && argv[19].isString() && argv[20].isString())
    {
	   
		
	    double RT1 = atof(argv[0].toString());
		double AV1 = atof(argv[1].toString());
		double TH1 = atof(argv[2].toString());
		double RE1 = atof(argv[3].toString());
		double prise1 = atof(argv[4].toString());
		double RA1 = atof(argv[5].toString());
	
		
		double RT2 = atof(argv[7].toString());
		double AV2 = atof(argv[8].toString());
		double TH2 = atof(argv[9].toString());
		double RE2 = atof(argv[10].toString());
		double prise2 = atof(argv[11].toString());
		double RA2 = atof(argv[12].toString());
		
	//	double w1 = atof(argv[14].toString());
	//	double w2 = atof(argv[15].toString());
	//	double w3 = atof(argv[16].toString());
	//	double w4 = atof(argv[17].toString());
	//	double w5 = atof(argv[18].toString());
	//	double w6 = atof(argv[19].toString());
	//	double w7 = atof(argv[20].toString());

		
	   string first(argv[6].toSymbol());
	   string second(argv[13].toSymbol());
	   
	   double result = 0;
	   
	   if (first.compare(second) == 0)
	   {
	       result = 0;
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
			     result = firstservice - secondservice;
		    }
			else
			{
			    return false;
	        }
	   }
		
		
 //       double cost = sqrt(w1 * pow((RT1 - RT2), 2) + w2 * pow((AV1 - AV2), 2) + w3 * pow((TH1 - TH2), 2) + 
//		    w4 * pow((RE1 - RE2), 2) + w5 * pow((prise1 - prise2), 2) + w6 * pow((RA1 - RA2), 2) + w7 * result);
			
		
		double cost = sqrt(pow((RT1 - RT2), 2) +  pow((AV1 - AV2), 2) +  pow((TH1 - TH2), 2) + 
		    pow((RE1 - RE2), 2) + pow((prise1 - prise2), 2) +  pow((RA1 - RA2), 2) +  pow(result, 2));	
			
	
	    int rs = (int) cost;
	//	argv[21] = CONSTANT(r, true);
		argv[14] = CONSTANT(rs);
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