import Foundation

extension String {
    
    var length: Int {
        get {
            return self.characters.count
        }
    }
    
    subscript (i: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: i)]
    }
    
    func indexOf (target : Character) -> Int? {
        
        var index:Int?
        var current = 0
        
        for c in self.lowercased().characters {
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
        let str = self.lowercased()
        
        for i in (0...str.length-1).reversed() {
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
        
        let range = self.startIndex..<self.index(self.startIndex, offsetBy: to)
        return self.substring(with: range)
        
    }
    
    func substring(from: Int, to: Int) -> String? {
        
        if from > to || from < 0 || to < 0  {
            return nil
        }
        
        let range = self.index(self.startIndex, offsetBy: from)..<self.index(self.startIndex, offsetBy: to)
        return self.substring(with: range)
    }
}

