//
//  TextPromptAppDelegate.h
//  TextPrompt
//
//  Created by Objective Coders LLC on 12/30/10.
//

#import <UIKit/UIKit.h>

@class TextPromptViewController;

@interface TextPromptAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TextPromptViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TextPromptViewController *viewController;

@end

