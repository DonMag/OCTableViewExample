//
//  TasksTableViewDelegate.h
//  OCVeryTemp
//
//  Created by Don Mag on 6/21/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import <UIKit/UIKit.h>

// our custom delegate - allows us to pass the "didSelect" indexPath to another class
@protocol TasksTableActionDelegate <NSObject>

- (void)cellSelectedAction:(NSIndexPath *)indexPath;

@end

@interface TasksTableViewDelegate : NSObject <UITableViewDelegate>
{
	id <TasksTableActionDelegate> _actionDelegate;
}

@property (nonatomic,strong) id actionDelegate;

@end
