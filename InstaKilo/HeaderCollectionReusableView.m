//
//  HeaderCollectionReusableView.m
//  InstaKilo
//
//  Created by Wiljay Flores on 2018-08-15.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "HeaderCollectionReusableView.h"
#import "PhotoCategory.h"

@interface HeaderCollectionReusableView()
@property (weak, nonatomic) IBOutlet UILabel *headerLabel;

@end
@implementation HeaderCollectionReusableView

-(void)configureWithCategory:(PhotoCategory*)category{
    self.headerLabel.text = category.name;
}
@end
