//
//  MacVectorTRTabStyle.m
//  MMTabBarView
//
//  Created by B. Kevin Hardman on 12/16/13.
//  Copyright (c) 2013 Michael Monscheuer. All rights reserved.
//

#import "MacVectorTRTabStyle.h"

@implementation MacVectorTRTabStyle

StaticImage(MVTRKWBG)
StaticImage(MVTRKWITLeftCap)
StaticImage(MVTRKWITRightCap)
StaticImage(MVTRAWBG)
StaticImage(MVTRAWITLeftCap)
StaticImage(MVTRAWITRightCap)
StaticImage(MVTRIWBG)
StaticImage(MVTRIWITLeftCap)
StaticImage(MVTRIWITRightCap)

+ (NSString *)name {
    return @"MacVectorTR";
}

- (NSImage*) imageForTag:(NSInteger) inTag {
	switch (inTag) {
		case kKWBG:
			return _staticMVTRKWBGImage();
		case kKWITLeftCap:
			return _staticMVTRKWITLeftCapImage();
		case kKWITRightCap:
			return _staticMVTRKWITRightCapImage();
		case kAWBG:
			return _staticMVTRAWBGImage();
		case kAWITLeftCap:
			return _staticMVTRAWITLeftCapImage();
		case kAWITRightCap:
			return _staticMVTRAWITRightCapImage();
		case kIWBG:
			return _staticMVTRIWBGImage();
		case kIWITLeftCap:
			return _staticMVTRIWITLeftCapImage();
		case kIWITRightCap:
			return _staticMVTRIWITRightCapImage();
	}
	return [super imageForTag:inTag];
}

@end
