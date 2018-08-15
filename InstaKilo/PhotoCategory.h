//
//  PhotoCategories.h
//  InstaKilo
//
//  Created by Wiljay Flores on 2018-08-15.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Photo;

@interface PhotoCategory : NSObject
@property (nonatomic) NSString *name;
@property (nonatomic,readonly) NSArray <Photo*> *photos;

-(instancetype) initWithName:(NSString*)name;

@end
