//
//  TasksViewController.m
//  OCVeryTemp
//
//  Created by Don Mag on 6/21/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import "TasksViewController.h"

@interface TasksViewController ()

@property (weak, nonatomic) IBOutlet UITableView *theTableView;

@property (strong, nonatomic) TasksTableViewDelegate *theDelegate;
@property (strong, nonatomic) TasksTableViewDataSource *theDatasource;

@property (strong, nonatomic) NSIndexPath *profileIndexPath;

@end

@implementation TasksViewController

- (void)viewDidLoad {
    [super viewDidLoad];

	// register the default cell class
	[_theTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];

	// instantiate the Delegate and Datasource
	_theDelegate = [[TasksTableViewDelegate alloc] init];
	_theDatasource = [[TasksTableViewDataSource alloc] init];
	
	// assign delegate and datasource
	_theTableView.delegate = _theDelegate;
	_theTableView.dataSource = _theDatasource;
	
	// assign our custom delegate
	_theDelegate.actionDelegate = self;
	
	// add the table to the view
	[self.view addSubview:_theTableView];
	
}

#pragma mark - custom delegate

- (void)cellSelectedAction:(NSIndexPath *)indexPath {

	// save the passed data to a local property
	_profileIndexPath = indexPath;
	
	// manually trigger the segue
	[self performSegueWithIdentifier:@"profileSegue" sender:nil];
	
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

	// get a reference to the destination controller
	ProfileViewController *vc = (ProfileViewController *)segue.destinationViewController;
	
	// assign the profile data
	vc.profileData = _profileIndexPath;
	
}

@end
