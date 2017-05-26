//
//  NSString+Category.m
//  Pods
//
//  Created by 李里 on 2017/5/25.
//
//

#import "NSString+Category.h"

@implementation NSString (Category)

//去掉前后空格
- (NSString *)trimmedString{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

- (NSMutableAttributedString *)getSpaceStr:(CGFloat)spacing{
    NSString * str = self;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:str];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:spacing];//调整行间距
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [str length])];
    
    return attributedString;
}

- (CGFloat)getStringWidthWithHeight:(CGFloat)height fontSize:(NSInteger)fontSize{
    CGSize size  = CGSizeMake(0, 0);
    if (![self isKindOfClass:[NSNull class]] && ![self isEqualToString:@""]) {
        size = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, height)
                                  options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading
                               attributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:fontSize],NSFontAttributeName, nil]
                                  context:NULL].size;
    }
    
    return size.width;
}

- (CGFloat)getStringHeightWithWidth:(CGFloat)width fontSize:(NSInteger)fontSize{
    CGSize size  = CGSizeMake(0, 0);
    if (![self isKindOfClass:[NSNull class]] && ![self isEqualToString:@""]) {
        size = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                  options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading
                               attributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:fontSize],NSFontAttributeName, nil]
                                  context:NULL].size;
    }
    
    return size.height;
}

+ (NSString*) getSecrectStringWithPhoneNumber:(NSString*)phoneNum
{
    NSMutableString *newStr = [NSMutableString stringWithString:phoneNum];
    NSRange range = NSMakeRange(3, 4);
    [newStr replaceCharactersInRange:range withString:@"****"];
    return newStr;
}


@end
