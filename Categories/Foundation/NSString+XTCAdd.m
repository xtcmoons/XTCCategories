//
//  NSString+XTCAdd.m
//  XTCCategories
//
//  Created by LPPZ-User02 on 2017/4/17.
//  Copyright © 2017年 chenming. All rights reserved.
//

#import "NSString+XTCAdd.h"
#import "NSData+XTCAdd.h"

@implementation NSString (XTCAdd)

#pragma mark - Hash

- (nullable NSString *)xtc_md2String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] xtc_md2String];
}

- (nullable NSString *)xtc_md4String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] xtc_md4String];
}

- (nullable NSString *)xtc_md5String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] xtc_md5String];
}

- (nullable NSString *)xtc_sha1String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] xtc_sha1String];
}

- (nullable NSString *)xtc_sha224String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] xtc_sha224String];
}

- (nullable NSString *)xtc_sha256String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] xtc_sha256String];
}

- (nullable NSString *)xtc_sha384String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] xtc_sha384String];
}

- (nullable NSString *)xtc_sha512String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] xtc_sha512String];
}

- (nullable NSString *)xtc_hmacMD5StringWithKey:(NSString *)key {
    return [[self dataUsingEncoding:NSUTF8StringEncoding]
            xtc_hmacMD5StringWithKey:key];
}

- (nullable NSString *)xtc_hmacSHA1StringWithKey:(NSString *)key {
    return [[self dataUsingEncoding:NSUTF8StringEncoding]
            xtc_hmacSHA1StringWithKey:key];
}

- (nullable NSString *)xtc_hmacSHA224StringWithKey:(NSString *)key {
    return [[self dataUsingEncoding:NSUTF8StringEncoding]
            xtc_hmacSHA224StringWithKey:key];
}

- (nullable NSString *)xtc_hmacSHA256StringWithKey:(NSString *)key {
    return [[self dataUsingEncoding:NSUTF8StringEncoding]
            xtc_hmacSHA256StringWithKey:key];
}

- (nullable NSString *)xtc_hmacSHA384StringWithKey:(NSString *)key {
    return [[self dataUsingEncoding:NSUTF8StringEncoding]
            xtc_hmacSHA384StringWithKey:key];
}

- (nullable NSString *)xtc_hmacSHA512StringWithKey:(NSString *)key {
    return [[self dataUsingEncoding:NSUTF8StringEncoding]
            xtc_hmacSHA512StringWithKey:key];
}

//- (nullable NSString *)xtc_crc32String:(NSString *)key {
//    return [[self dataUsingEncoding:NSUTF8StringEncoding] xtc_crc32String];
//}

- (NSString *)xtc_stringByURLEncode {

    if ([self respondsToSelector:@selector(stringByAddingPercentEncodingWithAllowedCharacters:)]) {
        /**
         AFNetworking/AFURLRequestSerialization.m

         Returns a percent-escaped string following RFC 3986 for a query string key or value.
         RFC 3986 states that the following characters are "reserved" characters.
         - General Delimiters: ":", "#", "[", "]", "@", "?", "/"
         - Sub-Delimiters: "!", "$", "&", "'", "(", ")", "*", "+", ",", ";", "="
         In RFC 3986 - Section 3.4, it states that the "?" and "/" characters should not be escaped to allow
         query strings to include a URL. Therefore, all "reserved" characters with the exception of "?" and "/"
         should be percent-escaped in the query string.
         - parameter string: The string to be percent-escaped.
         - returns: The percent-escaped string.
         */
        static NSString * const kAFCharactersGeneralDelimitersToEncode = @":#[]@"; // does not include "?" or "/" due to RFC 3986 - Section 3.4
        static NSString * const kAFCharactersSubDelimitersToEncode = @"!$&'()*+,;=";

        NSMutableCharacterSet * allowedCharacterSet = [[NSCharacterSet URLQueryAllowedCharacterSet] mutableCopy];
        [allowedCharacterSet removeCharactersInString:[kAFCharactersGeneralDelimitersToEncode stringByAppendingString:kAFCharactersSubDelimitersToEncode]];
        static NSUInteger const batchSize = 50;

        NSUInteger index = 0;
        NSMutableString *escaped = @"".mutableCopy;

        while (index < self.length) {
            NSUInteger length = MIN(self.length - index, batchSize);
            NSRange range = NSMakeRange(index, length);
            // To avoid breaking up character sequences such as 👴🏻👮🏽
            range = [self rangeOfComposedCharacterSequencesForRange:range];
            NSString *substring = [self substringWithRange:range];
            NSString *encoded = [substring stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacterSet];
            [escaped appendString:encoded];

            index += range.length;
        }
        return escaped;
    } else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        CFStringEncoding cfEncoding = CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding);
        NSString *encoded = (__bridge_transfer NSString *)
        CFURLCreateStringByAddingPercentEscapes(
                                                kCFAllocatorDefault,
                                                (__bridge CFStringRef)self,
                                                NULL,
                                                CFSTR("!#$&'()*+,/:;=?@[]"),
                                                cfEncoding);
        return encoded;
#pragma clang diagnostic pop
    }

}

- (NSString *)xtc_base64EncodedString {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] xtc_base64EncodedString];
}

+ (NSString *)xtc_stringWithBase64EncodedString:(NSString *)base64EncodedString {
    NSData *data = [NSData xtc_dataWithBase64EncodedString:base64EncodedString];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}


+ (NSString *)xtc_stringWithUUID {
    CFUUIDRef uuid = CFUUIDCreate(NULL);
    CFStringRef string = CFUUIDCreateString(NULL, uuid);
    CFRelease(uuid);
    return (__bridge_transfer NSString *)string;
}

- (NSString *)xtc_stringByTrim {
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [self stringByTrimmingCharactersInSet:set];
}

@end
