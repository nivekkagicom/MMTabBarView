//
//  MMSafariTabStyle.m
//  MMTabBarView
//
//  Created by Michael Monscheuer on 9/20/12.
//  Copyright 2011 Marrintech. All rights reserved.
//

#import "MMSafariTabStyle.h"

#import "MMTabBarView.h"
#import "MMAttachedTabBarButton.h"
#import "MMAttachedTabBarButtonCell.h"
#import "NSView+MMTabBarViewExtensions.h"
#import "MMTabBarView.Private.h"
#import "MMTabBarButtonCell.Private.h"
#import "MMOverflowPopUpButton.h"
#import "MMOverflowPopUpButtonCell.h"

NS_ASSUME_NONNULL_BEGIN

@implementation MMSafariTabStyle
{
	NSDictionary *_objectCountStringAttributes;
}

StaticImage(SafariAWATClose)
StaticImage(SafariAWATClosePressed)
StaticImage(SafariAWATCloseRollover)
StaticImage(SafariAWITClose)
StaticImage(SafariAWITClosePressed)
StaticImage(SafariAWITCloseRollover)
StaticImage(SafariIWATClose)
StaticImage(SafariIWATClosePressed)
StaticImage(SafariIWATCloseRollover)
StaticImage(SafariIWITClose)
StaticImage(SafariIWITClosePressed)
StaticImage(SafariIWITCloseRollover)
StaticImage(TabClose_Dirty)
StaticImage(TabClose_Dirty_Pressed)
StaticImage(TabClose_Dirty_Rollover)
StaticImage(SafariAWAddTabButton)
StaticImage(SafariAWAddTabButtonPushed)
StaticImage(SafariAWAddTabButtonRolloverPlus)
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
#else
StaticImage(SafariKWATFill)
StaticImage(SafariKWATLeftCap)
StaticImage(SafariKWATRightCap)
#endif
StaticImage(SafariAWATFill)
StaticImage(SafariAWATLeftCap)
StaticImage(SafariAWATRightCap)
StaticImage(SafariAWBG)
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
#else
StaticImage(SafariKWITLeftCap)
StaticImage(SafariKWITRightCap)
#endif
StaticImage(SafariAWITLeftCap)
StaticImage(SafariAWITRightCap)
StaticImage(SafariIWATFill)
StaticImage(SafariIWATLeftCap)
StaticImage(SafariIWATRightCap)
StaticImage(SafariIWBG)
StaticImage(SafariIWITLeftCap)
StaticImage(SafariIWITRightCap)

+ (NSString *)name {
    return @"Safari";
}

- (NSString *)name {
	return self.class.name;
}
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
#else

