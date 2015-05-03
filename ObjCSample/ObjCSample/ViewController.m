//
//  ViewController.m
//  ObjCSample
//
//  Created by Panaswift Teachers on 03/05/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (int) printNumber: (int) firstVal;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *randomString = @"This is a string!";
    int randomInt = 13;
    
    [[self view]setBackgroundColor:[UIColor blueColor]];
}

- (int) printNumber:(int)intVal {
    NSLog(@"%d", intVal);
    return intVal + 1;
}


@end
