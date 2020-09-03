//
//  OneViewController.m
//  Test1112
//
//  Created by Mac01 on 2020/7/29.
//  Copyright © 2020 Mac01. All rights reserved.
//

#import "OneViewController.h"
#import <ReactiveObjC/ReactiveObjC.h>
#import "Masonry.h"
#import "OneViewVM.h"

@interface OneViewController ()
@property (nonatomic, strong) OneViewVM *viewModel;
@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    self.viewModel = [[OneViewVM alloc]init];
    
    [[RACObserve(self.viewModel, ranStr) skip:1] subscribeNext:^(id  _Nullable x) {
        NSLog(@"%@",x);
    }];
    
    UIButton *btn = [[UIButton alloc]init];
//    [btn addTarget:self action:@selector(btnClicked) forControlEvents:(UIControlEventTouchUpInside)];
    [[btn rac_signalForControlEvents:(UIControlEventTouchUpInside)] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [self btnClicked];
    }];
    btn.backgroundColor = [UIColor blackColor];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(self.view).offset(50);
        make.width.height.equalTo((@100));
    }];
}

- (void)btnClicked{
    [[[self.viewModel.requestRemoteDataCommand execute:@1] deliverOnMainThread] subscribeNext:^(id  _Nullable x) {
        NSLog(@"返回数据%@",x);
    } error:^(NSError * _Nullable error) {
        
    } completed:^{
        
    }];
}

- (void)getDataList{
    NSLog(@"4352");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
