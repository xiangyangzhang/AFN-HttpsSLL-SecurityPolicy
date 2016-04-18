//
//  ViewController.m
//  AfnHttpsSSLDemo
//
//  Created by Apple on 16/1/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "HttpRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [HttpRequest post:@"http://api.k780.com:88/?app=weather.future&weaid=1&&appkey=10003&sign=b59bc3ef6191eb9f747dd4e83c99f2a4&format=json" params:nil success:^(id responseObj) {
        NSDictionary *dictData = [NSJSONSerialization JSONObjectWithData:responseObj options:kNilOptions error:nil];
        NSLog(@"===============%@",dictData);
    } failure:^(NSError *error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
