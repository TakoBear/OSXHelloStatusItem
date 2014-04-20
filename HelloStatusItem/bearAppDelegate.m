//
//  bearAppDelegate.m
//  HelloStatusItem
//
//  Created by Bear on 2014/4/20.
//  Copyright (c) 2014年 TakoBear. All rights reserved.
//

#import "bearAppDelegate.h"
#import "MainWindowController.h"

@implementation bearAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // 取得系統狀態列
    NSStatusBar *bar = [NSStatusBar systemStatusBar];
    
    // 在狀態列上建立 StatusItem
    self.theItem = [bar statusItemWithLength:NSVariableStatusItemLength];
    
    // StatusItem 一般狀態的圖示
    [self.theItem setImage:[NSImage imageNamed:@"Status"]];
    
    // StatusItem 點選狀態的圖示
    [self.theItem setAlternateImage:[NSImage imageNamed:@"StatusHighlighted"]];
    
    // StatusItem 可以顯示點選狀態
    [self.theItem setHighlightMode:YES];
    
    // 當滑鼠指到 StatusItem 時的提示文字
    [self.theItem setToolTip:@"Hello StatusItem"];
    
    // 設定點選 StatusItem 所顯示的 Menu
    [self.theItem setMenu:self.theMenu];
}

/*
 * 當使用者點擊 StatusItem 選單第一個選項時，會顯示視窗。
 */
- (IBAction)openWindow:(id)sender
{
    [self.mainWindowController showWindow:self];
}

- (MainWindowController *)mainWindowController
{
    if (_mainWindowController == nil) {
        _mainWindowController = [[MainWindowController alloc] initWithWindowNibName:@"MainWindowController"];
    }
    return _mainWindowController;
}

@end
