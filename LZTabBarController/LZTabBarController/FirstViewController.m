
//
//  FirstViewController.m
//  LZTabBarController
//
//  Created by Artron_LQQ on 2016/12/13.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import "FirstViewController.h"
#import "TestViewController.h"
#import "LZTabBarController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    TestViewController *text = [[TestViewController alloc]init];
    
    [self.navigationController pushViewController:text animated:YES];
}

//- (void)viewWillDisappear:(BOOL)animated {
//    [super viewWillDisappear:animated];
//    
//    [LZTabBarController hiddenTabBarWithAnimation:YES];
//}
//
//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    
//    [LZTabBarController showTabBarWithAnimation:YES];
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