- (NSImage*) imageForTag:(NSInteger) inTag {
	switch (inTag) {
		case kKWATClose:
		case kAWATClose:
			return _staticSafariAWATCloseImage();
		case kKWATClosePressed:
		case kAWATClosePressed:
			return _staticSafariAWATClosePressedImage();
		case kKWATCloseRollover:
		case kAWATCloseRollover:
			return _staticSafariAWATCloseRolloverImage();
		case kKWITClose:
		case kAWITClose:
			return _staticSafariAWITCloseImage();
		case kKWITClosePressed:
		case kAWITClosePressed:
			return _staticSafariAWITClosePressedImage();
		case kKWITCloseRollover:
		case kAWITCloseRollover:
			return _staticSafariAWITCloseRolloverImage();
		case kIWATClose:
			return _staticSafariIWATCloseImage();
		case kIWATClosePressed:
			return _staticSafariIWATClosePressedImage();
		case kIWATCloseRollover:
			return _staticSafariIWATCloseRolloverImage();
		case kIWITClose:
			return _staticSafariIWITCloseImage();
		case kIWITClosePressed:
			return _staticSafariIWITClosePressedImage();
		case kIWITCloseRollover:
			return _staticSafariIWITCloseRolloverImage();
		case kKWAddTabButton:
		case kAWAddTabButton:
			return _staticSafariAWAddTabButtonImage();
		case kKWAddTabButtonPushed:
		case kAWAddTabButtonPushed:
			return _staticSafariAWAddTabButtonPushedImage();
		case kKWAddTabButtonRolloverPlus:
		case kAWAddTabButtonRolloverPlus:
			return _staticSafariAWAddTabButtonRolloverPlusImage();
		case kKWATFill:
			return _staticSafariKWATFillImage();
		case kKWATLeftCap:
			return _staticSafariKWATLeftCapImage();
		case kKWATRightCap:
			return _staticSafariKWATRightCapImage();
		case kAWATFill:
			return _staticSafariAWATFillImage();
		case kAWATLeftCap:
			return _staticSafariAWATLeftCapImage();
		case kAWATRightCap:
			return _staticSafariAWATRightCapImage();
		case kKWBG:
		case kAWBG:
			return _staticSafariAWBGImage();
		case kKWITLeftCap:
			return _staticSafariKWITLeftCapImage();
		case kKWITRightCap:
			return _staticSafariKWITRightCapImage();
		case kAWITLeftCap:
			return _staticSafariAWITLeftCapImage();
		case kAWITRightCap:
			return _staticSafariAWITRightCapImage();
		case kIWATFill:
			return _staticSafariIWATFillImage();
		case kIWATLeftCap:
			return _staticSafariIWATLeftCapImage();
		case kIWATRightCap:
			return _staticSafariIWATRightCapImage();
		case kIWBG:
			return _staticSafariIWBGImage();
		case kIWITLeftCap:
			return _staticSafariIWITLeftCapImage();
		case kIWITRightCap:
			return _staticSafariIWITRightCapImage();
	}
	return nil;
}
#endif

#pragma mark -
#pragma mark Creation/Destruction

- (instancetype) init {
	if((self = [super init])) {
		NSFont* const font = [NSFont fontWithName:@"Helvetica" size:11.0];
		NSFont* const styledFont = [NSFontManager.sharedFontManager convertFont:font toHaveTrait:NSBoldFontMask];
		_objectCountStringAttributes = @{
			NSFontAttributeName: styledFont != nil ? styledFont : font,
			NSForegroundColorAttributeName: [NSColor.whiteColor colorWithAlphaComponent:0.85]
		};
	}
	return self;
}

#pragma mark -
#pragma mark Tab View Specific

- (CGFloat)leftMarginForTabBarView:(MMTabBarView *)tabBarView {
	return 6.0;
}

- (CGFloat)rightMarginForTabBarView:(MMTabBarView *)tabBarView {
	return 6.0;
}

- (BOOL)supportsOrientation:(MMTabBarOrientation)orientation forTabBarView:(MMTabBarView *)tabBarView {

    if (orientation != MMTabBarHorizontalOrientation)
        return NO;
    
    return YES;
}

- (NSSize)addTabButtonSizeForTabBarView:(MMTabBarView *)tabBarView {
    return NSMakeSize(22.0,tabBarView.frame.size.height);
}

- (NSRect)addTabButtonRectForTabBarView:(MMTabBarView *)tabBarView {

    NSRect rect = tabBarView._addTabButtonRect;
    
    rect.origin.y += 1.0;
    rect.size.height -= 1.0;
    
    return rect;
}

#pragma mark -
#pragma mark Add Tab Button

-(void)updateAddButton:(MMRolloverButton *)aButton ofTabBarView:(MMTabBarView *)tabBarView {

#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
    [aButton setImage:_staticSafariAWAddTabButtonImage()];
    [aButton setAlternateImage:_staticSafariAWAddTabButtonPushedImage()];
    [aButton setRolloverImage:_staticSafariAWAddTabButtonRolloverPlusImage()];
#else
	if (tabBarView.isKeyWindow) {
		[aButton setImage:IMAGE(kKWAddTabButton)];
		[aButton setAlternateImage:IMAGE(kKWAddTabButtonPushed)];
		[aButton setRolloverImage:IMAGE(kKWAddTabButtonRolloverPlus)];
	} else {
		[aButton setImage:IMAGE(kAWAddTabButton)];
		[aButton setAlternateImage:IMAGE(kAWAddTabButtonPushed)];
		[aButton setRolloverImage:IMAGE(kAWAddTabButtonRolloverPlus)];
	}
#endif
}

