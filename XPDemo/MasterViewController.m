#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController ()
@end

@implementation MasterViewController {
	NSArray *_sessions;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	NSString *sessionsFilePath = [[NSBundle mainBundle] pathForResource:@"sessions" ofType:@"plist"];
	_sessions = [NSArray arrayWithContentsOfFile:sessionsFilePath];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _sessions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	NSDictionary *tag = _sessions[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MasterCell" forIndexPath:indexPath];
	cell.textLabel.text = tag[@"Tag"];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.identifier isEqualToString:@"ShowTag"]) {
		NSInteger row = self.tableView.indexPathForSelectedRow.row;
		DetailViewController *detail = segue.destinationViewController;
		detail.tag = _sessions[row];
	}
}

@end
