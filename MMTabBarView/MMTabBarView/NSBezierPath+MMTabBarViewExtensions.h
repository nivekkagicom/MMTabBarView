//
//  NSBezierPath+MMTabBarViewExtensions.h
//  MMTabBarView
//
//  Created by Michael Monscheuer on 9/26/12.
//  Copyright (c) 2016 Michael Monscheuer. All rights reserved.
//

#if __has_feature(modules)
@import Cocoa;
#else
#import <Cocoa/Cocoa.h>
#endif

NS_ASSUME_NONNULL_BEGIN

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wc++98-compat"
typedef NS_ENUM(NSUInteger, MMBezierShapeCapMask)
{
    MMBezierShapeLeftCap           = 0x0001,
    MMBezierShapeRightCap          = 0x0002,
    
    MMBezierShapeAllCaps           = 0x000F,
    
    MMBezierShapeFlippedVertically = 0x1000,
    MMBezierShapeFillPath          = 0x2000
};
#pragma clang diagnostic pop

@interface NSBezierPath (MMTabBarViewExtensions)

+ (NSBezierPath *)bezierPathWithCardInRect:(NSRect)aRect radius:(CGFloat)radius capMask:(MMBezierShapeCapMask)mask;

+ (NSBezierPath *)bezierPathWithRoundedRect:(NSRect)aRect radius:(CGFloat)radius capMask:(MMBezierShapeCapMask)mask;

@end

NS_ASSUME_NONNULL_END
