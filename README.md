# CrackStation
A Decrypter implementation:

Alibrary to implement the encrypted passwords upto 3 letters using sha1 or sha256

Overview of the Package :

we have created a crackstation package where we use the encrypted hash values that we got by creating a program for the sha1 and sha256 and stored it in a lookup table ie,the data.json file and then we use the decrypt function that is used to take the hash value of the string upto 3 variables and it also contains ! and ? as special characters that can be used to encrypt the password to give the string as the output.we have tried different test cases and combinations to make sure that the user is giving the hash value of the data present in the look up table and if it doesnt then we get nil. some one can use it to maintain security as the hash value is kept by them and if and only if they input the value they get their desired output.the public API that is used in this is decrypter that as mentioned used to decrypt the given hash values.

Mission Statement :

the main purpose of the library is to provide security in order to prevent it from being available to others. this is done by using different combinations upto three letters of all combinations including numbers in order to provide safety. the idea behind this is to crack passwords that is often encrypted by using the library that we have created.

Installation
Swift Package Manager :

The Swift Package Manager is "a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies."

Once you have your Swift package set up, add CrackStation to the list of dependencies in your `Package.swift` file:
```swift
dependencies: [
  .package(url: "git@github.com:Krishvrutti/CrackStation.git", .upToNextMajor(from: "1.0.0"))
]
```

Usage :
The API :
it is used to initialize the function and often the lookuptable is called in it to avoid calling it again for every test
```swift
public required init 
    
```
it is used to write a function to decrypt the encrypted value 
``` swift
public func decrypt
```
lookup table used to look for the encrypted values using the sha1 and sha256
```swift
static func loadDictionaryFromDisk()
```
An Example :
```swift
 let crackStation = CrackStation()
        let result = crackStation.decrypt(shaHash: "205923b569cf1d5ec5b1337e5551bc6b702d1a41970ebb1bd06a38d6a46b614a")
        let expectedResult = "ql"
```
in this the value entered and the value already placed in the lookuptable are being matched if they are the same value then the expected result will be shown and the test is succeded and if not there shows an error.


Author:

sattaru krish vrutti

