//
//  TextPrompt.m
//  TextPrompt
//
//  Created by Alec Gorge on 08/12/11.
//

#import "TextPrompt.h"

@implementation TextPrompt

@synthesize textField;

- (id)initWithPrompt:(NSString *)prompt obj:(id)o action:(SEL)se cancelButtonTitle:(NSString *)cancelTitle acceptButtonTitle:(NSString *)acceptTitle {
	while ([prompt sizeWithFont:[UIFont systemFontOfSize:18.0]].width > 240.0) {
		prompt = [NSString stringWithFormat:@"%@...", [prompt substringToIndex:[prompt length] - 4]];
	}
    if ((self = [super initWithTitle:prompt message:@"\n" delegate:self cancelButtonTitle:cancelTitle otherButtonTitles:acceptTitle, nil])) {
        UITextField *theTextField = [[UITextField alloc] initWithFrame:CGRectMake(12.0, 45.0, 260.0, 31.0)]; 
		[theTextField setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
		//[theTextField setAutocapitalizationType:UITextAutocapitalizationTypeWords];
		[theTextField setBorderStyle:UITextBorderStyleRoundedRect];
		[theTextField setBackgroundColor:[UIColor clearColor]];
		//[theTextField setTextAlignment:UITextAlignmentCenter];
		
        [self addSubview:theTextField];
		
        self.textField = theTextField;
        [theTextField release];
		
		// if not >= 4.0
		NSString *sysVersion = [[UIDevice currentDevice] systemVersion];
		if (![sysVersion compare:@"4.0" options:NSNumericSearch] == NSOrderedDescending) {
			CGAffineTransform translate = CGAffineTransformMakeTranslation(0.0, 130.0); 
			[self setTransform:translate];
		}
		
		obj = [o retain];
		sel = se;
    }
    return self;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if (buttonIndex != [alertView cancelButtonIndex]) {
		[obj performSelector:sel withObject:self.textField.text];
		[obj release];
	}
}

- (void)show {
    [textField becomeFirstResponder];
    [super show];
}

- (NSString *)enteredText {
    return textField.text;
}

- (void)dealloc {
    [textField release];
    [super dealloc];
}

@end
