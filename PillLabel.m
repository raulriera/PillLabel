//
//  PillLabel.h
//  Odonto.me
//
//  Created by Raul Riera on 19/06/2014.
//  Copyright (c) 2014 Odonto.me. All rights reserved.
//

#import "PillLabel.h"

@implementation PillLabel

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];

    if (self) {
        [self style];
    }
    return self;
}

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)context
{
    [super drawLayer:layer inContext:context];
    self.layer.cornerRadius = self.cornerRadius;
    self.layer.borderColor = self.borderColor.CGColor;
    self.layer.borderWidth = self.borderWidth;
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines
{
    UIEdgeInsets insets = {self.padding/2, self.padding, self.padding/2, self.padding};
    CGRect rect = [super textRectForBounds:UIEdgeInsetsInsetRect(bounds, insets)
                    limitedToNumberOfLines:numberOfLines];

    rect.origin.x -= insets.left;
    rect.origin.y -= insets.top;
    rect.size.width += (insets.left + insets.right);
    rect.size.height += (insets.top + insets.bottom);

    return rect;
}

- (void)drawTextInRect:(CGRect)rect
{
    UIEdgeInsets insets = {0, self.padding, 0, self.padding};
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}

#pragma mark - Default runtime attributes

- (NSInteger)defaultPadding
{
    return 5;
}

- (NSInteger)defaultCornerRadius
{
    return 4.0f;
}

- (UIColor *)defaultBorderColor
{
    return [UIColor clearColor];
}

- (NSInteger)defaultBorderWidth
{
    return 0.0f;
}

#pragma mark -

- (void)style
{
    self.cornerRadius = [self defaultCornerRadius];
    self.padding = [self defaultPadding];
    self.borderColor = [self defaultBorderColor];
    self.borderWidth = [self defaultBorderWidth];
}

#pragma mark -

- (void)prepareForInterfaceBuilder
{
    [super prepareForInterfaceBuilder];
    [self style];
}

@end
