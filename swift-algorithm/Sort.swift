//
//  Sort.swift
//  swift-algorithm
//
//  Created by 王怡飞 on 2018/10/2.
//  Copyright © 2018年 David Wong. All rights reserved.
//

import Foundation

class Sort{
    
    //MARK: - 冒泡排序
    //核心是两次遍历，里循环最大往右放，只遍历到len-i-1
    class func bubbleSort(array:[Int])->[Int]{
        var newArray = array
        for i in 0..<newArray.count{
            for j in 0..<newArray.count-(i+1){
                if newArray[j] > newArray[j+1]{
                    let temp = newArray[j]
                    newArray[j] = newArray[j+1]
                    newArray[j+1] = temp
                }
            }
        }
        return newArray
    }
    
    //MARK: - 选择排序
    //核心是两次遍历，里循环找最小复制给array[i]，里面的顺序是i+1到底
    class func selectSort(array:[Int])->[Int]{
        var newArray = array
        let len = array.count
        for i in 0..<len{
            var min = newArray[i]
            for j in (i+1)..<len{
                if min > newArray[j]{
                    let temp = min
                    min = newArray[j]
                    newArray[j] = temp
                }
            }
            newArray[i] = min
        }
        return newArray
    }
}
