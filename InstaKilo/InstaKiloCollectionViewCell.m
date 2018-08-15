//
//  InstaKiloCollectionViewCell.m
//  InstaKilo
//
//  Created by Wiljay Flores on 2018-08-15.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "InstaKiloCollectionViewCell.h"
#import "Photo.h"
@interface InstaKiloCollectionViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;

@end

@implementation InstaKiloCollectionViewCell

-(void)setPhoto:(Photo *)photo{
    self.photoImageView.image = photo.image;
    _photo = photo;
}
@end
