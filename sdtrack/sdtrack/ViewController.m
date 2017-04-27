//
//  ViewController.m
//  sdtrack
//
//  Created by lisd on 2017/4/26.
//  Copyright © 2017年 kingnet. All rights reserved.
//

#import "ViewController.h"
#import "Page2ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)clickPage1Button:(id)sender {
    Page2ViewController *vc = [[Page2ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
