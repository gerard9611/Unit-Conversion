//
//  Convert.h
//  Unit Conversion
//
//  Created by Gerard Barakat on 5/18/16.
//  Copyright © 2016 Gerard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Convert : NSObject



-(float) convertArea:(int)fromIndex to:(int) toIndex val:(float) value;

-(float) convertTemperature:(int)fromIndex to:(int) toIndex val:(float) value;

-(float) convertLength:(int)fromIndex to:(int) toIndex val:(float) value;

@end
