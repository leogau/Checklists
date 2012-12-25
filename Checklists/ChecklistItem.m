//
//  ChecklistItem.m
//  Checklists
//
//  Created by Leo Gau on 12/16/12.
//  Copyright (c) 2012 Leo Gau. All rights reserved.
//

#import "ChecklistItem.h"

@implementation ChecklistItem

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        self.text = [aDecoder decodeObjectForKey:@"Text"];
        self.checked = [aDecoder decodeBoolForKey:@"Checked"];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.text forKey:@"Text"];
    [aCoder encodeBool:self.checked forKey:@"Checked"];
}

-(void)toggleChecked
{
    self.checked = !self.checked;
}

@end
