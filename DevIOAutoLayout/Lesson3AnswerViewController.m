//
//  Lesson3AnswerViewController.m
//  DevIOAutoLayout
//
//  Created by hiraya.shingo on 2015/03/19.
//  Copyright (c) 2015年 Classmethod, inc. All rights reserved.
//

#import "Lesson3AnswerViewController.h"

@interface Lesson3AnswerViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *menuViewTrailingSpeceConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *menuViewWidthConstraint;

@end

@implementation Lesson3AnswerViewController

- (IBAction)menuButtonDidTap:(id)sender
{
    if (self.menuViewTrailingSpeceConstraint.constant == 0) {
        self.menuViewTrailingSpeceConstraint.constant = -self.menuViewWidthConstraint.constant;
    } else {
        self.menuViewTrailingSpeceConstraint.constant = 0;
    }
    
    [UIView animateWithDuration:0.2 delay:0.0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        [self.view layoutIfNeeded];
    } completion:nil];
}

@end
