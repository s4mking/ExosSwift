//
//  Exercice_3.swift
//  SwiftFirstProject
//
//  Created by Samuel on 17/10/2019.
//  Copyright © 2019 Samuel. All rights reserved.
//

import Foundation

extension String
{
   
    func toDate(format :String) -> Date{
         let dateFormatter = DateFormatter()
        print(format)
         dateFormatter.dateFormat = format
         return dateFormatter.date(from: self)!
     }
}

extension Date
{
    func toString(format: String) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let myString = formatter.string(from: Date())
        return myString;
    }
    
    func getYearDifferenceFrom(date: Date) -> Int{
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year], from: date, to: self)
        let age = ageComponents.year!
        return age
    }
}

struct Email:CustomStringConvertible{
var description: String{
    return self.email!
}
    var email:String?
    
    init(email: String){
        self.email = email
    }
    
    func isValid() -> Bool{
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self.email)
    }
}

class Existence {
    var birthdate :Date
    var age :Int
    init(date: Date?){
        self.birthdate = date!
        self.age = Date().getYearDifferenceFrom(date: date!)
    }
    
    func willProbablyDieSoon() ->Bool{
      return self.age >= 100
    }
}

class Person:Existence{
    
    enum Gender {
        case Male
        case Female
        case Other
    }
    
    var gender:Gender
    var firstname:String
    var lastname:String
    var email:Email
    
    init(firstname: String, lastname: String, gender: Gender, email: String, birthdate: (date: String, format: String)) {
        self.firstname = firstname
        self.lastname = lastname
        self.gender = gender
        self.email = Email(email:email)
          super.init(date: birthdate.date.toDate(format: birthdate.format))
    }
    
    init(firstname: String, lastname: String, gender: Gender, email: String, birthdate: Date){
        self.firstname = firstname
               self.lastname = lastname
               self.gender = gender
        self.email = Email(email:email)
        super.init(date: birthdate)
        
    }
    
    
    func show() {
            
        print("firstname : \(self.firstname) ")
        print("lastname : \(self.lastname) ")
        
        switch self.gender {
        case .Male:
            print("gender : Male")
        case .Female:
            print("gender : Female")
        case .Other:
            print("gender : Other")
        }
        
        print("email valid : \(self.email.isValid())")
        print("email : \(self.email)")
        
        print("birthdate : \(self.birthdate)")
        print("age : \(self.age)")
        print("will die soon : \(self.willProbablyDieSoon())")
        
    }
}
