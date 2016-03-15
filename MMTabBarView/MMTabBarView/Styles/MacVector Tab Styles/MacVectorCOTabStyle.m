//
//  MacVectorCOTabStyle.m
//  MMTabBarView
//
//  Created by B. Kevin Hardman on 12/16/13.
//  Copyright (c) 2013 Michael Monscheuer. All rights reserved.
//

#import "MacVectorCOTabStyle.h"

@implementation MacVectorCOTabStyle

StaticImage(MVCOKWBG)
StaticImage(MVCOKWITLeftCap)
StaticImage(MVCOKWITRightCap)
StaticImage(MVCOAWBG)
StaticImage(MVCOAWITLeftCap)
StaticImage(MVCOAWITRightCap)
StaticImage(MVCOIWBG)
StaticImage(MVCOIWITLeftCap)
StaticImage(MVCOIWITRightCap)

+ (NSString *)name {
    return @"MacVectorCO";
}

- (NSImage*) imageForTag:(NSInteger) inTag {
	switch (inTag) {
		case kKWBG:
			return _staticMVCOKWBGImage();
		case kKWITLeftCap:
			return _staticMVCOKWITLeftCapImage();
		case kKWITRightCap:
			return _staticMVCOKWITRightCapImage();
		case kAWBG:
			return _staticMVCOAWBGImage();
		case kAWITLeftCap:
			return _staticMVCOAWITLeftCapImage();
		case kAWITRightCap:
			return _staticMVCOAWITRightCapImage();
		case kIWBG:
			return _staticMVCOIWBGImage();
		case kIWITLeftCap:
			return _staticMVCOIWITLeftCapImage();
		case kIWITRightCap:
			return _staticMVCOIWITRightCapImage();
	}
	return [super imageForTag:inTag];
}

@end
