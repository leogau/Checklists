//
//  ChecklistItem.h
//  Checklists
//
//  Created by Leo Gau on 12/16/12.
//  Copyright (c) 2012 Leo Gau. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChecklistItem : NSObject <NSCoding>

@property (nonatomic, copy) NSString *text;
@property (nonatomic, assign) BOOL checked;

- (void)toggleChecked;

@end
