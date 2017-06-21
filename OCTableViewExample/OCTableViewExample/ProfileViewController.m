//
//  ProfileViewController.m
//  OCVeryTemp
//
//  Created by Don Mag on 6/21/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	_theLabel.text = [NSString stringWithFormat:@"Section: [%ld] Row: [%ld]", (long)_profileData.section, (long)_profileData.row];
}

@end
