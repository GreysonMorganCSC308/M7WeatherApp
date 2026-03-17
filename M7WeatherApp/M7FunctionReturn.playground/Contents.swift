import UIKit

class ViewController: UIViewController {
    func name(a: Int, b: Int) -> Int {
        return a + b
    }
}

func generateRandomNumber() -> Int {
    return Int.random(in: 1 ... 100)
}
generateRandomNumber()


let name: String? = "John"
//1. Forced unwrapping
let display1 = name!
print(display1)

//2. Optional Binding
if let display2 = name {
    print(display2)
} else {
    print("Guest")
}

//3. Nil-Colescing: provide a default
let display3 = name ?? "Guest"
print(display3)

func currencySymbol(for countryCode: String) -> String? {
    switch(countryCode) {
    case "US":
        return "$"
    case "DE":
        return "€"
    case "KR":
        return "₩"
    case "JP":
        return "¥"
    default:
        return nil
    }
}

let country = ["US", "DE", "KR", "JP"].randomElement() ?? "US"

if let code = currencySymbol(for: country) {
    print(code)
} else {
    print("Not Found")
}

//Q3.
let input: String? = "42.5"

let fu = Double(input!)!
print("Forced Unwrapping: \(fu)")

if let input, let ob = Double(input) {
    print("Optional Binding: \(ob)")
} else {
    print("Invalid input")
}

let nc = Double(input ?? "0") ?? 0.0
print("Nil-coalescing: \(nc)")
