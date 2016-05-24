//
//  ViewController.m
//  Unit Conversion
//
//  Created by Gerard Barakat on 5/18/16.
//  Copyright © 2016 Gerard. All rights reserved.
//

#import "ViewController.h"
#import "Convert.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _areaUnits = [[NSMutableArray alloc] init];
    [_areaUnits addObject:@"Square kilometre"];
    [_areaUnits addObject:@"Square meter"];
    [_areaUnits addObject:@"Square foot"];
    
    _lenUnits = [[NSMutableArray alloc] init];
    [_lenUnits addObject:@"Meter"];
    [_lenUnits addObject:@"Kilometer"];
    [_lenUnits addObject:@"Mile"];
    [_lenUnits addObject:@"Foot"];
    
    _tempUnits = [[NSMutableArray alloc] init];
    [_tempUnits addObject:@"Celsius"];
    [_tempUnits addObject:@"Fahrenheit"];
    [_tempUnits addObject:@"Kelvin"];
    
    _pickerUnits.delegate = self;
    _pickerUnits.dataSource = self;
    
    _pickerUnits.frame = CGRectMake(0, 200, 320, 200);
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch * touch = [touches anyObject];
    if(touch.phase == UITouchPhaseBegan) {
        [_txtNumber resignFirstResponder];
    }
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    
    if (component == 0)
    {
        if([_segmentType selectedSegmentIndex] == 0)
            return [_areaUnits count];
        else if([_segmentType selectedSegmentIndex] == 1)
            return [_lenUnits count];
        else
            return [_tempUnits count];
    }
    else if (component == 1)
    {
        if([_segmentType selectedSegmentIndex] == 0)
            return [_areaUnits count];
        else if([_segmentType selectedSegmentIndex] == 1)
            return [_lenUnits count];
        else
            return [_tempUnits count];
    }
    return 0;
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(component == 0)
    {
        if([_segmentType selectedSegmentIndex] == 0)
            return [_areaUnits objectAtIndex:row];
        else if([_segmentType selectedSegmentIndex] == 1)
            return [_lenUnits objectAtIndex:row];
        else
            return [_tempUnits objectAtIndex:row];
    }
    else
    {
        if([_segmentType selectedSegmentIndex] == 0)
            return [_areaUnits objectAtIndex:row];
        else if([_segmentType selectedSegmentIndex] == 1)
            return [_lenUnits objectAtIndex:row];
        else
            return [_tempUnits objectAtIndex:row];
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //textField.text = [dataArray objectAtIndex:row];
    Convert *aCon = [[Convert alloc] init];
   
    double res = 0;
    if([_segmentType selectedSegmentIndex] == 0)
        res = [aCon convertArea:(int)[_pickerUnits selectedRowInComponent:0] to: (int)[_pickerUnits selectedRowInComponent:1] val: [_txtNumber.text floatValue]];
    if([_segmentType selectedSegmentIndex] == 1)
        res = [aCon convertLength:(int)[_pickerUnits selectedRowInComponent:0] to: (int)[_pickerUnits selectedRowInComponent:1] val: [_txtNumber.text floatValue]];
    if([_segmentType selectedSegmentIndex] == 2)
        res = [aCon convertTemperature:(int)[_pickerUnits selectedRowInComponent:0] to: (int)[_pickerUnits selectedRowInComponent:1] val: [_txtNumber.text floatValue]];
    
    _lblResult.text = [NSString stringWithFormat:@"%f", res];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnTypes:(id)sender {
    
    [_pickerUnits reloadAllComponents];
}
@end
