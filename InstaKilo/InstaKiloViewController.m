//
//  ViewController.m
//  InstaKilo
//
//  Created by Wiljay Flores on 2018-08-15.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "InstaKiloViewController.h"
#import "DataManager.h"
#import "InstaKiloCollectionViewCell.h"
#import "HeaderCollectionReusableView.h"

@interface InstaKiloViewController () <UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) DataManager *manager;

@end

@implementation InstaKiloViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"InstaKilo";
    self.manager = [[DataManager alloc] init];
    
}

- (void)viewWillLayoutSubviews {
    UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *)self.collectionView.collectionViewLayout;
    layout.sectionHeadersPinToVisibleBounds = YES;
    CGSize size = CGSizeMake(self.collectionView.bounds.size.width/2, self.collectionView.bounds.size.width/2);
    layout.itemSize = size;
    
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.manager numberOfItemsInSection:section];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.manager numberOfSections];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    InstaKiloCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.photo = [self.manager photoAtIndexPath:indexPath];
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    HeaderCollectionReusableView *header = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"sectionHeader" forIndexPath:indexPath];
    PhotoCategory *category = [self.manager photoCategoryAtIndexPath:indexPath];
    [header configureWithCategory:category];
    return header;
}



@end
