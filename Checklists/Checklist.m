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

#pragma mark - NSCoding delegate

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        self.name = [aDecoder decodeObjectForKey:@"Name"];
        self.items = [aDecoder decodeObjectForKey:@"Items"];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.name forKey:@"Name"];
    [aCoder encodeObject:self.items forKey:@"Items"];
}

@end
