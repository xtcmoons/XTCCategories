//
//  NSData+XTCAdd.h
//  XTCCategories
//
//  Created by LPPZ-User02 on 2017/4/17.
//  Copyright © 2017年 chenming. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface NSData (XTCAdd)

#pragma mark - Hash

- (NSString *)xtc_md2String;
- (NSData *)xtc_md2Data;

- (NSString *)xtc_md4String;
- (NSData *)xtc_md4Data;

- (NSString *)xtc_md5String;
- (NSData *)xtc_md5Data;

- (NSString *)xtc_sha1String;
- (NSData *)xtc_sha1Data;

- (NSString *)xtc_sha224String;
- (NSData *)xtc_sha224Data;

- (NSString *)xtc_sha256String;
- (NSData *)xtc_sha256Data;

- (NSString *)xtc_sha384String;
- (NSData *)xtc_sha384Data;

- (NSString *)xtc_sha512String;
- (NSData *)xtc_sha512Data;

- (NSString *)xtc_hmacMD5StringWithKey:(NSString *)key;
- (NSData *)xtc_hmacMD5DataWithKey:(NSData *)key;

- (NSString *)xtc_hmacSHA1StringWithKey:(NSString *)key;
- (NSData *)xtc_hmacSHA1DataWithKey:(NSData *)key;

- (NSString *)xtc_hmacSHA224StringWithKey:(NSString *)key;
- (NSData *)xtc_hmacSHA224DataWithKey:(NSData *)key;

- (NSString *)xtc_hmacSHA256StringWithKey:(NSString *)key;
- (NSData *)xtc_hmacSHA256DataWithKey:(NSData *)key;

- (NSString *)xtc_hmacSHA384StringWithKey:(NSString *)key;
- (NSData *)xtc_hmacSHA384DataWithKey:(NSData *)key;

- (NSString *)xtc_hmacSHA512StringWithKey:(NSString *)key;
- (NSData *)xtc_hmacSHA512DataWithKey:(NSData *)key;

//- (NSString *)xtc_crc32String;
//- (uint32_t)xtc_crc32;

#pragma mark - Encrypt and Decrypt

- (nullable NSData *)xtc_aes256EncryptWithKey:(NSData *)key iv:(nullable NSData *)iv;
- (nullable NSData *)xtc_aes256DecryptWithkey:(NSData *)key iv:(nullable NSData *)iv;

#pragma mark - Encode and decode
- (nullable NSString *)xtc_utf8String;
- (nullable NSString *)xtc_hexString;

+ (nullable NSData *)xtc_dataWithHexString:(NSString *)hexString;
- (nullable NSString *)xtc_base64EncodedString;

+ (nullable NSData *)xtc_dataWithBase64EncodedString:(NSString *)base64EncodedString;

- (nullable id)xtc_jsonValueDecoded;

@end
NS_ASSUME_NONNULL_END
