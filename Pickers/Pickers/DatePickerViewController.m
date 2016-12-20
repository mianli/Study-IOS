//
//  DatePickerViewController.m
//  Pickers
//
//  Created by limian on 2016/12/16.
//  Copyright © 2016年 BID. All rights reserved.
//

#import "DatePickerViewController.h"

@implementation DatePickerViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    NSDate* date = [NSDate date];
    [_datePicker setDate:date animated:NO];
}

- (IBAction)buttonPressed:(UIButton *)sender {

    
    NSDate* selected = [self.datePicker date];
    NSString* message = [[NSString alloc] initWithFormat:@"The date and time you selected is :%@", selected];
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Date and Time Selected" message:message delegate:nil cancelButtonTitle:@"That's so true"otherButtonTitles:nil];
    [alert show];
}

@end
