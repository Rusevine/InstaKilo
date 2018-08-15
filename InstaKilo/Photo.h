//
//  Photo.h
//  InstaKilo
//
//  Created by Wiljay Flores on 2018-08-15.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface Photo : NSObject
@property (nonatomic) UIImage *image;

-(instancetype)initWithImage:(UIImage*)image;

@end
