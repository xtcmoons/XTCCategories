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

@end
