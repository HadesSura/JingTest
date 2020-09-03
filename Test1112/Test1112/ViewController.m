//
//  ViewController.m
//  Test1112
//
//  Created by Mac01 on 2020/7/22.
//  Copyright © 2020 Mac01. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
//引入头文件
#import <objc/runtime.h>

//#import "TestAction.h"
#import "ActionGroup.h"
#import "TestActionMng.h"
#import "TestAction+Test1.h"
#import <ReactiveObjC/ReactiveObjC.h>
#import <Lottie/Lottie.h>

@interface ViewController ()
@property (nonatomic, strong) LOTAnimationView * lottieView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UIView *topView = [[UIView alloc]init];
//    topView.backgroundColor = [UIColor redColor];
//    [self.view addSubview:topView];
//    [topView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.view).offset(50);
//        make.left.equalTo(self.view).offset(10);
//        make.right.equalTo(self.view).offset(-10);
//        make.bottom.equalTo(self.view).offset(-50);
//    }];
//
//    UIView *midView = [[UIView alloc]init];
//    midView.backgroundColor = [UIColor blueColor];
//    [topView addSubview:midView];
//    [midView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(topView).offset(50);
//        make.leading.equalTo(topView).inset(50);
//        make.width.equalTo(@100);
//        make.height.equalTo(@(200));
//    }];
//
//    UIView *boView = [[UIView alloc]init];
//    boView.backgroundColor = [UIColor blackColor];
//    [topView addSubview:boView];
//    [boView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(midView).offset(50);
//        make.leading.equalTo(midView.mas_right).offset(50);
//        make.trailing.equalTo(topView).inset(40);
//        make.height.equalTo(@(200));
//    }];
    

#pragma mark --- 关联对象
//    //要关联的对象的键值，一般设置成静态的，用于获取关联对象的值
//    static char UIButtonKey;
//
//    //创建两个需要关联的对象
//    UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
//    button.center = self.view.center;
//    button.backgroundColor = [UIColor redColor];
//    [self.view addSubview:button];
//
//    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
//    label.backgroundColor = [UIColor yellowColor];
//    label.text =@"获取";
//    //给对象确立关联（让label关联到button上）
//    objc_setAssociatedObject(button, &UIButtonKey, label, OBJC_ASSOCIATION_RETAIN);
//
//    //根据键值获取到关联对象
//    UILabel * lab =  objc_getAssociatedObject(button, &UIButtonKey);
//    NSLog(@"lab.text = %@",lab.text);
//
//    //断开关联
//    objc_setAssociatedObject(button, &UIButtonKey, nil, OBJC_ASSOCIATION_ASSIGN);
//
//    UILabel * lab1 =  objc_getAssociatedObject(button, &UIButtonKey);
//    NSLog(@"断开关联之后的lab1.text = %@",lab1.text);
    
//    TestAction *ac = [[TestActionMng shareMng] defaultAction];
//    [ac test];
    
