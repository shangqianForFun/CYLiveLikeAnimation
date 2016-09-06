//
//  CYLiveLikeAnimation.m
//  CYLiveLikeAnimation
//
//  Created by 陈阳阳 on 16/9/6.
//  Copyright © 2016年 cyy. All rights reserved.
//

#import "CYLiveLikeAnimation.h"
#import <QuartzCore/QuartzCore.h>

@implementation CYLiveLikeAnimation

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        CAEmitterLayer *emitterLayer = [CAEmitterLayer layer];
        emitterLayer.frame = self.bounds;
        [self.layer addSublayer:emitterLayer];
        // 发射模式
        emitterLayer.renderMode = kCAEmitterLayerUnordered;
        // 发射点
        emitterLayer.emitterPosition = CGPointMake(self.frame.size.width - 40, self.frame.size.height - 60);
        // 发射源的形状
        emitterLayer.emitterShape = kCAEmitterLayerPoint;
        // 发射源的尺寸大小
        emitterLayer.emitterSize  = CGSizeMake(20, 20);
        // 发射源的z坐标位置
//        emitterLayer.zPosition    = 106;
        NSMutableArray *tempArray = [NSMutableArray array];
        for (int i = 1; i < 10; i ++) {
            
            CAEmitterCell *emitterCell = [CAEmitterCell emitterCell];
            emitterCell.color = [UIColor redColor].CGColor;
            emitterCell.birthRate = 1;
            emitterCell.lifetime  = arc4random_uniform(4) + 1;
            emitterCell.lifetimeRange = 1;
            NSString *imageName = [NSString stringWithFormat:@"good%d_30x30_@2x",i];
            UIImage *image = [UIImage imageNamed:imageName];
            
            emitterCell.contents = (__bridge id _Nullable)(image.CGImage);
            
            
            emitterCell.velocity = arc4random_uniform(100) + 100;
            emitterCell.emissionLongitude = M_PI+M_PI_2;
            emitterCell.emissionRange = M_PI_2/6;
            emitterCell.scale = 0.5;
            [tempArray addObject:emitterCell];
        }
        emitterLayer.emitterCells = [tempArray copy];

    }
    return self;
}

@end
