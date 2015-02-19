//
//  ViewController.h
//  Assignment3.2
//
//  Created by jsanto on 2/18/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLConnectionDelegate>

@property (nonatomic,weak) IBOutlet UITextField *urlField;
@property (nonatomic,weak) IBOutlet UITextView *urlContent;
@property (nonatomic,weak) IBOutlet UIButton *goButton;

-(IBAction)loadURL:(id)sender;





@end

