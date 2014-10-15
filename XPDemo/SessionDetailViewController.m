#import "SessionDetailViewController.h"

@interface SessionDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *speakerLabel;
@property (weak, nonatomic) IBOutlet UILabel *roomLabel;
@property (weak, nonatomic) IBOutlet UITextView *abstractTextview;

@end

@implementation SessionDetailViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.titleLabel.text = self.session[@"Session"];
	self.speakerLabel.text = [NSString stringWithFormat:@"Speaker: %@", self.session[@"Speaker"]];
	self.roomLabel.text = [NSString stringWithFormat:@"Room: %@", self.session[@"Room"]];
	self.abstractTextview.text = self.session[@"Abstract"];
}

@end
