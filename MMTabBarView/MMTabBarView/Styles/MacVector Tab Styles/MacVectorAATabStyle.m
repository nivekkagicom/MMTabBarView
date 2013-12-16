//
//  MacVectorAATabStyle.m
//  MMTabBarView
//
//  Created by B. Kevin Hardman on 10/12/13.
//  Copyright (c) 2013 Michael Monscheuer. All rights reserved.
//

#import "MacVectorAATabStyle.h"

@implementation MacVectorAATabStyle

StaticImage(MVAAAWATClose)
StaticImage(MVAAAWATClosePressed)
StaticImage(MVAAAWATCloseRollover)
StaticImage(MVAAAWITClose)
StaticImage(MVAAAWITClosePressed)
StaticImage(MVAAAWITCloseRollover)
StaticImage(MVAAIWATClose)
StaticImage(MVAAIWATClosePressed)
StaticImage(MVAAIWATCloseRollover)
StaticImage(MVAAIWITClose)
StaticImage(MVAAIWITClosePressed)
StaticImage(MVAAIWITCloseRollover)
StaticImage(MVAAAWAddTabButton)
StaticImage(MVAAAWAddTabButtonPushed)
StaticImage(MVAAAWAddTabButtonRolloverPlus)
StaticImage(MVAAAWATBG)
StaticImage(MVAAAWATFill)
StaticImage(MVAAAWATLeftCap)
StaticImage(MVAAAWATRightCap)
StaticImage(MVAAAWBG)
StaticImage(MVAAAWITLeftCap)
StaticImage(MVAAAWITRightCap)
StaticImage(MVAAIWATBG)
StaticImage(MVAAIWATFill)
StaticImage(MVAAIWATLeftCap)
StaticImage(MVAAIWATRightCap)
StaticImage(MVAAIWBG)
StaticImage(MVAAIWITLeftCap)
StaticImage(MVAAIWITRightCap)

+ (NSString *)name {
    return @"MacVectorAA";
}

- (NSImage*) imageForTag:(NSInteger) inTag {
	switch (inTag) {
		case kAWATClose:
			return _staticMVAAAWATCloseImage();
		case kAWATClosePressed:
			return _staticMVAAAWATClosePressedImage();
		case kAWATCloseRollover:
			return _staticMVAAAWATCloseRolloverImage();
		case kAWITClose:
			return _staticMVAAAWITCloseImage();
		case kAWITClosePressed:
			return _staticMVAAAWITClosePressedImage();
		case kAWITCloseRollover:
			return _staticMVAAAWITCloseRolloverImage();
		case kIWATClose:
			return _staticMVAAIWATCloseImage();
		case kIWATClosePressed:
			return _staticMVAAIWATClosePressedImage();
		case kIWATCloseRollover:
			return _staticMVAAIWATCloseRolloverImage();
		case kIWITClose:
			return _staticMVAAIWITCloseImage();
		case kIWITClosePressed:
			return _staticMVAAIWITClosePressedImage();
		case kIWITCloseRollover:
			return _staticMVAAIWITCloseRolloverImage();
		case kAWAddTabButton:
			return _staticMVAAAWAddTabButtonImage();
		case kAWAddTabButtonPushed:
			return _staticMVAAAWAddTabButtonPushedImage();
		case kAWAddTabButtonRolloverPlus:
			return _staticMVAAAWAddTabButtonRolloverPlusImage();
		case kAWATBG:
			return _staticMVAAAWATBGImage();
		case kAWATFill:
			return _staticMVAAAWATFillImage();
		case kAWATLeftCap:
			return _staticMVAAAWATLeftCapImage();
		case kAWATRightCap:
			return _staticMVAAAWATRightCapImage();
		case kAWBG:
			return _staticMVAAAWBGImage();
		case kAWITLeftCap:
			return _staticMVAAAWITLeftCapImage();
		case kAWITRightCap:
			return _staticMVAAAWITRightCapImage();
		case kIWATBG:
			return _staticMVAAIWATBGImage();
		case kIWATFill:
			return _staticMVAAIWATFillImage();
		case kIWATLeftCap:
			return _staticMVAAIWATLeftCapImage();
		case kIWATRightCap:
			return _staticMVAAIWATRightCapImage();
		case kIWBG:
			return _staticMVAAIWBGImage();
		case kIWITLeftCap:
			return _staticMVAAIWITLeftCapImage();
		case kIWITRightCap:
			return _staticMVAAIWITRightCapImage();
	}
	return nil;
}

@end
