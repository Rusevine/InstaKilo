//
//  PhotoCategories.m
//  InstaKilo
//
//  Created by Wiljay Flores on 2018-08-15.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "PhotoCategory.h"
#import "Photo.h"

@implementation PhotoCategory

-(instancetype) initWithName:(NSString *)name{
    if(self = [super init]){
        _name = name;
        [self setupImages:name];
    }
    return self;  
}

-(void)setupImages:(NSString *)name{
    NSString *lowercaseName = name.lowercaseString;
    NSMutableArray *imageTemp = [NSMutableArray array];
    for(NSInteger i=1; i<7; ++i){
        NSString *imageName = [NSString stringWithFormat:@"%@0%ld",lowercaseName,i];
        UIImage *image = [UIImage imageNamed:imageName];
        Photo *photo = [[Photo alloc] initWithImage:image];
        [imageTemp addObject:photo];
    }
    _photos = [imageTemp copy];
}

@end
