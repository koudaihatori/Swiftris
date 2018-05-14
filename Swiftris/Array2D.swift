//
//  Array2D.swift
//  Swiftris
//
//  Created by kodaihatori on 2018/05/15.
//  Copyright © 2018年 hatori kodai. All rights reserved.
//
class Array2D<T> {
    let columns: Int
    let rows: Int
    // #2
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        // #3
        array = Array<T?>(repeating: nil, count:rows * columns)
    }
    
    // #4
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(row * columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
}
