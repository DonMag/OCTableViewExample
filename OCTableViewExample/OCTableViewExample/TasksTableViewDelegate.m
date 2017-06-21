//
//  TasksTableViewDelegate.m
//  OCVeryTemp
//
//  Created by Don Mag on 6/21/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import "TasksTableViewDelegate.h"

@implementation TasksTableViewDelegate

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

	// just for debugging
	NSLog(@"tapped %@", indexPath);
	
	// IF another class assigned itself as our custom delegate, send the data
	if (_actionDelegate) {
		[_actionDelegate cellSelectedAction:indexPath];
	}
	
}

@end