#pragma mark --- 反射机制
//    Class class = NSClassFromString(@"OneViewController");
//    UIViewController *vc = [[class alloc]init];
//    SEL selector = NSSelectorFromString(@"getDataList");
//    [vc performSelector:selector];
////
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self presentViewController:vc animated:YES completion:^{
//
//        }];
//    });
//
//    [[vc rac_signalForSelector:@selector(btnClicked)] subscribeNext:^(RACTuple * _Nullable x) {
//        NSLog(@"点击了按钮");
//    }];
//
//    [[vc rac_signalForSelector:@selector(viewWillAppear:)] subscribeNext:^(RACTuple * _Nullable x) {
//        SEL selector = NSSelectorFromString(@"btnClicked");
//        [vc performSelector:selector];
//    }];
    
#pragma mark --- 延迟5秒
//    [[RACScheduler mainThreadScheduler]afterDelay:5.0 schedule:^{
//
//    }];
    
#pragma mark --- 每x秒运行一次
//    [[[RACSignal interval:2 onScheduler:[RACScheduler mainThreadScheduler]] takeUntil:self.rac_willDeallocSignal] subscribeNext:^(NSDate * _Nullable x) {
//
//    }];
#pragma mark --- RAC
    //RACSignal
//    RACSignal *signal = [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
//        [subscriber sendNext:@"45678"];
//        [subscriber sendCompleted];
//        return [RACDisposable disposableWithBlock:^{
//            NSLog(@"信号被销毁");
//        }];
//    }];
//
//    [signal subscribeNext:^(id  _Nullable x) {
//        NSLog(@"接受到数值为: %@",x);
//    }];
//
    
    //RACSubject
//    RACSubject *sub = [RACSubject subject];
//    [sub subscribeNext:^(id  _Nullable x) {
//        NSLog(@"接受到数值为: %@",x);
//    }];
//
//    [sub sendNext:@"65435"];
    
    //RACReplaySubject
//    RACReplaySubject *reSub = [RACReplaySubject subject];
//
//    [reSub sendNext:@"1214"];
//
//
//    [reSub subscribeNext:^(id  _Nullable x) {
//        NSLog(@"第一个订阅者接收到的数据%@",x);
//    }];
//
//
//    [reSub sendNext:@"1314"];
//    [reSub subscribeNext:^(id  _Nullable x) {
//        NSLog(@"第二个订阅者接收到的数据%@",x);
//
//    }];
    
    
#pragma mark --- RACTuple、RACSequence快速遍历数组
//    NSArray *arr = @[@"1",@"2",@"3"];
//    RACTuple *tuple = [RACTuple tupleWithObjectsFromArray:arr];
//
//    [arr.rac_sequence.signal subscribeNext:^(id  _Nullable x) {
//        NSLog(@"haha%@",x);
//    }];
//
//    NSLog(@"%@",tuple[2]);
    
    
    
//    NSDictionary *dic = @{@"account":@"flower",@"age": @"18",@"age22": @"1844"};
//
//    //遍历字典
//    [dic.rac_sequence.signal subscribeNext:^(id  _Nullable x) {
//
//         NSString *key = x[0];
//         NSString *value = x[1];
//         NSLog(@"%@ %@",key,value);
//
//
//        //RACTupleUnpack: 用来解析元组
//        //宏里面的参数，传需要解析出来的变量名
//        // = 右边，放需要解析的元组
//        //等价于上面2行
//
////        RACTupleUnpack(NSString *key,NSString *value) = x;
////        NSLog(@"%@ %@",key,value);
//    }];
    
    
    //3.字典转模型
    //3.1 OC写法
//    NSDictionary *dict =  [NSDictionary readLocalFileWithName:@"test"];
//
//    NSArray *dictArr = dict[@"data"];
//    NSMutableArray *items = [NSMutableArray array];
//    for (NSDictionary *dic in dictArr) {
//        RACBasicKnowledgeModel *item = [RACBasicKnowledgeModel modelWithDic:dic];
//        [items addObject:item];
//    }
//
//
//    //3.2RAC写法
//    NSMutableArray *lists = [NSMutableArray array];
//    [dictArr.rac_sequence.signal subscribeNext:^(id  _Nullable x) {
//        RACBasicKnowledgeModel *model  = [RACBasicKnowledgeModel modelWithDic:x];
//        [lists addObject:model];
//    }];
//
//
//    NSLog(@"lists: %@",lists);
//
//    //3.3 RAC高级写法
//    //会把集合中所有的元素都映射成一个新的对象
//    NSArray *lists1 =   [[dictArr.rac_sequence map:^id _Nullable(NSDictionary * _Nullable value) {
//        //value 就是集合中的元素
//        //id 返回对象就是映射的值
//        return [RACBasicKnowledgeModel modelWithDic:value];
//    }] array];
//    NSLog(@"lists1: %@",lists1);
    
    
    // 1.代替代理
     // 需求：自定义redView,监听红色view中按钮点击
     // 之前都是需要通过代理监听，给红色View添加一个代理属性，点击按钮的时候，通知代理做事情
     // rac_signalForSelector:把调用某个对象的方法的信息转换成信号，就要调用这个方法，就会发送信号。
     // 这里表示只要redV调用btnClick:,就会发出信号，订阅就好了。
//     [[redV rac_signalForSelector:@selector(btnClick:)] subscribeNext:^(id x) {
//         NSLog(@"点击红色按钮");
//     }];

     // 2.KVO
     // 把监听redV的center属性改变转换成信号，只要值改变就会发送信号
     // observer:可以传入nil
//     [[redV rac_valuesAndChangesForKeyPath:@"center" options:NSKeyValueObservingOptionNew observer:nil] subscribeNext:^(id x) {
//
//         NSLog(@"%@",x);
//
//     }];

     // 3.监听事件
     // 把按钮点击事件转换为信号，点击按钮，就会发送信号
//     [[self.btn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
//
//         NSLog(@"按钮被点击了");
//     }];

     // 4.代替通知
     // 把监听到的通知转换信号
//     [[[NSNotificationCenter defaultCenter] rac_addObserverForName:UIKeyboardWillShowNotification object:nil] subscribeNext:^(id x) {
//         NSLog(@"键盘弹出");
//     }];

     // 5.监听文本框的文字改变
//    [_textField.rac_textSignal subscribeNext:^(id x) {
//
//        NSLog(@"文字改变了%@",x);
//    }];

    // 6.处理多个请求，都返回结果的时候，统一做处理.
//     RACSignal *request1 = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//         [subscriber sendNext:@"发送请求1"];
//         [subscriber sendCompleted];
//
//         return nil;
//     }];
//
//     RACSignal *request2 = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//         [subscriber sendNext:@"发送请求2"];
//         [subscriber sendCompleted];
//
//         return nil;
//     }];
//
//     // 使用注意：几个信号，参数一的方法就几个参数，每个参数对应信号发出的数据。
//     [self rac_liftSelector:@selector(updateUIWithR1:r2:) withSignalsFromArray:@[request1,request2]];
    
#pragma mark --- 常见宏
    //用于给某个对象的某个属性绑定。
    // 只要文本框文字改变，就会修改label的文字
//    RAC(self.accountLabel,text) = _textField.rac_textSignal;
    
    //监听某个对象的某个属性,返回的是信号
//    [RACObserve(self.view, center) subscribeNext:^(id x) {
//
//        NSLog(@"%@",x);
//    }];
    
    
    //@weakify(Obj)和@strongify(Obj),一般两个都是配套使用,解决循环引用问题
//    @weakify(self);
//    [RACObserve(self.payButton, selected) subscribeNext:^(id  _Nullable x) {
//       @strongify(self);
//        self.payButton.backgroundColor  = [x boolValue] ?[UIColor colorWithHex:0x0165B8F] : [UIColor whiteColor];
//    }];
    
    // 把参数中的数据包装成元组
//    RACTuple *tuple = RACTuplePack(@10,@20);
//
    // 把参数中的数据包装成元组
//    RACTuple *tuple = RACTuplePack(@"age",@20);
    // 解包元组，会把元组的值，按顺序给参数里面的变量赋值
//    // name = @"age" age = @20
//    RACTupleUnpack(NSString *name,NSNumber *age) = tuple;
    
    // 需求：假设在一个信号中发送请求，每次订阅一次都会发送请求，这样就会导致多次请求。
    // 解决每次订阅不要都请求数据（或者说不管订阅多少次）  只要请求一次 每次订阅只要拿到数据

#pragma mark ---  RACMulticastConnection
//     //1.创建信号
//    RACSignal *signal = [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
//
//        NSLog(@"发送请求");
//        [subscriber sendNext:@"aaaa"];
//        return nil;
//    }];
//
//    NSLog(@"======不使用RACMulticastConnection=====");
//
//
//
//    //如果不使用RACMulticastConnection的话 订阅几次就发送请求几次
//    [signal subscribeNext:^(id  _Nullable x) {
//
//        NSLog(@"接收数据1:%@",x);
//    }];
//    [signal subscribeNext:^(id  _Nullable x) {
//        NSLog(@"接收数据2:%@",x);
//    }];
//    NSLog(@"======使用RACMulticastConnection=====");
//
//    //        //2.把信号转换成连接类
//    RACMulticastConnection *connection =  [signal publish];
//    //    RACMulticastConnection *connection = [signal multicast:[RACReplaySubject subject]]];
//
//    //3.订阅连接类的信号
//    [connection.signal subscribeNext:^(id  _Nullable x) {
//
//        NSLog(@"接收数据1:%@",x);
//    }];
//    [connection.signal subscribeNext:^(id  _Nullable x) {
//         NSLog(@"接收数据2:%@",x);
//     }];
//    //4.连接
//    [connection connect];
    
    __weak typeof(self) weakSelf = self;
    [self.lottieView playWithCompletion:^(BOOL animationFinished) {
        [weakSelf removeLottie];
    }];
    
    //循环播放
//    [_lottieView setLoopAnimation:YES];

}

- (LOTAnimationView *)lottieView{
    if (_lottieView == nil) {
        _lottieView = [LOTAnimationView animationNamed:@"follow"];
        [self.view addSubview:_lottieView];
        [_lottieView setContentMode:UIViewContentModeScaleToFill];
        [_lottieView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(self.view);
            make.height.equalTo(@(200));
            make.width.equalTo(@(200));
        }];
    }
    return _lottieView;
}

- (void)removeLottie{
    if (_lottieView) {
        [_lottieView removeFromSuperview];
        _lottieView = nil;
    }
}

// 更新UI
- (void)updateUIWithR1:(id)data r2:(id)data1
{
    NSLog(@"更新UI%@  %@",data,data1);
}


@end
