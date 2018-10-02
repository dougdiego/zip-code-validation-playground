import UIKit

func validate(input: String?) -> Bool {
    guard let input = input else { return false }

    return NSPredicate(format: "SELF MATCHES %@", "^\\d{5}(?:[-\\s]?\\d{4})?$")
        .evaluate(with: input.uppercased())
}

validate(input: "94707")
validate(input: "94707 1234")
validate(input: "94707-1234")
validate(input: "947071234")
validate(input: "94707-123")
