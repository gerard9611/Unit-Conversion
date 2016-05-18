//
//  Convert.m
//  Unit Conversion
//
//  Created by Gerard Barakat on 5/18/16.
//  Copyright © 2016 Gerard. All rights reserved.
//

#import "Convert.h"

@implementation Convert


-(double)convertUnit: (double) number from:(int)formUnit to:(int)toUnit type:(int)typeUnit
{
    if(typeUnit == 0)//Area
    {
        //0 KM - 1 Meter - 2 Foot
        if((formUnit == 0 && toUnit == 0) || (formUnit == 1 && toUnit == 1) || (formUnit == 2 && toUnit == 2))
            return number;
        else if(formUnit == 0 && toUnit == 1)
            return number*1000;
        else if(formUnit == 0 && toUnit == 2)
            return number*3280.8;
        else if(formUnit == 1 && toUnit == 0)
            return number/1000;
        else if(formUnit == 1 && toUnit == 2)
            return (number/1000)*3280.8;
        else if(formUnit == 2 && toUnit == 0)
            return number/3280.8;
        else //if(formUnit == 2 && toUnit == 1)
            return (number/3280.8)/1000;
    }
    else if(typeUnit == 1)//Length
    {
        //0 Meter - 1 KM - 2 Mile - 3 Foot
        if((formUnit == 0 && toUnit == 0) || (formUnit == 1 && toUnit == 1) || (formUnit == 2 && toUnit == 2) || (formUnit == 3 && toUnit == 3))
            return number;
        else if(formUnit == 0 && toUnit == 1)
            return number/1000;
        else if(formUnit == 0 && toUnit == 2)
            return number*0.00062137;
        else if(formUnit == 0 && toUnit == 3)
            return number/1000*3280.8;
        else if(formUnit == 1 && toUnit == 0)
            return number*1000;
        else if(formUnit == 1 && toUnit == 2)
            return number*1000*0.00062137;
        else if(formUnit == 1 && toUnit == 3)
            return number*3280.8;
        else if(formUnit == 2 && toUnit == 0)
            return number/0.00062137;
        else if(formUnit == 2 && toUnit == 1)
            return (number/0.00062137)/0.00062137;
        else if(formUnit == 2 && toUnit == 3)
            return ((number/0.00062137)/1000)*3280.8;
//        else if(formUnit == 3 && toUnit == 0)
//            return number/
        
        else
            return 0;
    }
    else//Temperature
    {
        if((formUnit == 0 && toUnit == 0) || (formUnit == 1 && toUnit == 1) || (formUnit == 2 && toUnit == 2))
            return number;
        else
            return 0;
    }
    //return 0;
}
@end
