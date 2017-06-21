//
//  TasksTableViewDataSource.m
//  OCVeryTemp
//
//  Created by Don Mag on 6/21/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import "TasksTableViewDataSource.h"

@interface TasksTableViewDataSource ()

@end

@implementation TasksTableViewDataSource

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
	
	// Configure the cell...
	cell.textLabel.text = [NSString stringWithFormat:@"Row: %ld", (long)indexPath.row];
	
	return cell;
}


@end
