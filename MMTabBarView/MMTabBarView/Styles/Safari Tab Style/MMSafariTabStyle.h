//
//  MMSafariTabStyle.h
//  MMTabBarView
//
//  Created by Michael Monscheuer on 9/20/12.
//  Copyright 2011 Marrintech. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MMTabStyle.h"
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
#else

enum {
	kKWATClose,
	kKWATClosePressed,
	kKWATCloseRollover,
	kAWATClose,
	kAWATClosePressed,
	kAWATCloseRollover,
	kKWITClose,
	kKWITClosePressed,
	kKWITCloseRollover,
	kAWITClose,
	kAWITClosePressed,
	kAWITCloseRollover,
	kIWATClose,
	kIWATClosePressed,
	kIWATCloseRollover,
	kIWITClose,
	kIWITClosePressed,
	kIWITCloseRollover,
	kKWAddTabButton,
	kKWAddTabButtonPushed,
	kKWAddTabButtonRolloverPlus,
	kKWATFill,
	kKWATLeftCap,
	kKWATRightCap,
	kKWBG,
	kKWITLeftCap,
	kKWITRightCap,
	kAWAddTabButton,
	kAWAddTabButtonPushed,
	kAWAddTabButtonRolloverPlus,
	kAWATFill,
	kAWATLeftCap,
	kAWATRightCap,
	kAWBG,
	kAWITLeftCap,
	kAWITRightCap,
	kIWATFill,
	kIWATLeftCap,
	kIWATRightCap,
	kIWBG,
	kIWITLeftCap,
	kIWITRightCap
};

#define IMAGE(TAG) [self imageForTag:(NSInteger) TAG]

#endif

@interface MMSafariTabStyle : NSObject <MMTabStyle>
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
#else

- (NSImage*) imageForTag:(NSInteger) inTag;
#endif

@end
