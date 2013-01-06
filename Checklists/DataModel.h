//
//  DataModel.h
//  Checklists
//
//  Created by Leo Gau on 12/30/12.
//  Copyright (c) 2012 Leo Gau. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject

@property (nonatomic, strong) NSMutableArray *lists;

- (void)saveChecklists;
- (int)indexOfSelectedChecklist;
- (void)setIndexForSelectedChecklist:(int)index;

@end
