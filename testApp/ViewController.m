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
}

@end

@implementation ViewController
@synthesize myLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    count = 0;
    myLabel.text = [NSString stringWithFormat:@"%d", count];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)downButton:(id)sender {
    count--;
    
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
@end
