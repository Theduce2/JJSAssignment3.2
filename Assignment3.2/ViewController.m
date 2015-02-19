//
//  ViewController.m
//  Assignment3.2
//
//  Created by jsanto on 2/18/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

-(IBAction)loadURL:(id)sender;

{
    [_urlField resignFirstResponder];
    NSString *simpleAddr =[_urlField text];
    
    if(simpleAddr == nil || [simpleAddr isEqualToString:@""]){
        simpleAddr =@"http://www.pitt.edu";
        
    }
    
    NSURL *url =[NSURL URLWithString:simpleAddr];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLConnection * conn = [NSURLConnection connectionWithRequest:request delegate:self];
    
    if(conn!=nil){
        [conn start];
    }
}



- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection{
    UIAlertView *uiAlert = [[UIAlertView alloc] initWithTitle:@"Done!" message:@"Data is here!" delegate: self cancelButtonTitle:@"ok" otherButtonTitles: nil];
    [uiAlert show];
}


-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    NSString *newData = [NSString stringWithUTF8String:[data bytes]];
    [_urlContent setText:newData];
}



@end
