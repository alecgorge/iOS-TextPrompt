//
//  TextPromptViewController.m
//  TextPrompt
//
//  Created by Objective Coders LLC on 12/30/10.
//

#import "TextPromptViewController.h"
#import "TextPrompt.h"

@implementation TextPromptViewController

@synthesize label;

- (IBAction)buttonPressed:(id)sender {
	TextPrompt *alert = [[TextPrompt alloc] initWithPrompt:@"Enter some text:" obj:self action:@selector(onSave:) cancelButtonTitle:@"Cancel" acceptButtonTitle:@"Save"];
	[alert show];
	[alert release];
}

- (void)onSave:(NSString*)t {
	self.label.text = t;
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
