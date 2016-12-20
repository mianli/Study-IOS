//
//  SingleComponentPickerViewController.m
//  Pickers
//
//  Created by limian on 2016/12/16.
//  Copyright © 2016年 BID. All rights reserved.
//

#import "SingleComponentPickerViewController.h"

@interface SingleComponentPickerViewController()
    <UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIPickerView *singlePicker;

@property (strong, nonatomic) NSArray* characterNames;

@end

@implementation SingleComponentPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _characterNames = @[@"Luke", @"Leia", @"Chewbacca", @"Artoo", @"Threepio", @"Lando"];
}

- (IBAction)buttonPressed:(id)sender {
    
    NSInteger row = [_singlePicker selectedRowInComponent:0];
    NSString* selected = _characterNames[row];
    NSString* title = [[NSString alloc] initWithFormat:@"You selected %@", selected];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:@"Thank you for choosing." delegate:nil cancelButtonTitle:@"You're welcome" otherButtonTitles:nil];
    
    [alert show];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return _characterNames.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return _characterNames[row];
}

@end
