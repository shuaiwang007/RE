//
//  TextDetection.h
//  RE
//
//  Created by 王帅 on 16/3/15.
//  Copyright © 2016年 Mr.wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TextDetection : NSObject

//检测  邮箱是否正确
+ (BOOL)validateEmail:(NSString *)candidate;

//检测  用户名
+ (BOOL)validateName:(NSString *)candidate;

//密码
+ (BOOL)validatePassword:(NSString *)candidate;

//预注册密码
+ (BOOL)validatePrePassword:(NSString *)candidate;

//手机号
+ (BOOL)validatePhone:(NSString *)candidate;

//邮编
+ (BOOL)validatePostCode:(NSString *)candidate;

//图片格式
+ (BOOL)validatePictureType:(NSString *)candidate;

//中文
+ (BOOL)validateChinese:(NSString *)candidate;

//字母和数字
+ (BOOL)validateCharNum:(NSString *)candidate;

//社保卡号
+ (BOOL)validateSocialCard:(NSString *)candidate;

//身份证号
+ (BOOL)validateIDCard:(NSString *)candidate;

@end
