//
//  ViewController.h
//  testApp
//
//  Created by 河辺雅史 on 2014/05/14.
//  Copyright (c) 2014年 myname. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)upButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *upButton;

- (IBAction)downButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *downButton;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
- (IBAction)resetButton:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *myTextfield;


@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end
