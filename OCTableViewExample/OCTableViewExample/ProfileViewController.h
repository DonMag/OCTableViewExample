//
//  ProfileViewController.h
//  OCVeryTemp
//
//  Created by Don Mag on 6/21/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *theLabel;

@property (strong, nonatomic) NSIndexPath *profileData;

@end
