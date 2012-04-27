////////////////////////////////////////////////////////////////////////////////
//
//  EXPANZ
//  Copyright 2008-2011 EXPANZ
//  All Rights Reserved.
//
//  NOTICE: Expanz permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

#import "xcode_SourceFileDefinition.h"


@implementation xcode_SourceFileDefinition

@synthesize sourceFileName = _sourceFileName;
@synthesize type = _type;
@synthesize data = _data;


/* ================================================== Initializers ================================================== */
- (id) initWithName:(NSString*)name text:(NSString*)text type:(XcodeSourceFileType)type {
    self = [super init];
    if (self) {
        _sourceFileName = [name copy];
        _data = [text dataUsingEncoding:NSUTF8StringEncoding];
        _type = type;
    }
    return self;
}

- (id) initWithName:(NSString*)name data:(NSData*)data type:(XcodeSourceFileType)type {
    self = [super init];
    if (self) {
        _sourceFileName = [name copy];
        _data = [data copy];
        _type = type;
    }
    return self;

}


/* ================================================== Utility Methods =============================================== */
- (void) dealloc {
    [_sourceFileName release];
    [_data release];
    [super dealloc];
}


@end