//
//  TextDetection.m
//  RE
//
//  Created by 王帅 on 16/3/15.
//  Copyright © 2016年 Mr.wang. All rights reserved.
//
// 验证   邮箱   密码   用户名

#import "TextDetection.h"


//邮箱的正则表达式
#define EMAILREG  @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"

//用户名的正则表达式   中英文、数字、下划线，至少2个字符,至多20
#define NAMEREG   @"^[\\w\\u4e00-\\u9fa5]{2,20}$"

//密码的正则表达式   以字母开头，长度在6~18之间，只包含英文、数字和下划线
#define PASSWORDREG @"^[a-zA-Z]\\w{5,17}$"

//预注册用户密码正则表达式  以M开头＋身份证后6位数
#define PREREGISTERPASSWORDREG @"^[M]\\w{6}$"

//手机号的正则表达式
#define PHONEREG  @"^1[35678][\\d]{9}$"

//邮编的正则表达式
#define POSTCODEREG @"^[\\d]{6}$"

//图片格式验证
#define PICTURESTYLEREG @"/.+(\\.jpg|\\.jpeg|\\.gif|\\ .png)$/i"

//验证中文
#define CHINESEREG  @"[^\u4e00-\u9fa5]"

//字母和数字
#define CHARSNUMREG  @"^[0-9a-z]+$/i"

//社保卡
#define SOCIALCARDSREG  @"^[A-Za-z0-9]{0,30}$/i"

//身份证号
#define IDCARDREG  @"^(\\d{15}$|^\\d{18}$|^\\d{17}(\\d|X|x))$"



@implementation TextDetection

/**
 *  用于验证输入框的内容
 *
 *  @param regText   需要检测的正则表达式
 *  @param candidate 需要检测的字符串
 *
 *  @return 返回的是否为真
 */
+ (BOOL)validate:(NSString *)regText withCandidate:(NSString *)candidate{
    
    NSPredicate *predicateText = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regText];
    
    return [predicateText evaluateWithObject:candidate];
    
}

//验证邮箱
+ (BOOL)validateEmail:(NSString *)candidate{
    
    return [self validate:EMAILREG withCandidate:candidate];
    
}

//验证姓名
+ (BOOL)validateName:(NSString *)candidate{
    
    return [self validate:NAMEREG withCandidate:candidate];
    
}

//手机号
+ (BOOL)validatePhone:(NSString *)candidate{
    
    return [self validate:PHONEREG withCandidate:candidate];
    
}

//密码
+ (BOOL)validatePassword:(NSString *)candidate{
    
    return [self validate:PASSWORDREG withCandidate:candidate];
    
}

//预注册密码
+ (BOOL)validatePrePassword:(NSString *)candidate{
    
    return [self validate:PREREGISTERPASSWORDREG withCandidate:candidate];
    
}

//邮编
+ (BOOL)validatePostCode:(NSString *)candidate{
    
    return [self validate:POSTCODEREG withCandidate:candidate];
    
}

//图片格式
+ (BOOL)validatePictureType:(NSString *)candidate{
    
    return [self validate:PICTURESTYLEREG withCandidate:candidate];
    
}

//中文
+ (BOOL)validateChinese:(NSString *)candidate{
    
    return [self validate:CHINESEREG withCandidate:candidate];
    
}

//字母和数字
+ (BOOL)validateCharNum:(NSString *)candidate{
    
    return [self validate:CHARSNUMREG withCandidate:candidate];
    
}

//社保卡号
+ (BOOL)validateSocialCard:(NSString *)candidate{
    
    return [self validate:SOCIALCARDSREG withCandidate:candidate];
    
}

//身份证号
+ (BOOL)validateIDCard:(NSString *)candidate{
    
    return [self validate:IDCARDREG withCandidate:candidate];
    
}


@end