#pragma mark -
#pragma mark Drag Support

- (NSRect)draggingRectForTabButton:(MMAttachedTabBarButton *)aButton ofTabBarView:(MMTabBarView *)tabBarView {

	NSRect dragRect = aButton.stackingFrame;
	dragRect.size.width++;

	if(aButton.state == NSOnState) {
		if(tabBarView.orientation == MMTabBarHorizontalOrientation) {
			dragRect.size.height -= 2.0;
		} else {
			dragRect.size.height += 1.0;
			dragRect.origin.y -= 1.0;
			dragRect.origin.x += 2.0;
			dragRect.size.width -= 3.0;
		}
	} else if (tabBarView.orientation == MMTabBarVerticalOrientation) {
		dragRect.origin.x--;
	}

	return dragRect;
}

#pragma mark -
#pragma mark Providing Images

- (NSImage *)closeButtonImageOfType:(MMCloseButtonImageType)type forTabCell:(MMTabBarButtonCell *)cell
{
	BOOL activeWindow = cell.controlView.enclosingTabBarView.isWindowActive;
	BOOL activeTab = (cell.state == NSOnState);
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
#else
	BOOL keyWindow = cell.controlView.enclosingTabBarView.isKeyWindow;
#endif
	
    if (activeWindow) {
        switch (type) {
            case MMCloseButtonImageTypeStandard:
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
				return activeTab?_staticSafariAWATCloseImage():_staticSafariAWITCloseImage();
#else
				if (keyWindow) {
					return activeTab ? IMAGE(kKWATClose) : IMAGE(kKWITClose);
				}
				return activeTab ? IMAGE(kAWATClose) : IMAGE(kAWITClose);
#endif
            case MMCloseButtonImageTypeRollover:
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
                return activeTab?_staticSafariAWATCloseRolloverImage():_staticSafariAWITCloseRolloverImage();
#else
				if (keyWindow) {
					return activeTab ? IMAGE(kKWATCloseRollover) : IMAGE(kKWITCloseRollover);
				}
                return activeTab ? IMAGE(kAWATCloseRollover) : IMAGE(kAWITCloseRollover);
#endif
            case MMCloseButtonImageTypePressed:
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
                return activeTab?_staticSafariAWATClosePressedImage():_staticSafariAWITClosePressedImage();
#else
				if (keyWindow) {
					return activeTab ? IMAGE(kKWATClosePressed) : IMAGE(kKWITClosePressed);
				}
                return activeTab ? IMAGE(kAWATClosePressed) : IMAGE(kAWITClosePressed);
#endif
                
            case MMCloseButtonImageTypeDirty:
                return _staticTabClose_DirtyImage();
            case MMCloseButtonImageTypeDirtyRollover:
                return _staticTabClose_Dirty_RolloverImage();
            case MMCloseButtonImageTypeDirtyPressed:
                return _staticTabClose_Dirty_PressedImage();
                
            default:
                break;
        }
    } else {
        switch (type) {
            case MMCloseButtonImageTypeStandard:
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
                return activeTab?_staticSafariIWATCloseImage():_staticSafariIWITCloseImage();
#else
                return activeTab?IMAGE(kIWATClose):IMAGE(kIWITClose);
#endif
            case MMCloseButtonImageTypeRollover:
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
                return activeTab?_staticSafariIWATCloseRolloverImage():_staticSafariIWITCloseRolloverImage();
#else
                return activeTab?IMAGE(kIWATCloseRollover):IMAGE(kIWITCloseRollover);
#endif
            case MMCloseButtonImageTypePressed:
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
                return activeTab?_staticSafariIWATClosePressedImage():_staticSafariIWITClosePressedImage();
#else
                return activeTab?IMAGE(kIWATClosePressed):IMAGE(kIWITClosePressed);
#endif
                
            case MMCloseButtonImageTypeDirty:
                return _staticTabClose_DirtyImage();
            case MMCloseButtonImageTypeDirtyRollover:
                return _staticTabClose_Dirty_RolloverImage();
            case MMCloseButtonImageTypeDirtyPressed:
                return _staticTabClose_Dirty_PressedImage();
                
            default:
                break;
        }
    }
}

