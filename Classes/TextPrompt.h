//
//  TextPrompt.m
//  TextPrompt
//
//  Created by Alec Gorge on 08/12/11.
//

#import <UIKit/UIKit.h>

@interface TextPrompt : UIAlertView {
	UITextField *textField;
	id obj;
	SEL sel;
}

@property (nonatomic, retain) UITextField *textField;

- (id)initWithPrompt:(NSString *)prompt obj:(id)o action:(SEL)se cancelButtonTitle:(NSString *)cancelTitle acceptButtonTitle:(NSString *)acceptTitle;
- (NSString *)enteredText;

@end
