#import "LoginViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTextfield;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextfield;

@end

@implementation LoginViewController

- (IBAction)loginButtonTouched:(id)sender {
	if ([self.usernameTextfield.text isEqualToString:@"hugo"] &&
		[self.passwordTextfield.text isEqualToString:@"123"]) {
		[self performSegueWithIdentifier:@"Login" sender:sender];
	}
}

@end
