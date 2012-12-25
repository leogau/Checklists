//
//  itemDetailViewController.h
//  Checklists
//
//  Created by Leo Gau on 12/19/12.
//  Copyright (c) 2012 Leo Gau. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ItemDetailViewController;
@class ChecklistItem;
@protocol ItemDetailViewControllerDelegate <NSObject>

- (void)itemDetailViewControllerDidCancel:(ItemDetailViewController *)controller;
- (void)itemDetailViewController:(ItemDetailViewController *)controller
          didFinishAddingItem:(ChecklistItem *)item;
- (void)itemDetailViewController:(ItemDetailViewController *)controller
         didFinishEditingItem:(ChecklistItem *)item;

@end


@interface ItemDetailViewController : UITableViewController <UITextFieldDelegate>

- (IBAction)cancel;
- (IBAction)save;

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveBarButton;
@property (weak, nonatomic) id <ItemDetailViewControllerDelegate> delegate;
@property (strong, nonatomic) ChecklistItem *itemToEdit;

@end
