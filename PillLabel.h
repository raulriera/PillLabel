//
//  PillLabel.h
//  Odonto.me
//
//  Created by Raul Riera on 19/06/2014.
//  Copyright (c) 2014 Odonto.me. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface PillLabel : UILabel

@property (nonatomic) IBInspectable NSInteger cornerRadius;
@property (nonatomic) IBInspectable NSInteger padding;
@property (nonatomic) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable NSInteger borderWidth;

@end
