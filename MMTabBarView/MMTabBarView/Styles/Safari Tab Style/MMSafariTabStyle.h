//
//  MMSafariTabStyle.h
//  MMTabBarView
//
//  Created by Michael Monscheuer on 9/20/12.
//  Copyright 2011 Marrintech. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MMTabStyle.h"
#if NEVER
#else

enum {
	kAWATClose,
	kAWATClosePressed,
	kAWATCloseRollover,
	kAWITClose,
	kAWITClosePressed,
	kAWITCloseRollover,
	kIWATClose,
	kIWATClosePressed,
	kIWATCloseRollover,
	kIWITClose,
	kIWITClosePressed,
	kIWITCloseRollover,
	kAWAddTabButton,
	kAWAddTabButtonPushed,
	kAWAddTabButtonRolloverPlus,
	kAWATBG,
	kAWATFill,
	kAWATLeftCap,
	kAWATRightCap,
	kAWBG,
	kAWITLeftCap,
	kAWITRightCap,
	kIWATBG,
	kIWATFill,
	kIWATLeftCap,
	kIWATRightCap,
	kIWBG,
	kIWITLeftCap,
	kIWITRightCap
};

#define IMAGE(TAG) [self imageForTag:(NSInteger) TAG]

#endif

@interface MMSafariTabStyle : NSObject <MMTabStyle> {

	NSDictionary* _objectCountStringAttributes;
    
}
#if NEVER
#else

- (NSImage*) imageForTag:(NSInteger) inTag;
#endif

@end
