//
//  HeaderCollectionReusableView.h
//  InstaKilo
//
//  Created by Wiljay Flores on 2018-08-15.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PhotoCategory;

@interface HeaderCollectionReusableView : UICollectionReusableView
- (void)configureWithCategory:(PhotoCategory *)category;

@end
