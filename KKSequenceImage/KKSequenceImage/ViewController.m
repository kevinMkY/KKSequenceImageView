//
//  ViewController.m
//  KKSequenceImage
//
//  Created by kevin on 2017/5/31.
//  Copyright © 2017年 kevin. All rights reserved.
//

#import "ViewController.h"
#import "KKSequenceImageView.h"

@interface ViewController ()<KKSequenceImageDelegate>

@property (nonatomic, strong) KKSequenceImageView *giftImageV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *array = [NSMutableArray array];
    
    for (NSInteger i = 0; i<46; i++) {
        NSString *path = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"gift_effect_text2_%zd@2x",i] ofType:@"png"];
        if (path.length) {
            [array addObject:path];
        }
    }
    
    _giftImageV = [[KKSequenceImageView alloc] initWithFrame:self.view.bounds];
    _giftImageV.imagePathss = array;
    _giftImageV.durationMS = array.count * 40;
    _giftImageV.repeatCount = 5;
    _giftImageV.delegate = self;
    [self.view addSubview:_giftImageV];
    [_giftImageV begin];
}

- (void)sequenceImageDidPlayCompeletion:(KKSequenceImageView *)imageView
{
//    [_giftImageV removeFromSuperview];
//    _giftImageV = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
