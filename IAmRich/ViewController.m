//
//  ViewController.m
//  IAmRich
//
//  Created by Mr.Bi on 8/15/15.
//  Copyright (c) 2015 Mr.Bi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize ruby;
@synthesize iamRich;


- (void)viewDidLoad {
    [super viewDidLoad];
    ruby.alpha = 0;
    iamRich.alpha = 0;
    iamRich.text = @" I am Rich";
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"ruby' s alpha = %1.0f" , ruby.alpha);
    [UIView animateWithDuration:4 animations:^{
        ruby.alpha = 1;
        NSLog(@"ruby 's alpha = %1.0f" ,ruby.alpha);
    }completion:^(BOOL finished){
        [UIView animateWithDuration:3 animations:^{
            iamRich.center = CGPointMake(iamRich.center.x, 360);
            iamRich.alpha = 1;
        } completion:nil];
    }];
}
@end
