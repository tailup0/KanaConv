//
//  KanaConv.swift
//  Pods
//
//  Created by tailup0 on 2016/06/27.
//
//
public extension String {
    func toHiragana() -> String {
        var rt = ""
        for us in unicodeScalars {
            if us.value >= 0x30A1 && us.value <= 0x30F6 {
                rt.append(UnicodeScalar(us.value - 96))
            } else {
                rt.append(us)
            }
        }
        return rt
    }
    func toKatakana() -> String {
        var rt = ""
        for us in unicodeScalars {
            if us.value >= 0x3041 && us.value <= 0x3096 {
                rt.append(UnicodeScalar(us.value + 96))
            } else {
                rt.append(us)
            }
        }
        return rt
    }
}