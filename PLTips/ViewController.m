//
//  ViewController.m
//  PLTips
//
//  Created by panglong on 15/11/12.
//  Copyright © 2015年 apple. All rights reserved.
//

#import "ViewController.h"
#import "PLTips-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    [self deviceShow];
}

/**
 *  设备判断
 */
- (void)deviceShow
{
    DeviceViewController *deviceViewController = [[DeviceViewController alloc]init];
    [self addChildViewController:deviceViewController];
    [self.view addSubview:deviceViewController.view];
}

/**
 *  按时间排序
 */
- (void)sortByTime
{
    NSMutableArray *dataArray=[[NSMutableArray alloc]initWithCapacity:0];
    NSMutableDictionary *dir=[[NSMutableDictionary alloc]init];
    [dir setObject:@"2012-12-02" forKey:@"time"];
    [dataArray addObject:dir];
    
    NSMutableDictionary *dir1=[[NSMutableDictionary alloc]init];
    [dir1 setObject:@"2012-02-15" forKey:@"time"];
    [dataArray addObject:dir1];
    
    NSMutableDictionary *dir2=[[NSMutableDictionary alloc]init];
    [dir2 setObject:@"2012-03-02" forKey:@"time"];
    [dataArray addObject:dir2];
    
    NSMutableDictionary *dir3=[[NSMutableDictionary alloc]init];
    [dir3 setObject:@"2000-03-02" forKey:@"time"];
    [dataArray addObject:dir3];
    
    NSMutableDictionary *dir4=[[NSMutableDictionary alloc]init];
    [dir4 setObject:@"2112-03-02" forKey:@"time"];
    [dataArray addObject:dir4];
    
    NSMutableArray *myArray=[[NSMutableArray alloc]initWithCapacity:0];
    [myArray addObjectsFromArray:dataArray];
    
    for (int i=0; i<[myArray count]; i++) {
        NSLog(@"排序前----->>%@",[[myArray objectAtIndex:i] objectForKey:@"time"]);
    }
    
    NSSortDescriptor*sorter=[[NSSortDescriptor alloc]initWithKey:@"time" ascending:YES];
    NSMutableArray *sortDescriptors=[[NSMutableArray alloc]initWithObjects:&sorter count:1];
    NSArray *sortArray=[myArray sortedArrayUsingDescriptors:sortDescriptors];
    
    for (int i=0; i<[sortArray count]; i++) {
        NSLog(@"排序后----->>%@",[[sortArray objectAtIndex:i] objectForKey:@"time"]);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
