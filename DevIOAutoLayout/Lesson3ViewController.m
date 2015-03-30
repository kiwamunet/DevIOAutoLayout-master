//
//  Lesson3ViewController.m
//  DevIOAutoLayout
//
//  Created by hiraya.shingo on 2015/03/19.
//  Copyright (c) 2015年 Classmethod, inc. All rights reserved.
//

#import "Lesson3ViewController.h"

@interface Lesson3ViewController ()

@property (weak, nonatomic) IBOutlet UIView *menuView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *muneViewRightMargin;

@end

@implementation Lesson3ViewController

- (IBAction)menuButtonDidTap:(id)sender
{
//    self.menuView.hidden = !self.menuView.hidden;
    
    self.muneViewRightMargin.constant = 0;
    
    [UIView animateWithDuration:1.2 animations:^{
        [self.view layoutIfNeeded];
//        [self.view setNeedsDisplay];
//        self.muneViewRightMargin.constant = 0;
    }];
    
    
    

}

@end
