//
//  ViewController.h
//  Unit Conversion
//
//  Created by Gerard Barakat on 5/18/16.
//  Copyright © 2016 Gerard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
{
    
}
@property (weak, nonatomic) IBOutlet UITextField *txtNumber;
@property (weak, nonatomic) IBOutlet UILabel *lblResult;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerUnits;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentType;
@property (nonatomic) NSMutableArray *areaUnits;
@property (nonatomic) NSMutableArray *lenUnits;
@property (nonatomic) NSMutableArray *tempUnits;
- (IBAction)btnTypes:(id)sender;

@end