#pragma mark -
#pragma mark Determining Cell Size

- (NSRect)drawingRectForBounds:(NSRect)theRect ofTabCell:(MMTabBarButtonCell *)cell
{
    theRect.origin.x += cell._leftMargin;
    theRect.size.width -= cell._leftMargin + cell._rightMargin;
    
    theRect.origin.y += 1;
    theRect.size.height -= 1;
    
    return theRect;

/*
     NSRect rect = NSInsetRect(theRect, 6.0, 0.0);
    rect.origin.y += 1;
    rect.size.height -= 1;
    
    return rect;
*/    
}

- (NSRect)closeButtonRectForBounds:(NSRect)theRect ofTabCell:(MMTabBarButtonCell *)cell {
    
    NSRect rect = [cell _closeButtonRectForBounds:theRect];
    if (NSEqualRects(rect,NSZeroRect))
        return rect;
    
    rect.origin.y += 1;
    rect.size.height -= 1;
    return rect;
}

- (NSRect)overflowButtonRectForTabBarView:(MMTabBarView *)tabBarView {

    NSRect rect = tabBarView._overflowButtonRect;
    if (NSEqualRects(rect,NSZeroRect))
        return rect;
    
    rect.origin.y += 1.0;
    rect.size.height -= 1.0;
    
    return rect;
}

#pragma mark -
#pragma mark Drawing

- (void)drawBezelOfTabBarView:(MMTabBarView *)tabBarView inRect:(NSRect)rect {

	rect = tabBarView.bounds;
	    
	[NSGraphicsContext saveGraphicsState];

    // special case of hidden control; need line across top of cell
    if (rect.size.height < 2) {
        [NSColor.darkGrayColor set];
        NSRectFillUsingOperation(rect, NSCompositeSourceOver);
    } else {
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
		NSImage *bg = tabBarView.isWindowActive ? _staticSafariAWBGImage() : _staticSafariIWBGImage();
#else
		NSImage *bg = tabBarView.isWindowActive ? tabBarView.isKeyWindow ? IMAGE(kKWBG) : IMAGE(kAWBG) : IMAGE(kIWBG);
#endif
		NSDrawThreePartImage(rect, nil, bg, nil, NO, NSCompositeCopy, 1, tabBarView.isFlipped);
    }
    
	[NSGraphicsContext restoreGraphicsState];
}

