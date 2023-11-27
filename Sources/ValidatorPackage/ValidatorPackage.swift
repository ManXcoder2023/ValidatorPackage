// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public class Validator {
    public init(){
        
    }
    
    public func checkIfValidEmail(email: String) -> Bool {
        let emailRegex = "^[A-Za-z](.*)([@]{1})(.{1,})(\\.)(.{1,})"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    public func isCivilIDValid(_ civilID: String) -> Bool {
        let regex = "[0-9]{12}"
        let civilIDPredicate = NSPredicate(format: "SELF MATCHES %@", regex)
        if  civilIDPredicate.evaluate(with: civilID) {
            let characters    = Array(civilID)
            let oParameter    = (Int(String(characters[0]))!  * 2)
            let tParameter    = (Int(String(characters[1]))!  * 1)
            let threParameter = (Int(String(characters[2]))!  * 6)
            let fouParameter  = (Int(String(characters[3]))!  * 3)
            let fiParameter   = (Int(String(characters[4]))!  * 7)
            let sixParameter  = (Int(String(characters[5]))!  * 9)
            let seParameter   = (Int(String(characters[6]))!  * 10)
            let eParameter    = (Int(String(characters[7]))!  * 5)
            let nParameter    = (Int(String(characters[8]))!  * 8)
            let tenParameter  = (Int(String(characters[9]))!  * 4)
            let elParameter   = (Int(String(characters[10]))!  * 2)
            //
            let  civilIDDouble  =  11 - ( (oParameter + tParameter + threParameter +
                fouParameter + fiParameter + sixParameter + seParameter + eParameter+eParameter
                + nParameter + tenParameter + elParameter) % 11)
        
            if civilIDDouble == Int(String(characters[11])){
                return true
            }
            
            return false
        }
        return false
    }
    
}
