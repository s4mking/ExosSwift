//
//  main.swift
//  SwiftFirstProject
//
//  Created by Samuel on 17/10/2019.
//  Copyright © 2019 Samuel. All rights reserved.
//

import Foundation

//print("Hello, World!")
//print(condog(str: "Samuel", prefix: "O", suffix: "Simonney"))
//print(cleanHobbits(myTinyArray : ["Frodo", "Aragorn", "Boromir", "Legolas", "Gimli", "Gandalf", "Samsaget"]))
let person = Person(
    firstname : "Emir",
    lastname : "Azaiez",
    gender : .Male,
    email : "emir.azaiezsahli@gmail.com",
    birthdate : (date: "1900-01-11 07:20:24", format: "yyyy-MM-dd HH:mm:ss")
)
person.show();


ApiManager.shared.getRandomUser(completion: { (data) in
print(data)
})
RunLoop.main.run()