- (void)drawBezelOfButton:(MMAttachedTabBarButton *)button atIndex:(NSUInteger)index inButtons:(NSArray *)buttons indexOfSelectedButton:(NSUInteger)selIndex tabBarView:(MMTabBarView *)tabBarView inRect:(NSRect)rect {

    BOOL isWindowActive = tabBarView.isWindowActive;
    NSUInteger numberOfButtons = buttons.count;

    MMAttachedTabBarButton *prevButton = nil,
                           *nextButton = nil;
    
    if (index > 0)
        prevButton = [buttons objectAtIndex:index-1];
    if (index+1 < numberOfButtons)
        nextButton = [buttons objectAtIndex:index+1];

    NSImage *left = nil,
            *center = nil,
            *right = nil;
    NSRect buttonFrame = button.frame;

    buttonFrame = NSInsetRect(buttonFrame,-5.0,0);
        
        // standard drawing while animated slide is going on
    if (button.isInAnimatedSlide == YES) {
        
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
        left = _staticSafariAWITLeftCapImage();
        right = _staticSafariAWITRightCapImage();
#else
		if (tabBarView.isKeyWindow) {
			left = IMAGE(kKWITLeftCap);
			right = IMAGE(kKWITRightCap);
		} else {
			left = IMAGE(kAWITLeftCap);
			right = IMAGE(kAWITRightCap);
		}
#endif
        
        // draw selected button
    } else if (button.state == NSOnState) {
    
		if (tabBarView.isWindowActive) {
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
            left = _staticSafariAWATLeftCapImage();
            center = _staticSafariAWATFillImage();
#else
			if (tabBarView.isKeyWindow) {
				left = IMAGE(kKWATLeftCap);
				center = IMAGE(kKWATFill);
			} else {
				left = IMAGE(kAWATLeftCap);
				center = IMAGE(kAWATFill);
			}
#endif
			if (!button.isOverflowButton || button.isSliding)
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
                right = _staticSafariAWATRightCapImage();
#else
				right = tabBarView.isKeyWindow ? IMAGE(kKWATRightCap) : IMAGE(kAWATRightCap);
#endif
        } else {
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
            left = _staticSafariIWATLeftCapImage();
            center = _staticSafariIWATFillImage();
#else
            left = IMAGE(kIWATLeftCap);
            center = IMAGE(kIWATFill);
#endif
			if (!button.isOverflowButton || button.isSliding)
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
                right = _staticSafariIWATRightCapImage();
#else
                right = IMAGE(kIWATRightCap);
#endif
        }
    
        // draw first button
    } else if (prevButton == nil) {
    
        if (selIndex == NSNotFound || index < selIndex) {
			if (nextButton.isSliding || tabBarView.destinationIndexForDraggedItem == index+1)
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
                right = isWindowActive?_staticSafariAWITRightCapImage():_staticSafariIWITRightCapImage();
#else
				right = isWindowActive ? tabBarView.isKeyWindow ? IMAGE(kKWITRightCap) : IMAGE(kAWITRightCap) : IMAGE(kIWITRightCap);
#endif
        }
        // draw last button
    } else if (nextButton == nil) {

        if (selIndex == NSNotFound || index > selIndex) {
			if (selIndex == NSNotFound || prevButton.isSliding || tabBarView.destinationIndexForDraggedItem+1 == index)
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
                left = isWindowActive?_staticSafariAWITLeftCapImage():_staticSafariIWITLeftCapImage();
#else
				left = isWindowActive ? tabBarView.isKeyWindow ? IMAGE(kKWITLeftCap) : IMAGE(kAWITLeftCap) : IMAGE(kIWITLeftCap);
#endif
        }
        
		if (tabBarView.showAddTabButton && !tabBarView.isOverflowButtonVisible)
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
            right = isWindowActive?_staticSafariAWITRightCapImage():_staticSafariIWITRightCapImage();
#else
			right = isWindowActive ? tabBarView.isKeyWindow ? IMAGE(kKWITRightCap) : IMAGE(kAWITRightCap) : IMAGE(kIWITRightCap);
#endif
    
        // draw mid button
    } else {
    
        if (selIndex == NSNotFound || index < selIndex) {
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
            left = isWindowActive?_staticSafariAWITLeftCapImage():_staticSafariIWITLeftCapImage();
#else
			left = isWindowActive ? tabBarView.isKeyWindow ? IMAGE(kKWITLeftCap) : IMAGE(kAWITLeftCap) : IMAGE(kIWITLeftCap);
#endif
			if (nextButton.isSliding || tabBarView.destinationIndexForDraggedItem == index+1)
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
                right = isWindowActive?_staticSafariAWITRightCapImage():_staticSafariIWITRightCapImage();
#else
				right = isWindowActive ? tabBarView.isKeyWindow ? IMAGE(kKWITRightCap) : IMAGE(kAWITRightCap) : IMAGE(kIWITRightCap);
#endif
        } else if (index > selIndex) {
			if (prevButton.isSliding)
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
                left = isWindowActive?_staticSafariAWITLeftCapImage():_staticSafariIWITLeftCapImage();
#else
				left = isWindowActive ? tabBarView.isKeyWindow ? IMAGE(kKWITLeftCap) : IMAGE(kAWITLeftCap) : IMAGE(kIWITLeftCap);
#endif
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
            right = isWindowActive?_staticSafariAWITRightCapImage():_staticSafariIWITRightCapImage();
#else
			right = isWindowActive ? tabBarView.isKeyWindow ? IMAGE(kKWITRightCap) : IMAGE(kAWITRightCap) : IMAGE(kIWITRightCap);
#endif
        }
    }

    if (center != nil || left != nil || right != nil)
        NSDrawThreePartImage(buttonFrame, left, center, right, NO, NSCompositeSourceOver, 1.0, tabBarView.isFlipped);
}

