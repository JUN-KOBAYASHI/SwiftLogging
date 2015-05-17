//
//  GlobalConstants.swift
//  SwiftLogging
//
//  Created by Takeshi Kawai on 2015/05/17.
//  Copyright (c) 2015年 Takeshi Kawai. All rights reserved.
//

#if DEBUG
    func LOG(msg:Any) {
    println(msg)
    }
    func LOG_METHOD(funcName:String = __FUNCTION__,lineNum:Int = __LINE__ ){
    println("\(funcName)","\(lineNum)")
    }
    
#else
    func LOG(msg:Any) {}
    func LOG_METHOD() {}
#endif
