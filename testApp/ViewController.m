//
//  ViewController.m
//  testApp
//
//  Created by 河辺雅史 on 2014/05/14.
//  Copyright (c) 2014年 myname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    int count;
    int textFieldNumber;
    BOOL isTextFieldNumberSeted;
}
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;

@end

@implementation ViewController
@synthesize myLabel,upButton,downButton,resetButton,myTextfield;

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    myTextfield.delegate = self;
    
    count = 0;
    textFieldNumber = 0;
    isTextFieldNumberSeted = NO;
    
    [self.upButton setTitle:@"up" forState:UIControlStateNormal];
    [self.downButton setTitle:@"down" forState:UIControlStateNormal];
    [self.resetButton setTitle:@"reset" forState:UIControlStateNormal];

    
    myLabel.text = [NSString stringWithFormat:@"%d", count];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)upButton:(id)sender {
    if(isTextFieldNumberSeted){
        count = count + textFieldNumber;
    }else{
        count++;
    }
    
    myLabel.text = [NSString stringWithFormat:@"%d", count];
    
}

- (IBAction)downButton:(id)sender {
    if(isTextFieldNumberSeted){
        count = count - textFieldNumber;
    }else{
        count--;
    }
    
    if(count < 0){
        count = 0;
    }else{
        myLabel.text = [NSString stringWithFormat:@"%d", count];
    }
}

- (IBAction)resetButton:(id)sender {
    count = 0;
    myLabel.text = [NSString stringWithFormat:@"%d", count];
}

- (IBAction)myTextfield:(id)sender {
}
- (IBAction)mySwitch:(UISwitch *)sender {
    // ここを書きました 仲松
    if (self.mySwitch.on != YES) {
        [self.upButton setEnabled:NO];
        [self.downButton setEnabled:NO];
        [self.resetButton setEnabled:NO];
    }else {
        self.upButton.enabled = YES;
        self.downButton.enabled = YES;
        self.resetButton.enabled = YES;
    }
}

-(BOOL)textFieldShouldReturn:(UITextField*)textField{
    [textField resignFirstResponder];
    textFieldNumber = [textField.text intValue];
    
    if(textField.text.length > 0) {
        isTextFieldNumberSeted = YES;
    }else{
        isTextFieldNumberSeted = NO;
    }
    
    return YES;
}
@end
