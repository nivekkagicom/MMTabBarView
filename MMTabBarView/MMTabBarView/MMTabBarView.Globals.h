//
//  MMTabBarView.Globals.h
//  MMTabBarView
//
//  Created by Michael Monscheuer on 20/04/16.
//  Copyright © 2016 Michael Monscheuer. All rights reserved.
//

NS_ASSUME_NONNULL_BEGIN

#define MMTabDragDidEndNotification     @"MMTabDragDidEndNotification"
#define MMTabDragDidBeginNotification   @"MMTabDragDidBeginNotification"

#define kMMTabBarViewHeight             22
// default inset
#define MARGIN_X                        6
#define MARGIN_Y                        3
// padding between objects
#define kMMTabBarCellPadding            4
// fixed size objects
#define kMMMinimumTitleWidth            30
#define kMMTabBarIndicatorWidth         16.0
#define kMMTabBarIconWidth              16.0
#define kMMObjectCounterMinWidth        20.0
#define kMMObjectCounterRadius          7.0
#define kMMTabBarViewSourceListHeight   28

#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
#define StaticImage(name) \
static NSImage* _static##name##Image() \
{ \
    static NSImage* image = nil; \
    if (!image) \
        image = [[MMTabBarView bundle] imageForResource:@#name]; \
    return image; \
}
#else
NSImage* CreateOSVersionedImage(NSString* const inName);

#define StaticImage(name) \
static NSImage* _static##name##Image() \
{ \
    static NSImage* image = nil; \
    if (!image) \
        image = CreateOSVersionedImage(@#name); \
    return image; \
}
#endif

#define StaticImageWithFilename(name, filename) \
static NSImage* _static##name##Image() \
{ \
    static NSImage* image = nil; \
    if (!image) \
        image = [[MMTabBarView bundle] imageForResource:@#filename]; \
    return image; \
}

/**
 *  Tab bar orientation
 */
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wc++98-compat"
typedef NS_ENUM(NSUInteger, MMTabBarOrientation){
/**
 *  Horizontal orientation
 */
MMTabBarHorizontalOrientation = 0,
/**
 *  Vertical orientation
 */
MMTabBarVerticalOrientation
};

/**
 *  Tear off style
 */
typedef NS_ENUM(NSUInteger, MMTabBarTearOffStyle){
/**
 *  Show alpha window
 */
MMTabBarTearOffAlphaWindow,
/**
 *  Show mini window
 */
MMTabBarTearOffMiniwindow
};

/**
 *  Attached tab bar buttons enumeration options
 */
typedef NS_ENUM(NSUInteger, MMAttachedButtonsEnumerationOptions){
/**
 *  No options
 */
MMAttachedButtonsEnumerationNone               = 0,
/**
 *  Update tab state
 */
MMAttachedButtonsEnumerationUpdateTabStateMask = 1 << 1,
/**
 *  Update button state
 */
MMAttachedButtonsEnumerationUpdateButtonState  = 1 << 2
};
#pragma clang diagnostic pop

NS_ASSUME_NONNULL_END
