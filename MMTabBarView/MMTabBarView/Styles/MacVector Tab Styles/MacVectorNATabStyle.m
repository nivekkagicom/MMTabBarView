//
//  MacVectorNATabStyle.m
//  MMTabBarView
//
//  Created by B. Kevin Hardman on 10/12/13.
//  Copyright (c) 2013 Michael Monscheuer. All rights reserved.
//

#import "MacVectorNATabStyle.h"

@implementation MacVectorNATabStyle

StaticImage(MVNAKWBG)
StaticImage(MVNAKWITLeftCap)
StaticImage(MVNAKWITRightCap)
StaticImage(MVNAAWBG)
StaticImage(MVNAAWITLeftCap)
StaticImage(MVNAAWITRightCap)
StaticImage(MVNAIWBG)
StaticImage(MVNAIWITLeftCap)
StaticImage(MVNAIWITRightCap)

+ (NSString *)name {
    return @"MacVectorNA";
}

- (NSImage*) imageForTag:(NSInteger) inTag {
	switch (inTag) {
		case kKWBG:
			return _staticMVNAKWBGImage();
		case kKWITLeftCap:
			return _staticMVNAKWITLeftCapImage();
		case kKWITRightCap:
			return _staticMVNAKWITRightCapImage();
		case kAWBG:
			return _staticMVNAAWBGImage();
		case kAWITLeftCap:
			return _staticMVNAAWITLeftCapImage();
		case kAWITRightCap:
			return _staticMVNAAWITRightCapImage();
		case kIWBG:
			return _staticMVNAIWBGImage();
		case kIWITLeftCap:
			return _staticMVNAIWITLeftCapImage();
		case kIWITRightCap:
			return _staticMVNAIWITRightCapImage();
	}
	return [super imageForTag:inTag];
}

@end
