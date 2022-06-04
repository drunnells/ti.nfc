/**
 * Ti.NFC
 * Copyright (c) 2009-2018 by Axway Appcelerator. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiNfcModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#if IS_IOS_11
#import <CoreNFC/CoreNFC.h>
#endif

@implementation TiNfcModule

#pragma mark Internal

- (id)moduleGUID
{
  return @"e6caa17f-c084-402c-be84-8df242d94eba";
}

- (NSString *)moduleId
{
  return @"ti.nfc";
}

- (NSString *)apiName
{
  return @"Ti.NFC";
}

#pragma mark Lifecycle

- (void)startup
{
  [super startup];

  NSLog(@"[DEBUG] %@ loaded", self);
}

MAKE_SYSTEM_STR(READER_SESSION_NFC_NDEF, @"NFCNDEFReaderSession");
MAKE_SYSTEM_STR(READER_SESSION_NFC_TAG, @"NFCTagReaderSession");
MAKE_SYSTEM_PROP(NFC_TAG_ISO14443, NFCPollingISO14443);
MAKE_SYSTEM_PROP(NFC_TAG_ISO15693, NFCPollingISO15693);
MAKE_SYSTEM_PROP(NFC_TAG_ISO18092, NFCPollingISO18092);

MAKE_SYSTEM_PROP(NFC_NDEF_NOT_SUPPORTED, NFCNDEFStatusNotSupported);
MAKE_SYSTEM_PROP(NFC_NDEF_READ_ONLY, NFCNDEFStatusReadOnly);
MAKE_SYSTEM_PROP(NFC_NDEF_READ_WRITE, NFCNDEFStatusReadWrite);

#if IS_IOS_11
MAKE_SYSTEM_PROP(TNF_EMPTY, NFCTypeNameFormatEmpty);
MAKE_SYSTEM_PROP(TNF_WELL_KNOWN, NFCTypeNameFormatNFCWellKnown);
MAKE_SYSTEM_PROP(TNF_MIME_MEDIA, NFCTypeNameFormatMedia);
MAKE_SYSTEM_PROP(TNF_ABSOLUTE_URI, NFCTypeNameFormatAbsoluteURI);
MAKE_SYSTEM_PROP(TNF_EXTERNAL_TYPE, NFCTypeNameFormatNFCExternal);
MAKE_SYSTEM_PROP(TNF_UNKNOWN, NFCTypeNameFormatUnknown);
MAKE_SYSTEM_PROP(TNF_UNCHANGED, NFCTypeNameFormatUnchanged);

MAKE_SYSTEM_PROP(INVALIDATION_ERROR_USER_CANCELED, NFCReaderSessionInvalidationErrorUserCanceled);
MAKE_SYSTEM_PROP(INVALIDATION_ERROR_SESSION_TIMEOUT, NFCReaderSessionInvalidationErrorSessionTimeout);
MAKE_SYSTEM_PROP(INVALIDATION_ERROR_SESSION_TERMINATED_UNEXPECTEDLY, NFCReaderSessionInvalidationErrorSessionTerminatedUnexpectedly);
MAKE_SYSTEM_PROP(INVALIDATION_ERROR_SYSTEM_IS_BUSY, NFCReaderSessionInvalidationErrorSystemIsBusy);
MAKE_SYSTEM_PROP(INVALIDATION_ERROR_FIRST_NDEF_TAG_READ, NFCReaderSessionInvalidationErrorFirstNDEFTagRead);

MAKE_SYSTEM_PROP(ERROR_UNSUPPORTED_FEATURE, NFCReaderErrorUnsupportedFeature);
MAKE_SYSTEM_PROP(ERROR_SECURITY_VIOLATION, NFCReaderErrorSecurityViolation);

MAKE_SYSTEM_PROP(TRANSCEIVE_ERROR_TAG_CONNECTION_LOST, NFCReaderTransceiveErrorTagConnectionLost);
MAKE_SYSTEM_PROP(TRANSCEIVE_ERROR_RETRY_EXCEEDED, NFCReaderTransceiveErrorRetryExceeded);
MAKE_SYSTEM_PROP(TRANSCEIVE_ERROR_TAG_RESPONSE_ERROR, NFCReaderTransceiveErrorTagResponseError);

MAKE_SYSTEM_PROP(COMMAND_CONFIGURATION_ERROR_INVALID_PARAMETERS, NFCTagCommandConfigurationErrorInvalidParameters);
#endif

@end
