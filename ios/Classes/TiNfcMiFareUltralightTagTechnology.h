/**
 * Axway Titanium
 * Copyright (c) 2009-present by Axway Appcelerator. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiNfcNativeTagTechnologyProxy.h"
#import <CoreNFC/CoreNFC.h>
#import <TitaniumKit/TitaniumKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TiNfcMiFareUltralightTagTechnology : TiNfcNativeTagTechnologyProxy

- (NSNumber *)mifareFamily;

- (TiBuffer *)identifier;

- (TiBuffer *)historicalBytes;

- (void)sendMiFareCommand:(id)args;

- (void)sendMiFareISO7816Command:(id)args;

@end

NS_ASSUME_NONNULL_END
