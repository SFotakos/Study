## iOS

 - ##### [Nanodegree courses](https://github.com/mikesprague/udacity-nanodegrees#ios-developer-nanodegree)
 - ##### [Good practice guidelines](https://github.com/futurice/ios-good-practices)

### Notes

- [Swift Params Defaults](https://stackoverflow.com/a/37306047)

  Functions can be declared with default values by doing so they can then be ommited from the call

  ```
  func increment(valueOf: Int, by: Int = 1) -> Int{
    return valueOf+by
  }

  // Which could be called as
  increment(valueOf: 10) // Resulting 11
  increment(valueOf: 10, by: 5) // Resulting 15
  ```

- [Swift Optionals and Unwrapping](https://stackoverflow.com/a/24026093)

  Declaring a variable as optional wraps that variable in a way that it can contain two values of an enum, .some and .none, the latter being no value and being comparable to nil, the former being the wrapped value which has to be unwrapped with ! before usage.

  ```
  var middleName : String?
  if middleName != nil { // Optionals have to be compared to nil now
    middleName = middleName! // Force unwrap
    ...
  }

  // The above if statement can be written as
  if var middleName = middleName! {
    ...
  }
  ```

- [Swift Argument Labels and Parameter Names](https://docs.swift.org/swift-book/LanguageGuide/Functions.html#ID166)

    Swift functions parameters have both an argument label and a parameter name. Argument labels are the name a parameter has when the functions is being called while the parameter name is the local parameter name.

    By default declaring a parameter name makes the argument label the same as it.

    ```
    func hasOnlyDigits(word: String) -> Bool { ... }
    hasOnlyDigits(word: "12")
    ```    

    Argument labels can be declared explicitly,

    ```
    func hasOnlyDigits (string word: String ) -> Bool { ... }
    hasOnlyDigits(string: "12")
    ```

    or ommited by using _

    ```
    func hasOnlyDigits (_ word: String ) -> Bool { ... }
    hasOnlyDigits("12")
    ```
