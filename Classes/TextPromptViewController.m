//
//  TextPromptViewController.m
//  TextPrompt
//
//  Created by Objective Coders LLC on 12/30/10.
//

#import "TextPromptViewController.h"
#import "OCPromptView.h"

@implementation TextPromptViewController

@synthesize label;

- (IBAction)buttonPressed:(id)sender {
	OCPromptView *alert = [[OCPromptView alloc] initWithPrompt:@"Enter some text:" delegate:self cancelButtonTitle:@"Cancel" acceptButtonTitle:@"OK"];
	[alert show];
	[alert release];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if (buttonIndex != [alertView cancelButtonIndex]) {
		[self.label setText:[(OCPromptView *)alertView enteredText]];
	}
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	self.label = nil;
}


- (void)dealloc {
	[label release];
    [super dealloc];
}

@end
