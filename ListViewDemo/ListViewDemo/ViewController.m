//
//  ViewController.m
//  ListViewDemo
//
//  Created by JeffreyPH on 16/3/30.
//  Copyright © 2016年 JeffreyPH. All rights reserved.
//

#import "ViewController.h"
#import "ListView.h"
#import "ListItem.h"


@interface ViewController ()


- (IBAction)action:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)action:(UIButton *)sender {
    NSArray *titles = @[@"扫一扫",@"加好友",@"创建讨论组",@"发送到电脑",@"面对面快传",@"收钱"];
    NSMutableArray *items = [NSMutableArray array];
    for(int i = 0; i < titles.count; i ++){
        NSString *iconName = [NSString stringWithFormat:@"listView.bundle/right_menu%d",i];
        ListItem *item = [ListItem itemWithIcon:iconName title:titles[i]];
        [items addObject:item];
    }
    ListView *list = [ListView listViewWithReferFrame:sender.frame items:items select:^(NSInteger selectIndex) {
        NSLog(@"%@",@(selectIndex));
    }];
    [self.view addSubview:list];
}

@end
