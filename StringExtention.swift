import Foundation

extension String {
    
    subscript (i: Int) -> Character {
        return self[self.intIndex(at: i)!]
    }
    
    var length: Int {
        get {
            return self.characters.count
        }
    }
    
    func intIndex (at: Int) -> Index? {
        if at < 0 || at >= self.length {
            return nil
        }
        
        return self.index(self.startIndex, offsetBy: at)
    }
    
    func indexOf (target : Character) -> Int? {
        var index:Int?
        var current = 0
        
        for c in self.characters {
            if (c == target) {
                index = current
                break
            }
            current += 1
        }
        return index
    }
    
    func lastIndexOf(target: Character) -> Int? {
        var index : Int?
        
        for i in (0...self.length-1).reversed() {
            if (self[i] == target) {
                index = i
                break
            }
        }
        return index
    }
    
    func substring(to: Int) -> String? {
        if to < 0 {
            return nil
        }
        
        let range = self.startIndex..<self.intIndex(at: to)!
        return self.substring(with: range)
        
    }
    
    func substring(from: Int, to: Int) -> String? {
        if from > to || from < 0 || to < 0  {
            return nil
        }
        
        let range = self.index(self.startIndex, offsetBy: from)..<self.index(self.startIndex, offsetBy: to)
        return self.substring(with: range)
    }
    
    func split(separator:String) -> [String] {
        return self.components(separatedBy: separator)
    }
    
    func replace(this: String, with:String) -> String {
        return self.replacingOccurrences(of: this, with: with)
    }
    
    func trim () -> String {
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
    
    mutating func remove(at:Int) {
        self.remove(at: self.intIndex(at: at)!)
    }
    
    func removeAllChar(target : Character) -> String {
        return self.replace(this: "\(target)", with: "")
    }
}
