//
//  MacVectorGLTabStyle.m
//  MMTabBarView
//
//  Created by B. Kevin Hardman on 5/22/18.
//  Copyright © 2018 Michael Monscheuer. All rights reserved.
//

#import "MacVectorGLTabStyle.h"

@implementation MacVectorGLTabStyle

StaticImage(MVGLKWBG)
StaticImage(MVGLKWITLeftCap)
StaticImage(MVGLKWITRightCap)
StaticImage(MVGLAWBG)
StaticImage(MVGLAWITLeftCap)
StaticImage(MVGLAWITRightCap)
StaticImage(MVGLIWBG)
StaticImage(MVGLIWITLeftCap)
StaticImage(MVGLIWITRightCap)

+ (NSString *)name {
    return @"MacVectorGL";
}

- (NSImage*) imageForTag:(NSInteger) inTag {
	switch (inTag) {
		case kKWBG:
			return _staticMVGLKWBGImage();
		case kKWITLeftCap:
			return _staticMVGLKWITLeftCapImage();
		case kKWITRightCap:
			return _staticMVGLKWITRightCapImage();
		case kAWBG:
			return _staticMVGLAWBGImage();
		case kAWITLeftCap:
			return _staticMVGLAWITLeftCapImage();
		case kAWITRightCap:
			return _staticMVGLAWITRightCapImage();
		case kIWBG:
			return _staticMVGLIWBGImage();
		case kIWITLeftCap:
			return _staticMVGLIWITLeftCapImage();
		case kIWITRightCap:
			return _staticMVGLIWITRightCapImage();
	}
	return [super imageForTag:inTag];
}

@end
