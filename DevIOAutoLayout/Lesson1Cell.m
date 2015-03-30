//
//  CustomCell.m
//  AdjustableCellSample
//
//  Created by hiraya.shingo on 2015/03/05.
//  Copyright (c) 2015年 Classmethod, inc. All rights reserved.
//

#import "Lesson1Cell.h"

@interface Lesson1Cell ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end

@implementation Lesson1Cell

- (void)awakeFromNib
{
    self.contentLabel.numberOfLines = 0;
}

- (void)setData:(NSDictionary *)data
{
    _data = data;
    
    self.nameLabel.text = data[@"name"];
    self.dateLabel.text = data[@"date"];
    self.contentLabel.text = data[@"content"];
    
    [self setNeedsLayout];
    [self setNeedsUpdateConstraints];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
        self.contentLabel.preferredMaxLayoutWidth = CGRectGetWidth(self.contentLabel.bounds);
    }
}

+ (CGFloat)heightForRowWithTableView:(UITableView *)tableView
                                data:(NSDictionary *)data
                      cellIdentifier:(NSString *)cellIdentifier
{
    static Lesson1Cell *sizingCell = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sizingCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    });
    
    sizingCell.data = data;
    
    [sizingCell setNeedsLayout];
    [sizingCell layoutIfNeeded];
    
    CGSize size = [sizingCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    
    return size.height + 1.0f;
}

@end
