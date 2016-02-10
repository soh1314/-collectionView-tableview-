//
//  ViewController.m
//  布局
//
//  Created by 刘仰清 on 16/2/10.
//  Copyright © 2016年 刘仰清. All rights reserved.
//

#import "ViewController.h"
#import "PaipaiCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView * tableView;
@property(nonatomic,strong)NSMutableArray * dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dataArray = [NSMutableArray array];
    [_dataArray addObject:@[@"5"]];
    [_dataArray addObject:@[@"10"]];
    [_dataArray addObject:@[@"5"]];
    [_dataArray addObject:@[@"10"]];
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[PaipaiCell class] forCellReuseIdentifier:@"PaiPaiCellId"];
    [self.tableView reloadData];
    
    
    UIButton * addBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 250, 50, 50)];
    addBtn.backgroundColor = [UIColor greenColor];
    [self.view addSubview:addBtn];
    [addBtn addTarget:self action:@selector(addAction:) forControlEvents:UIControlEventTouchUpInside];

}
- (void)addAction:(id)sender
{
    [self.dataArray addObject:@[@"10"]];
//    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationAutomatic];
    [self.tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:0 inSection:0]] withRowAnimation:UITableViewRowAnimationAutomatic];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PaipaiCell * cell = [tableView dequeueReusableCellWithIdentifier:@"PaiPaiCellId"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor yellowColor];
    cell.imageArray = self.dataArray;
    return cell ;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    float height = 150;
    NSInteger lines = self.dataArray.count /4 ;
    NSInteger remains = self.dataArray.count % 4;
    if (self.dataArray.count > 4) {
        height += lines * 80;
    }
    return height;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
