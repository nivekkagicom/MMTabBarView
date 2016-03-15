//
//  MacVectorAATabStyle.m
//  MMTabBarView
//
//  Created by B. Kevin Hardman on 10/12/13.
//  Copyright (c) 2013 Michael Monscheuer. All rights reserved.
//

#import "MacVectorAATabStyle.h"

@implementation MacVectorAATabStyle

StaticImage(MVAAKWBG)
StaticImage(MVAAKWITLeftCap)
StaticImage(MVAAKWITRightCap)
StaticImage(MVAAAWBG)
StaticImage(MVAAAWITLeftCap)
StaticImage(MVAAAWITRightCap)
StaticImage(MVAAIWBG)
StaticImage(MVAAIWITLeftCap)
StaticImage(MVAAIWITRightCap)

+ (NSString *)name {
    return @"MacVectorAA";
}

- (NSImage*) imageForTag:(NSInteger) inTag {
	switch (inTag) {
		case kKWBG:
			return _staticMVAAKWBGImage();
		case kKWITLeftCap:
			return _staticMVAAKWITLeftCapImage();
		case kKWITRightCap:
			return _staticMVAAKWITRightCapImage();
		case kAWBG:
			return _staticMVAAAWBGImage();
		case kAWITLeftCap:
			return _staticMVAAAWITLeftCapImage();
		case kAWITRightCap:
			return _staticMVAAAWITRightCapImage();
		case kIWBG:
			return _staticMVAAIWBGImage();
		case kIWITLeftCap:
			return _staticMVAAIWITLeftCapImage();
		case kIWITRightCap:
			return _staticMVAAIWITRightCapImage();
	}
	return [super imageForTag:inTag];
}

@end
