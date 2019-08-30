#import "ClearDock12.h"

%hook SBFloatingDockPlatterView

// Floating Dock
-(void)layoutSubviews {
	%orig;
	self.backgroundView.hidden = YES;
}

%end

%hook SBDockView

// Modern Dock
-(void)layoutSubviews {
	%orig;

	SBWallpaperEffectView *backgroundView = MSHookIvar<SBWallpaperEffectView *>(self, "_backgroundView");
	backgroundView.alpha = 0;
}

// Classic Dock
-(void)setBackgroundAlpha:(double)alpha {
	%orig(0);
}

%end
