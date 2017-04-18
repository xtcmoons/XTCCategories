//
//  NSString+XTCAdd.h
//  XTCCategories
//
//  Created by LPPZ-User02 on 2017/4/17.
//  Copyright © 2017年 chenming. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface NSString (XTCAdd)

#pragma mark - Hash

- (nullable NSString *)xtc_md2String;
- (nullable NSString *)xtc_md4String;
- (nullable NSString *)xtc_md5String;
- (nullable NSString *)xtc_sha1String;
- (nullable NSString *)xtc_sha224String;
- (nullable NSString *)xtc_sha256String;
- (nullable NSString *)xtc_sha384String;
- (nullable NSString *)xtc_sha512String;
- (nullable NSString *)xtc_hmacMD5StringWithKey:(NSString *)key;
- (nullable NSString *)xtc_hmacSHA1StringWithKey:(NSString *)key;
- (nullable NSString *)xtc_hmacSHA224StringWithKey:(NSString *)key;
- (nullable NSString *)xtc_hmacSHA256StringWithKey:(NSString *)key;
- (nullable NSString *)xtc_hmacSHA384StringWithKey:(NSString *)key;
- (nullable NSString *)xtc_hmacSHA512StringWithKey:(NSString *)key;
//- (nullable NSString *)xtc_crc32String:(NSString *)key;

#pragma mark - Encode and decode

/**
 URL encode a string in utf-8.
 @return the encoded string.
 */
- (NSString *)xtc_stringByURLEncode;

/**
 @return an NSString for base64 encoded.
 */
- (nullable NSString *)xtc_base64EncodedString;

/**
 @param base64EncodedString The encoded string
 @return an NSString from base64 encoded string.
 */
+ (nullable NSString *)xtc_stringWithBase64EncodedString:(NSString *)base64EncodedString;

#pragma mark - Utilities

/**
 e.g. "D1178E50-2A4D-4F1F-9BD3-F6AAB00E06B1"

 @return a new UUID NSString
 */
+ (NSString *)xtc_stringWithUUID;

- (NSString *)xtc_stringByTrim;

@end
NS_ASSUME_NONNULL_END
