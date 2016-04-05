http://swiftstub.com/297982122

extension Array where Element: Comparable {
    
    func desc() -> Array {
        return self.sort(>)
    }
    
    func asc() -> Array {
        return self.sort(<)
    }
    
}

let arr = [4, 3, 1, 5, 2, 5]
let strings = ["foo", "Bar", "42"]
print(arr)

var sorted = arr.sort({ (i1: Int, i2: Int) -> Bool in return i1 < i2 })
print(sorted)

sorted = arr.sort( { i1, i2 in return i1 < i2 })
print(sorted)

sorted = arr.sort( { i1, i2 in i1 < i2 })
print(sorted)

sorted = arr.sort( { $0 < $1 })
print(sorted)

sorted = arr.sort(<)
print(sorted)

sorted = arr.desc()
print(sorted)

sorted = arr.asc()
print(sorted)

print(strings.desc())
print(strings.asc())