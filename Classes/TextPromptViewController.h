//
//  TextPromptViewController.h
//  TextPrompt
//
//  Created by Objective Coders LLC on 12/30/10.
//

#import <UIKit/UIKit.h>

@interface TextPromptViewController : UIViewController <UIAlertViewDelegate> {
	UILabel *label;
}

@property (nonatomic, retain) IBOutlet UILabel *label;

- (IBAction)buttonPressed:(id)sender;

@end

