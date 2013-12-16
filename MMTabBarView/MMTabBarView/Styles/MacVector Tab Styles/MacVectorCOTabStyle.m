//
//  MacVectorCOTabStyle.m
//  MMTabBarView
//
//  Created by B. Kevin Hardman on 12/16/13.
//  Copyright (c) 2013 Michael Monscheuer. All rights reserved.
//

#import "MacVectorCOTabStyle.h"

@implementation MacVectorCOTabStyle

StaticImage(MVCOAWATClose)
StaticImage(MVCOAWATClosePressed)
StaticImage(MVCOAWATCloseRollover)
StaticImage(MVCOAWITClose)
StaticImage(MVCOAWITClosePressed)
StaticImage(MVCOAWITCloseRollover)
StaticImage(MVCOIWATClose)
StaticImage(MVCOIWATClosePressed)
StaticImage(MVCOIWATCloseRollover)
StaticImage(MVCOIWITClose)
StaticImage(MVCOIWITClosePressed)
StaticImage(MVCOIWITCloseRollover)
StaticImage(MVCOAWAddTabButton)
StaticImage(MVCOAWAddTabButtonPushed)
StaticImage(MVCOAWAddTabButtonRolloverPlus)
StaticImage(MVCOAWATBG)
StaticImage(MVCOAWATFill)
StaticImage(MVCOAWATLeftCap)
StaticImage(MVCOAWATRightCap)
StaticImage(MVCOAWBG)
StaticImage(MVCOAWITLeftCap)
StaticImage(MVCOAWITRightCap)
StaticImage(MVCOIWATBG)
StaticImage(MVCOIWATFill)
StaticImage(MVCOIWATLeftCap)
StaticImage(MVCOIWATRightCap)
StaticImage(MVCOIWBG)
StaticImage(MVCOIWITLeftCap)
StaticImage(MVCOIWITRightCap)

+ (NSString *)name {
    return @"MacVectorCO";
}

- (NSImage*) imageForTag:(NSInteger) inTag {
	switch (inTag) {
		case kAWATClose:
			return _staticMVCOAWATCloseImage();
		case kAWATClosePressed:
			return _staticMVCOAWATClosePressedImage();
		case kAWATCloseRollover:
			return _staticMVCOAWATCloseRolloverImage();
		case kAWITClose:
			return _staticMVCOAWITCloseImage();
		case kAWITClosePressed:
			return _staticMVCOAWITClosePressedImage();
		case kAWITCloseRollover:
			return _staticMVCOAWITCloseRolloverImage();
		case kIWATClose:
			return _staticMVCOIWATCloseImage();
		case kIWATClosePressed:
			return _staticMVCOIWATClosePressedImage();
		case kIWATCloseRollover:
			return _staticMVCOIWATCloseRolloverImage();
		case kIWITClose:
			return _staticMVCOIWITCloseImage();
		case kIWITClosePressed:
			return _staticMVCOIWITClosePressedImage();
		case kIWITCloseRollover:
			return _staticMVCOIWITCloseRolloverImage();
		case kAWAddTabButton:
			return _staticMVCOAWAddTabButtonImage();
		case kAWAddTabButtonPushed:
			return _staticMVCOAWAddTabButtonPushedImage();
		case kAWAddTabButtonRolloverPlus:
			return _staticMVCOAWAddTabButtonRolloverPlusImage();
		case kAWATBG:
			return _staticMVCOAWATBGImage();
		case kAWATFill:
			return _staticMVCOAWATFillImage();
		case kAWATLeftCap:
			return _staticMVCOAWATLeftCapImage();
		case kAWATRightCap:
			return _staticMVCOAWATRightCapImage();
		case kAWBG:
			return _staticMVCOAWBGImage();
		case kAWITLeftCap:
			return _staticMVCOAWITLeftCapImage();
		case kAWITRightCap:
			return _staticMVCOAWITRightCapImage();
		case kIWATBG:
			return _staticMVCOIWATBGImage();
		case kIWATFill:
			return _staticMVCOIWATFillImage();
		case kIWATLeftCap:
			return _staticMVCOIWATLeftCapImage();
		case kIWATRightCap:
			return _staticMVCOIWATRightCapImage();
		case kIWBG:
			return _staticMVCOIWBGImage();
		case kIWITLeftCap:
			return _staticMVCOIWITLeftCapImage();
		case kIWITRightCap:
			return _staticMVCOIWITRightCapImage();
	}
	return nil;
}

@end
