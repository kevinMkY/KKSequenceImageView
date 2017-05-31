//
//  KKSequenceImage.h
//  KKShopping
//
//  Created by kevin on 2017/5/18.
//  Copyright © 2017年 kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KKSequenceImageView;

@protocol KKSequenceImageDelegate <NSObject>

@optional

- (void)sequenceImageDidPlayCompeletion:(KKSequenceImageView *)imageView;

@end

@interface KKSequenceImageView : UIImageView

@property (nonatomic, assign) NSUInteger durationMS; //MS
@property (nonatomic, assign) int repeatCount;
@property (nonatomic, strong) NSArray<NSString *> *imagePathss;
@property (nonatomic, assign) BOOL animatingNow;
@property (nonatomic, weak)   id<KKSequenceImageDelegate> delegate;

- (void) begin;
- (void) clean;

@end
