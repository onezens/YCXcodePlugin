//
//  DeleteSelections.swift
//  YCXcodePlugin
//
//  Created by wz on 2017/12/3.
//  Copyright © 2017年 cc.onezen. All rights reserved.
//

import Cocoa
import XcodeKit

class DeleteSelections: NSObject, XCSourceEditorCommand {

    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void) {
        
        let selections = invocation.buffer.selections
        let textRange = selections.firstObject as! XCSourceTextRange
        let startPoisition = textRange.start
        let endPosition = textRange.end
        //remove selections text
        invocation.buffer.lines.removeObjects(in: NSMakeRange(startPoisition.line, endPosition.line-startPoisition.line+1))
        completionHandler(nil)
    }
    
}
