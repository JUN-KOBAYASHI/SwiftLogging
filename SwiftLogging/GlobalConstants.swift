//
//  GlobalConstants.swift
//  SwiftLogging
//
//  Created by Takeshi Kawai on 2015/05/17.
//  Copyright (c) 2015年 Takeshi Kawai. All rights reserved.
//

#if DEBUG
    func LOG(msg:Any) {
    print(msg)
    }
    func LOG_METHOD(funcName:String = #function,lineNum:Int = #line ){
    print("\(funcName)","\(lineNum)")
    }
    
#else
    func LOG(_ msg:Any) {}
    func LOG_METHOD() {}
#endif
