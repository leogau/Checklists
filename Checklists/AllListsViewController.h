//
//  AllListsViewController.h
//  Checklists
//
//  Created by Leo Gau on 12/25/12.
//  Copyright (c) 2012 Leo Gau. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChecklistItem.h"

@interface AllListsViewController : UITableViewController

@property (strong, nonatomic) NSMutableArray *lists;

@end
