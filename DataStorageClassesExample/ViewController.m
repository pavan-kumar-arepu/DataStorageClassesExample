//
//  ViewController.m
//  DataStorageClassesExample
//
//  Created by Pavankumar Arepu on 02/02/2016.
//  Copyright (c) 2016 ppam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 1.  Creating an Array Object
    
    NSArray *itemsList1;
    itemsList1 = [NSArray arrayWithObjects: @"Pen", @"Pencil", @"Box", nil];
    NSMutableArray *itemsList2;
    itemsList2 = [NSMutableArray arrayWithObjects: @"Pen", @"Pencil", @"Box", nil];
    
    NSMutableArray *itemsListArray = [NSMutableArray arrayWithObjects:itemsList1,itemsList2, nil];
    NSLog(@"itemsMutalbleArray : %@", itemsListArray);
    
    //Insertion
    NSMutableArray *itemsList3;int i;
   NSInteger  count;
    itemsList3 = [NSMutableArray arrayWithObjects: @"Pen", @"Pencil", @"Box", nil];
    [itemsList3 insertObject: @"Indigo" atIndex: 1];
    [itemsList3 insertObject: @"Violet" atIndex: 3];
    
    count = [itemsList3 count];
    
    
    //Accessing
    for (i = 0; i < count; i++)
        NSLog (@"Element %i = %@", i, [itemsList3 objectAtIndex: i]);
    
    //or using FastEnumaration
    
    for (NSString *arrayStringObject in itemsList3)
    {
        NSLog(@"arrayStringObject %@", arrayStringObject);
    }
   
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
