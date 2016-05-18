//
//  Convert.h
//  Unit Conversion
//
//  Created by Gerard Barakat on 5/18/16.
//  Copyright © 2016 Gerard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Convert : NSObject



-(double)convertUnit: (double) number from:(int)formUnit to:(int)toUnit type:(int)typeUnit;

@end
