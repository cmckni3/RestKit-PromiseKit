//
//  RKObjectManager+PromiseKit.h
//  RestKit-PromiseKit
//
//  Created by Chris McKnight on 5/29/15.
//  Copyright (c) 2015 Chris McKnight. All rights reserved.
//

#import <RestKit/Network/RKObjectManager.h>

@class PMKPromise;

@interface RKObjectManager (PromiseKit)

- (PMKPromise *)getObjectsAtPath:(NSString *)path
                      parameters:(NSDictionary *)parameters;

- (PMKPromise *)getObject:(id)object
                     path:(NSString *)path
               parameters:(NSDictionary *)parameters;

- (PMKPromise *)postObject:(id)object
                      path:(NSString *)path
                parameters:(NSDictionary *)parameters;

- (PMKPromise *)putObject:(id)object
                      path:(NSString *)path
                parameters:(NSDictionary *)parameters;

- (PMKPromise *)patchObject:(id)object
                       path:(NSString *)path
                 parameters:(NSDictionary *)parameters;

- (PMKPromise *)deleteObject:(id)object
                        path:(NSString *)path
                  parameters:(NSDictionary *)parameters;

#ifdef RKCoreDataIncluded
- (PMKPromise *)managedObjectRequestWithRequest:(NSURLRequest *)request
                                      inContext:(NSManagedObjectContext *)context;
#endif

@end
