#import "DetailViewController.h"
#import "SessionDetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController {
	NSArray *_sessions;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	_sessions = _tag[@"Sessions"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _sessions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	id session = _sessions[(NSUInteger) indexPath.row];
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SessionCell" forIndexPath:indexPath];
	cell.textLabel.text = session[@"Session"];
	cell.textLabel.font = [UIFont systemFontOfSize:17];
	cell.textLabel.numberOfLines = 0;
	return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.identifier isEqualToString:@"ShowSessionDetail"]) {
		NSUInteger row = (NSUInteger) self.tableView.indexPathForSelectedRow.row;
		NSDictionary *session = _sessions[row];
		SessionDetailViewController *detail = segue.destinationViewController;
		detail.session = session;
	}
}


@end
