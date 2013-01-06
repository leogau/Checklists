//
//  DataModel.m
//  Checklists
//
//  Created by Leo Gau on 12/30/12.
//  Copyright (c) 2012 Leo Gau. All rights reserved.
//

#import "DataModel.h"

#define CHECKLIST_INDEX_KEY @"ChecklistIndex"
#define ARCHIVE_KEY @"Checklists"
#define PATH_COMPONENT @"Checklists.plist"

@implementation DataModel

- (id)init
{
    self = [super init];
    if (self) {
        [self loadChecklists];
        [self registerDefaults];
    }
    
    return self;
}

- (void)registerDefaults
{
    NSDictionary *dictionary = @{CHECKLIST_INDEX_KEY : @-1};
    [[NSUserDefaults standardUserDefaults] registerDefaults:dictionary];
}

- (int)indexOfSelectedChecklist
{
    return [[NSUserDefaults standardUserDefaults] integerForKey:CHECKLIST_INDEX_KEY];
}

- (void)setIndexForSelectedChecklist:(int)index
{
    [[NSUserDefaults standardUserDefaults] setInteger:index forKey:CHECKLIST_INDEX_KEY];
}

- (NSString *)documentsDirectory
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    return documentDirectory;
}

- (NSString *)dataFilePath
{
    return [[self documentsDirectory] stringByAppendingPathComponent:PATH_COMPONENT];
}

- (void)saveChecklists
{
    NSMutableData *data = [[NSMutableData alloc] init];
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
    [archiver encodeObject:self.lists forKey:ARCHIVE_KEY];
    [archiver finishEncoding];
    [data writeToFile:[self dataFilePath] atomically:YES];
}

- (void)loadChecklists
{
    NSString *filePath = [self dataFilePath];
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
        NSData *data = [[NSData alloc] initWithContentsOfFile:filePath];
        NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
        self.lists = [unarchiver decodeObjectForKey:ARCHIVE_KEY];
        [unarchiver finishDecoding];
    } else {
        self.lists = [[NSMutableArray alloc] initWithCapacity:20];
    }
}

@end
