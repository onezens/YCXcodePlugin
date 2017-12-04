//
//  ImportHeader.swift
//  YCXcodePlugin
//
//  Created by wz on 2017/12/3.
//  Copyright © 2017年 cc.onezen. All rights reserved.
//

import Cocoa
import XcodeKit

class ImportHeader: NSObject , XCSourceEditorCommand{
    
    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void) {
        completionHandler(nil)
    }
}
