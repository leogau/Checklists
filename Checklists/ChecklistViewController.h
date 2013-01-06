//
//  ChecklistsViewController.h
//  Checklists
//
//  Created by Leo Gau on 12/16/12.
//  Copyright (c) 2012 Leo Gau. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemDetailViewController.h"
#import "Checklist.h"

@interface ChecklistViewController : UITableViewController <ItemDetailViewControllerDelegate>

@property (strong, nonatomic) Checklist *checklist;

@end
