//
//  FileClaimViewController.m
//  Accidently
//
//  Created by Vikas Iyer on 9/20/15.
//  Copyright © 2015 Accidently. All rights reserved.
//

#import "FileClaimViewController.h"

@interface FileClaimViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *pageScrollView;
@property (weak, nonatomic) IBOutlet UIScrollView *verticalScrollView;

@end

@implementation FileClaimViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.pageScrollView.contentSize = CGSizeMake(640, 284);
    self.verticalScrollView.contentSize = CGSizeMake(320, 1500);
}

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
