//
//  FileClaimViewController.m
//  Accidently
//
//  Created by Vikas Iyer on 9/20/15.
//  Copyright © 2015 Accidently. All rights reserved.
//

#import "FileClaimViewController.h"

@interface FileClaimViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *pageScrollView;
@property (weak, nonatomic) IBOutlet UIScrollView *verticalScrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (weak, nonatomic) IBOutlet UIImageView *claimProofPhotoView;
@property(nonatomic)BOOL pageControlUsed;

@end

@implementation FileClaimViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.pageScrollView.contentSize = CGSizeMake(640, 284);
    self.verticalScrollView.contentSize = CGSizeMake(320, 1500);
    
    self.pageScrollView.delegate = self;
    
     self.claimProofPhotoView.image = [UIImage imageNamed:@"collisionPoint.png"];
    self.claimProofPhotoView.frame = self.pageScrollView.bounds;
   // self.pageControlUsed = NO;
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

-(void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
////    if (self.pageControlUsed) {
////        return;
//    }
    if (self.pageControl.currentPage == 0)
    {
        self.pageControl.currentPage = 1;
        self.claimProofPhotoView.image = [UIImage imageNamed:@"collisionPoint.png"];
       
    }
    else
    {
        self.pageControl.currentPage = 0;
        self.claimProofPhotoView.image = [UIImage imageNamed:@"collisionPhoto.jpg"];
    }
       self.claimProofPhotoView.frame = self.pageScrollView.bounds;
      // self.pageControlUsed = YES;

}

//- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
//{
//    self.pageControlUsed = NO;
//
//}

@end
