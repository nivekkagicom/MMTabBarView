//
//  MacVectorTRTabStyle.m
//  MMTabBarView
//
//  Created by B. Kevin Hardman on 12/16/13.
//  Copyright (c) 2013 Michael Monscheuer. All rights reserved.
//

#import "MacVectorTRTabStyle.h"

@implementation MacVectorTRTabStyle

StaticImage(MVTRAWATClose)
StaticImage(MVTRAWATClosePressed)
StaticImage(MVTRAWATCloseRollover)
StaticImage(MVTRAWITClose)
StaticImage(MVTRAWITClosePressed)
StaticImage(MVTRAWITCloseRollover)
StaticImage(MVTRIWATClose)
StaticImage(MVTRIWATClosePressed)
StaticImage(MVTRIWATCloseRollover)
StaticImage(MVTRIWITClose)
StaticImage(MVTRIWITClosePressed)
StaticImage(MVTRIWITCloseRollover)
StaticImage(MVTRAWAddTabButton)
StaticImage(MVTRAWAddTabButtonPushed)
StaticImage(MVTRAWAddTabButtonRolloverPlus)
StaticImage(MVTRAWATBG)
StaticImage(MVTRAWATFill)
StaticImage(MVTRAWATLeftCap)
StaticImage(MVTRAWATRightCap)
StaticImage(MVTRAWBG)
StaticImage(MVTRAWITLeftCap)
StaticImage(MVTRAWITRightCap)
StaticImage(MVTRIWATBG)
StaticImage(MVTRIWATFill)
StaticImage(MVTRIWATLeftCap)
StaticImage(MVTRIWATRightCap)
StaticImage(MVTRIWBG)
StaticImage(MVTRIWITLeftCap)
StaticImage(MVTRIWITRightCap)

+ (NSString *)name {
    return @"MacVectorTR";
}

- (NSImage*) imageForTag:(NSInteger) inTag {
	switch (inTag) {
		case kAWATClose:
			return _staticMVTRAWATCloseImage();
		case kAWATClosePressed:
			return _staticMVTRAWATClosePressedImage();
		case kAWATCloseRollover:
			return _staticMVTRAWATCloseRolloverImage();
		case kAWITClose:
			return _staticMVTRAWITCloseImage();
		case kAWITClosePressed:
			return _staticMVTRAWITClosePressedImage();
		case kAWITCloseRollover:
			return _staticMVTRAWITCloseRolloverImage();
		case kIWATClose:
			return _staticMVTRIWATCloseImage();
		case kIWATClosePressed:
			return _staticMVTRIWATClosePressedImage();
		case kIWATCloseRollover:
			return _staticMVTRIWATCloseRolloverImage();
		case kIWITClose:
			return _staticMVTRIWITCloseImage();
		case kIWITClosePressed:
			return _staticMVTRIWITClosePressedImage();
		case kIWITCloseRollover:
			return _staticMVTRIWITCloseRolloverImage();
		case kAWAddTabButton:
			return _staticMVTRAWAddTabButtonImage();
		case kAWAddTabButtonPushed:
			return _staticMVTRAWAddTabButtonPushedImage();
		case kAWAddTabButtonRolloverPlus:
			return _staticMVTRAWAddTabButtonRolloverPlusImage();
		case kAWATBG:
			return _staticMVTRAWATBGImage();
		case kAWATFill:
			return _staticMVTRAWATFillImage();
		case kAWATLeftCap:
			return _staticMVTRAWATLeftCapImage();
		case kAWATRightCap:
			return _staticMVTRAWATRightCapImage();
		case kAWBG:
			return _staticMVTRAWBGImage();
		case kAWITLeftCap:
			return _staticMVTRAWITLeftCapImage();
		case kAWITRightCap:
			return _staticMVTRAWITRightCapImage();
		case kIWATBG:
			return _staticMVTRIWATBGImage();
		case kIWATFill:
			return _staticMVTRIWATFillImage();
		case kIWATLeftCap:
			return _staticMVTRIWATLeftCapImage();
		case kIWATRightCap:
			return _staticMVTRIWATRightCapImage();
		case kIWBG:
			return _staticMVTRIWBGImage();
		case kIWITLeftCap:
			return _staticMVTRIWITLeftCapImage();
		case kIWITRightCap:
			return _staticMVTRIWITRightCapImage();
	}
	return nil;
}

@end
