#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>
#import <Cephei/HBPreferences.h>


%group COR2

HBPreferences *ChKey = [[HBPreferences alloc] initWithIdentifier:@"com.bandarhelal.cornerradiuschanger"];

%hook MTMaterialView

- (void)_setContinuousCornerRadius:(double)arg1 {
    arg1 = [[ChKey objectForKey:@"CornerValue"] intValue];
    %orig;
} 
%end

%hook MTMaterialView
- (double)_continuousCornerRadius {
    return [[ChKey objectForKey:@"CornerValue"] intValue];
} 
%end
%end

%ctor {
    HBPreferences *KeyEn = [[HBPreferences alloc] initWithIdentifier:@"com.bandarhelal.cornerradiuschanger"];
   bool Enable = [([KeyEn objectForKey:@"EnableChangeCor"] ?: @(NO)) boolValue];


if (Enable) {
   %init(COR2);
  
}
}
