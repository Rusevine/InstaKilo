//
//  Photo.m
//  InstaKilo
//
//  Created by Wiljay Flores on 2018-08-15.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Photo.h"


@implementation Photo

- (instancetype)initWithImage:(UIImage*)image
{
    self = [super init];
    if (self) {
        _image = image;
    }
    return self;
}

@end
