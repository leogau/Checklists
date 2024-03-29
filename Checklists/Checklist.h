//
//  Checklist.h
//  Checklists
//
//  Created by Leo Gau on 12/25/12.
//  Copyright (c) 2012 Leo Gau. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Checklist : NSObject <NSCoding>

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSMutableArray *items;

@end
