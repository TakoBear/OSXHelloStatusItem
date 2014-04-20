//
//  bearAppDelegate.h
//  HelloStatusItem
//
//  Created by Bear on 2014/4/20.
//  Copyright (c) 2014年 TakoBear. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MainWindowController;

@interface bearAppDelegate : NSObject <NSApplicationDelegate>

@property (nonatomic, strong) MainWindowController *mainWindowController;
@property (nonatomic, strong) NSStatusItem *theItem;
@property (nonatomic, weak) IBOutlet NSMenu *theMenu;

@end
