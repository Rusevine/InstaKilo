//
//  DataManager.m
//  InstaKilo
//
//  Created by Wiljay Flores on 2018-08-15.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "DataManager.h"
#import "Photo.h"
#import "PhotoCategory.h"

@interface DataManager ()
@property (nonatomic)NSArray<PhotoCategory*> *categories;
@end

@implementation DataManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupCategories];
    }
    return self;
}

-(void)setupCategories{
    PhotoCategory *dog = [[PhotoCategory alloc] initWithName:@"dog"];
    PhotoCategory *turtle = [[PhotoCategory alloc] initWithName:@"turtle"];
    self.categories = @[dog,turtle];
}

- (NSInteger)numberOfSections {
    return self.categories.count;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section {
    PhotoCategory *category = self.categories[section];
    return category.photos.count;
}

- (Photo *)photoAtIndexPath:(NSIndexPath *)indexPath {
    PhotoCategory *category = self.categories[indexPath.section];
    Photo *photo = category.photos[indexPath.item];
    return photo;
}

- (PhotoCategory *)photoCategoryAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    return self.categories[section];
}

@end
