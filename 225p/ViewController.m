//
//  ViewController.m
//  225p
//
//  Created by Youp on 2014. 1. 7..
//  Copyright (c) 2014년 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    BOOL moveFlag;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

@implementation ViewController

// 배경을 흰색으로 변경, 이후에 다른 애니메이션 호출
-(IBAction)series:(id)sender{
    [UIView beginAnimations:@"series1" context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1.0];
    // 델리게이트
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(changeBackgroundClear)];
    
    self.imageView.backgroundColor = [UIColor whiteColor];
    
    [UIView commitAnimations];
}

-(void)changeBackgroundClear{
    [UIView beginAnimations:@"series2" context:NULL];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationDelegate:self];
    
    self.imageView.backgroundColor = [UIColor clearColor];
    
    [UIView commitAnimations];
}

-(IBAction)move:(id)sender{
    [UIView beginAnimations:Nil context:NULL];
    [UIView setAnimationDuration:0.7];
    
    if (moveFlag) {
        self.imageView.center = CGPointMake(self.imageView.center.x + 100, self.imageView.center.y + 100);
    }else{
        self.imageView.center = CGPointMake(self.imageView.center.x - 100, self.imageView.center.y - 100);
    }
    moveFlag = !moveFlag;
    
    [UIView commitAnimations];
}

// 토글방식으로 투명도 애니메이션
-(IBAction)alpha:(id)sender{
    [UIView animateWithDuration:0.7 animations:^{
        self.imageView.alpha = (self.imageView.alpha == 0.0) ? 1.0 : 0.0;
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
