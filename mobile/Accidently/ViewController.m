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
    
    NSURL *serverURL = [NSURL URLWithString:@"http://192.168.2.3/xampp/vinli/receive_post.php"];
    // NSURL *serverURL = [NSURL URLWithString:@"http://192.168.2.3:8000/xampp/vinli/accidently.JPEG"];
    
    NSURL *imageURL = [NSURL URLWithString:@"http://192.168.2.3/xampp/vinli/accidently.JPG"];
    
    
    NSURLSessionDownloadTask *downloadTask = [[NSURLSession sharedSession]downloadTaskWithURL:imageURL completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSLog(@"imageURL: %@", location);
        NSLog(@"response: %@", response);
        
        
        
    }];
    
    NSURLSessionDataTask *dataTask = [[NSURLSession sharedSession]dataTaskWithURL:serverURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSLog(@"%@", data);
        
       
       id jsonResponse = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        NSLog(@"%@",jsonResponse);
        
        
    }];
    
    [dataTask resume];
    [downloadTask resume];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

