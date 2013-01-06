//
//  AllListsViewController.h
//  Checklists
//
//  Created by Leo Gau on 12/25/12.
//  Copyright (c) 2012 Leo Gau. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChecklistItem.h"
#import "ListDetailViewController.h"
#import "DataModel.h"

@interface AllListsViewController : UITableViewController <ListDetailViewControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) DataModel *dataModel;

@end
