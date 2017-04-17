//
//  ViewController.m
//  PageViewControllerDemo
//
//  Created by 宋俊红 on 16/9/2.
//  Copyright © 2016年 Juny_song. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPageViewControllerDelegate,UIPageViewControllerDataSource>

@property (nonatomic, strong) UIPageViewController *pageVC;
@property (nonatomic, strong) NSArray *dataArray;

@property (nonatomic, strong) UIViewController *nowVC;
@property (nonatomic, strong) UIViewController *beforeVC;
@property (nonatomic, strong) UIViewController *afereVC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithWhite:1 alpha:1];
    
    
   
    
    _beforeVC = [[UIViewController alloc]init];
    _beforeVC.view.backgroundColor = [UIColor yellowColor];
    _beforeVC.title = @"before";
 
    _afereVC = [[UIViewController alloc]init];
    _afereVC.view.backgroundColor = [UIColor redColor];
    _afereVC.title = @"after";
    
    //初始化PageViewController
    _pageVC = [[UIPageViewController alloc]initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationVertical options:nil];
    _pageVC.dataSource = self;
    _pageVC.delegate = self;
    
    
    //为_dataArray初始化，dataArray内包含所有展示的ViewController
    UIViewController* vc1 = [[UIViewController alloc]init];
    vc1.view.backgroundColor = [UIColor greenColor];

    _nowVC = vc1;
    //设置当前显示的ViewController
    [_pageVC setViewControllers:@[vc1] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:^(BOOL finished) {
        
    }];
    
    [self addChildViewController:_pageVC];
    _pageVC.view.frame = self.view.bounds;
    [self.view addSubview:_pageVC.view];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Delegate
//设置当前viewController之前的VC
- (UIViewController*)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
//    NSInteger num = [_dataArray indexOfObject:viewController];
//    NSLog(@"\n\n\nbefore %li",(long)num);
//    NSLog(@"%@",viewController);
//    NSLog(@"%@",[viewController class]);
//    if ((num == 0) || (num == NSNotFound) || num == _dataArray.count-1) {
//        return nil;
//    }
//    num --;
//    return _dataArray[num];
//    return _beforeVC;
    UIViewController *vc = [[UIViewController alloc]init];
    vc.view.backgroundColor = [UIColor yellowColor];
    return vc;
}

//设置当前VC之后的VC
- (UIViewController*)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    
//    NSInteger num = [_dataArray indexOfObject:viewController];
//    NSLog(@"\nafter %li",(long)num);
//    NSLog(@"%@",viewController);
//    NSLog(@"%@",[viewController class]);
//    
//    num++;
//    if(num == _dataArray.count){
//        UIViewController* vc = [[UIViewController alloc]init];
//        vc.view.backgroundColor = [UIColor brownColor];
//        [self presentViewController:vc animated:YES completion:^{
//            
//        }];
//        return nil;
//    }
//    return _dataArray[num];
    UIViewController *vc = [[UIViewController alloc]init];
    vc.view.backgroundColor = [UIColor redColor];
    return vc;
}



@end