-(void)drawBezelOfOverflowButton:(MMOverflowPopUpButton *)overflowButton ofTabBarView:(MMTabBarView *)tabBarView inRect:(NSRect)rect {
	BOOL isWindowActive = tabBarView.isWindowActive;
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
#else
	BOOL isKeyWindow = tabBarView.isKeyWindow;
#endif

    NSImage *left = nil,
            *right = nil,
            *center = nil;
        
    NSRect bezelRect = overflowButton.frame;
    bezelRect.origin.y -= 1.0;
    bezelRect.size.height += 1.0;
    bezelRect.size.width += 11.0;
    
    MMAttachedTabBarButton *lastAttachedButton = tabBarView.lastAttachedButton;
    
    BOOL displaySelected = lastAttachedButton.state == NSOnState;
    if (lastAttachedButton.isSliding)
        displaySelected = NO;
    
    if (displaySelected) {
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
        center = isWindowActive?_staticSafariAWATFillImage():_staticSafariIWATFillImage();
        right = isWindowActive?_staticSafariAWATRightCapImage():_staticSafariIWATRightCapImage();
#else
		center = isWindowActive ? isKeyWindow ? IMAGE(kKWATFill) : IMAGE(kAWATFill) : IMAGE(kIWATFill);
		right = isWindowActive ? isKeyWindow ? IMAGE(kKWATRightCap) : IMAGE(kAWATRightCap) : IMAGE(kIWATRightCap);
#endif
        
    } else {
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
        right = isWindowActive?_staticSafariAWITRightCapImage():_staticSafariIWITRightCapImage();
#else
		right = isWindowActive ? isKeyWindow ? IMAGE(kKWITRightCap) : IMAGE(kAWITRightCap) : IMAGE(kIWITRightCap);
#endif
    }
    NSDrawThreePartImage(bezelRect, left, center, right, NO, NSCompositeSourceOver, 1.0, tabBarView.isFlipped);
}

-(void)drawBezelOfTabCell:(MMTabBarButtonCell *)cell withFrame:(NSRect)frame inView:(NSView *)controlView {

    if (cell.controlView.frame.size.height < 2)
        return;

    MMTabBarView *tabBarView = controlView.enclosingTabBarView;
    MMAttachedTabBarButton *button = (MMAttachedTabBarButton *)controlView;
        
    NSRect cellFrame = frame;
    
    cellFrame = NSInsetRect(cellFrame, -5.0, 0);
    
    if (cell.controlView.frame.size.height < 2)
        return;

    NSImage *left = nil;
    NSImage *center = nil;
    NSImage *right = nil;

	if (tabBarView.isWindowActive) {
		if (cell.state == NSOnState) {
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
            left = _staticSafariAWATLeftCapImage();
            center = _staticSafariAWATFillImage();
#else
			if (tabBarView.isKeyWindow) {
				left = IMAGE(kKWATLeftCap);
				center = IMAGE(kKWATFill);
			} else {
				left = IMAGE(kAWATLeftCap);
				center = IMAGE(kAWATFill);
			}
#endif
			if (![(MMAttachedTabBarButtonCell *)cell isOverflowButton] || button.isSliding)
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
                right = _staticSafariAWATRightCapImage();
#else
				right = tabBarView.isKeyWindow ? IMAGE(kKWATRightCap) : IMAGE(kAWATRightCap);
#endif
        }
    } else {
    
		if (cell.state == NSOnState) {
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
            left = _staticSafariIWATLeftCapImage();
            center = _staticSafariIWATFillImage();
#else
            left = IMAGE(kIWATLeftCap);
            center = IMAGE(kIWATFill);
#endif
			if (![(MMAttachedTabBarButtonCell *)cell isOverflowButton] || button.isSliding)
#ifdef ORIGINAL_MMTABBAR_SAFARI_TAB_STYLE
                right = _staticSafariIWATRightCapImage();
#else
                right = IMAGE(kIWATRightCap);
#endif
        }
    }

    if (center != nil || left != nil || right != nil)
        NSDrawThreePartImage(cellFrame, left, center, right, NO, NSCompositeSourceOver, 1, controlView.isFlipped);
}

@end

NS_ASSUME_NONNULL_END
