//
//  MacVectorNATabStyle.m
//  MMTabBarView
//
//  Created by B. Kevin Hardman on 10/12/13.
//  Copyright (c) 2013 Michael Monscheuer. All rights reserved.
//

#import "MacVectorNATabStyle.h"

@implementation MacVectorNATabStyle

StaticImage(MVNAAWATClose)
StaticImage(MVNAAWATClosePressed)
StaticImage(MVNAAWATCloseRollover)
StaticImage(MVNAAWITClose)
StaticImage(MVNAAWITClosePressed)
StaticImage(MVNAAWITCloseRollover)
StaticImage(MVNAIWATClose)
StaticImage(MVNAIWATClosePressed)
StaticImage(MVNAIWATCloseRollover)
StaticImage(MVNAIWITClose)
StaticImage(MVNAIWITClosePressed)
StaticImage(MVNAIWITCloseRollover)
StaticImage(MVNAAWAddTabButton)
StaticImage(MVNAAWAddTabButtonPushed)
StaticImage(MVNAAWAddTabButtonRolloverPlus)
StaticImage(MVNAAWATBG)
StaticImage(MVNAAWATFill)
StaticImage(MVNAAWATLeftCap)
StaticImage(MVNAAWATRightCap)
StaticImage(MVNAAWBG)
StaticImage(MVNAAWITLeftCap)
StaticImage(MVNAAWITRightCap)
StaticImage(MVNAIWATFill)
StaticImage(MVNAIWATLeftCap)
StaticImage(MVNAIWATRightCap)
StaticImage(MVNAIWATBG)
StaticImage(MVNAIWBG)
StaticImage(MVNAIWITLeftCap)
StaticImage(MVNAIWITRightCap)

+ (NSString *)name {
    return @"MacVectorNA";
}

- (NSImage*) imageForTag:(NSInteger) inTag {
	switch (inTag) {
		case kAWATClose:
			return _staticMVNAAWATCloseImage();
		case kAWATClosePressed:
			return _staticMVNAAWATClosePressedImage();
		case kAWATCloseRollover:
			return _staticMVNAAWATCloseRolloverImage();
		case kAWITClose:
			return _staticMVNAAWITCloseImage();
		case kAWITClosePressed:
			return _staticMVNAAWITClosePressedImage();
		case kAWITCloseRollover:
			return _staticMVNAAWITCloseRolloverImage();
		case kIWATClose:
			return _staticMVNAIWATCloseImage();
		case kIWATClosePressed:
			return _staticMVNAIWATClosePressedImage();
		case kIWATCloseRollover:
			return _staticMVNAIWATCloseRolloverImage();
		case kIWITClose:
			return _staticMVNAIWITCloseImage();
		case kIWITClosePressed:
			return _staticMVNAIWITClosePressedImage();
		case kIWITCloseRollover:
			return _staticMVNAIWITCloseRolloverImage();
		case kAWAddTabButton:
			return _staticMVNAAWAddTabButtonImage();
		case kAWAddTabButtonPushed:
			return _staticMVNAAWAddTabButtonPushedImage();
		case kAWAddTabButtonRolloverPlus:
			return _staticMVNAAWAddTabButtonRolloverPlusImage();
		case kAWATBG:
			return _staticMVNAAWATBGImage();
		case kAWATFill:
			return _staticMVNAAWATFillImage();
		case kAWATLeftCap:
			return _staticMVNAAWATLeftCapImage();
		case kAWATRightCap:
			return _staticMVNAAWATRightCapImage();
		case kAWBG:
			return _staticMVNAAWBGImage();
		case kAWITLeftCap:
			return _staticMVNAAWITLeftCapImage();
		case kAWITRightCap:
			return _staticMVNAAWITRightCapImage();
		case kIWATBG:
			return _staticMVNAIWATBGImage();
		case kIWATFill:
			return _staticMVNAIWATFillImage();
		case kIWATLeftCap:
			return _staticMVNAIWATLeftCapImage();
		case kIWATRightCap:
			return _staticMVNAIWATRightCapImage();
		case kIWBG:
			return _staticMVNAIWBGImage();
		case kIWITLeftCap:
			return _staticMVNAIWITLeftCapImage();
		case kIWITRightCap:
			return _staticMVNAIWITRightCapImage();
	}
	return nil;
}

@end
