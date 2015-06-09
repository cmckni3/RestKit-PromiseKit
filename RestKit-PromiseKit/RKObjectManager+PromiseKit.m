//
//  RKObjectManager+PromiseKit.m
//  RestKit-PromiseKit
//
//  Created by Chris McKnight on 5/29/15.
//  Copyright (c) 2015 Chris McKnight. All rights reserved.
//

#import "RKObjectManager+PromiseKit.h"
#import <RestKit/RestKit.h>
#import <PromiseKit/Promise.h>

@implementation RKObjectManager (PromiseKit)

- (PMKPromise *)getObjectsAtPath:(NSString *)path
                      parameters:(NSDictionary *)parameters {
    return [PMKPromise new:^(PMKPromiseFulfiller resolve, PMKPromiseRejecter reject){
        [self getObjectsAtPath:path parameters:parameters success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
            resolve(PMKManifold(operation, mappingResult));
        } failure:^(RKObjectRequestOperation *operation, NSError *error) {
            PMKPromiseRejecter rejecter = ^(NSError *error){
                id userInfo = error.userInfo.mutableCopy ?: [NSMutableDictionary new];
                if (operation) userInfo[PMKURLErrorFailingDataKey] = operation;
                error = [NSError errorWithDomain:error.domain code:error.code userInfo:userInfo];
                reject(error);
            };
            rejecter(error);
        }];
    }];
}

- (PMKPromise *)getObject:(id)object
                     path:(NSString *)path
               parameters:(NSDictionary *)parameters {
    return [PMKPromise new:^(PMKPromiseFulfiller resolve, PMKPromiseRejecter reject){
        [self getObject:object path:path parameters:parameters success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
            resolve(PMKManifold(operation, mappingResult));
        } failure:^(RKObjectRequestOperation *operation, NSError *error) {
            PMKPromiseRejecter rejecter = ^(NSError *error){
                id userInfo = error.userInfo.mutableCopy ?: [NSMutableDictionary new];
                if (operation) userInfo[PMKURLErrorFailingDataKey] = operation;
                error = [NSError errorWithDomain:error.domain code:error.code userInfo:userInfo];
                reject(error);
            };
            rejecter(error);
        }];
    }];
}

- (PMKPromise *)postObject:(id)object
                      path:(NSString *)path
                parameters:(NSDictionary *)parameters {
    return [PMKPromise new:^(PMKPromiseFulfiller resolve, PMKPromiseRejecter reject){
        [self postObject:object path:path parameters:parameters success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
            resolve(PMKManifold(operation, mappingResult));
        } failure:^(RKObjectRequestOperation *operation, NSError *error) {
            PMKPromiseRejecter rejecter = ^(NSError *error){
                id userInfo = error.userInfo.mutableCopy ?: [NSMutableDictionary new];
                if (operation) userInfo[PMKURLErrorFailingDataKey] = operation;
                error = [NSError errorWithDomain:error.domain code:error.code userInfo:userInfo];
                reject(error);
            };
            rejecter(error);
        }];
    }];
}

- (PMKPromise *)patchObject:(id)object
                       path:(NSString *)path
                 parameters:(NSDictionary *)parameters {
    return [PMKPromise new:^(PMKPromiseFulfiller resolve, PMKPromiseRejecter reject){
        [self patchObject:object path:path parameters:parameters success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
            resolve(PMKManifold(operation, mappingResult));
        } failure:^(RKObjectRequestOperation *operation, NSError *error) {
            PMKPromiseRejecter rejecter = ^(NSError *error){
                id userInfo = error.userInfo.mutableCopy ?: [NSMutableDictionary new];
                if (operation) userInfo[PMKURLErrorFailingDataKey] = operation;
                error = [NSError errorWithDomain:error.domain code:error.code userInfo:userInfo];
                reject(error);
            };
            rejecter(error);
        }];
    }];
}

- (PMKPromise *)deleteObject:(id)object
                        path:(NSString *)path
                  parameters:(NSDictionary *)parameters {
    return [PMKPromise new:^(PMKPromiseFulfiller resolve, PMKPromiseRejecter reject){
        [self deleteObject:object path:path parameters:parameters success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
            resolve(PMKManifold(operation, mappingResult));
        } failure:^(RKObjectRequestOperation *operation, NSError *error) {
            PMKPromiseRejecter rejecter = ^(NSError *error){
                id userInfo = error.userInfo.mutableCopy ?: [NSMutableDictionary new];
                if (operation) userInfo[PMKURLErrorFailingDataKey] = operation;
                error = [NSError errorWithDomain:error.domain code:error.code userInfo:userInfo];
                reject(error);
            };
            rejecter(error);
        }];
    }];
}

#ifdef RKCoreDataIncluded
- (PMKPromise *)managedObjectRequestWithRequest:(NSURLRequest *)request
                                      inContext:(NSManagedObjectContext *)context
{
    return [PMKPromise new:^(PMKPromiseFulfiller resolve, PMKPromiseRejecter reject) {
        [[self managedObjectRequestOperationWithRequest:request managedObjectContext:context success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
            resolve(PMKManifold(operation, mappingResult));
        } failure:^(RKObjectRequestOperation *operation, NSError *error) {
            PMKPromiseRejecter rejecter = ^(NSError *error){
                id userInfo = error.userInfo.mutableCopy ?: [NSMutableDictionary new];
                if (operation) userInfo[PMKURLErrorFailingDataKey] = operation;
                error = [NSError errorWithDomain:error.domain code:error.code userInfo:userInfo];
                reject(error);
            };
            rejecter(error);
        }] start];
    }];
}
#endif

@end
