//
//  DoubleComponentPickerViewController.h
//  Pickers
//
//  Created by limian on 2016/12/16.
//  Copyright © 2016年 BID. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DoubleComponentPickerViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIPickerView *doublePicker;

@property (strong, nonatomic) NSArray *fillingTypes;
@property (strong, nonatomic) NSArray *breadTypes;


@end
