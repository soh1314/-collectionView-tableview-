//
//  PaipaiCell.h
//  布局
//
//  Created by 刘仰清 on 16/2/10.
//  Copyright © 2016年 刘仰清. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaipaiCell : UITableViewCell<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (nonatomic,retain)UICollectionView * imageCol;
@property (nonatomic,strong)NSArray * imageArray;
@end
