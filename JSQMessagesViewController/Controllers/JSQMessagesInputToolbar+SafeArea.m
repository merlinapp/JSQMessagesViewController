//
//  JSQMessagesInputToolbar+SafeArea.m
//

#import "JSQMessagesInputToolbar+SafeArea.h"

@implementation JSQMessagesInputToolbar (SafeArea)

- (void)didMoveToWindow {
    [super didMoveToWindow];
    NSLog(@"didMoveToWindow");
    if (@available(iOS 11.0, *)) {
        
        UILayoutGuide * _Nonnull safeArea = self.window.safeAreaLayoutGuide;
        if (safeArea) {
            NSLayoutYAxisAnchor * _Nonnull bottomAnchor = safeArea.bottomAnchor;
            [[self bottomAnchor] constraintLessThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0].active = YES;
        }
    }
}

@end
