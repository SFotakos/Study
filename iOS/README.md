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
