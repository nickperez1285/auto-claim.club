//
//  ViewController.m
//  Accidently
//
//  Created by Vikas Iyer on 9/19/15.
//  Copyright © 2015 Accidently. All rights reserved.
//

#import "ViewController.h"
#import "CallAuthorityViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *userOptionsListView;
//@property (weak, nonatomic) IBOutlet UITableViewCell *callPoliceCell;
//@property (weak, nonatomic) IBOutlet UITableViewCell *fileClaimCell;
//@property (weak, nonatomic) IBOutlet UITableViewCell *sendMessageClaim;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.userOptionsListView.backgroundColor =  [UIColor colorWithRed:241 green:240 blue:231 alpha:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

