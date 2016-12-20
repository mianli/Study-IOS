//
//  DoubleComponentPickerViewController.m
//  Pickers
//
//  Created by limian on 2016/12/16.
//  Copyright © 2016年 BID. All rights reserved.
//

#import "DoubleComponentPickerViewController.h"

#define kFillingComponent 0
#define kBreadComponent 1

@interface DoubleComponentPickerViewController()<UIPickerViewDelegate, UIPickerViewDataSource>

@end
@implementation DoubleComponentPickerViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.fillingTypes = @[@"Ham", @"Turkey", @"Peanut Butter", @"Tuna Salad", @"Chicken Salad", @"Roast Beef", @"Vegemite"];
    self.breadTypes = @[@"White", @"Whole Wheat", @"Rye", @"Sourdough", @"Seven Grain"];
}

#pragma mark -
#pragma mark picker data source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if(component == kBreadComponent) {
        return [self.breadTypes count];
    }else {
        return [self.fillingTypes count];
    }
}

#pragma mark picker delegate methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if(component == kBreadComponent) {
        return self.breadTypes[row];
    }else{
        return self.fillingTypes[row];
    }
}

- (IBAction)buttonPressed:(id)sender {
    NSInteger fillingRow = [self.doublePicker selectedRowInComponent:kFillingComponent];
    NSInteger breadRow = [self.doublePicker selectedRowInComponent:kBreadComponent];
    NSString* filling = self.fillingTypes[fillingRow];
    NSString* bread = self.breadTypes[breadRow];

    NSString* message = [[NSString alloc] initWithFormat:@"Your %@ on %@ Bread will be right up.", filling, bread];

    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Thank you for your order" message:message delegate:nil cancelButtonTitle:@"Gread!" otherButtonTitles: nil];
    
    [alert show];
}



@end
