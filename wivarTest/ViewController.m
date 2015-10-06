//
//  ViewController.m
//  wivarTest
//
//  Created by id on 10/5/15.
//  Copyright © 2015 id. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSNumber *number;
@property (strong, nonatomic) IBOutlet UILabel *randomNumber;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self makeRandomNumber:nil];
}

- (IBAction)makeRandomNumber:(UIButton *)sender {
    self.number = [NSNumber numberWithInt:arc4random_uniform(100)];
    self.randomNumber.text = [NSString stringWithFormat:@"%@", self.number];
}


@end
