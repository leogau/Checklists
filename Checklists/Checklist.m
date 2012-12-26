//
//  Checklist.m
//  Checklists
//
//  Created by Leo Gau on 12/25/12.
//  Copyright (c) 2012 Leo Gau. All rights reserved.
//

#import "Checklist.h"

@implementation Checklist

- (NSMutableArray *)items
{
    if (!_items) {
        _items = [[NSMutableArray alloc] initWithCapacity:20];
    }
    
    return _items;
}

@end
