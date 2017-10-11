//
//  UserItemModel.h
//  AXUserInfo
//
//  Created by anxindeli on 2017/9/4.
//  Copyright © 2017年 anxindeli. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface UserItemModel : NSObject
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *imageName;
- (instancetype)initWithDict:(NSDictionary *)data;
@end
