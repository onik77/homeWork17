//
//  main.swift
//  homeWork17
//
//  Created by Onik Grigoryan on 08.07.22.
//

import Foundation

//1. Ստեղծել բազային (base) class Person հետևյալ փրոփրտիով name, Ստեղծել class Chef որը կժառանգվի Person -ից և ունի հետևյալ փրոփրտիները restaurant, phoneNumber, Ստեղծել class Developer որը կժառանգվի Person -ից և ունի հետևյալ փրոփրտիները office, phoneNumber: Ստեղծել  Chef և Developer կլասներոց հինգական էկզեմպլյար դրանք տեղադրել մասիվի մեջ (բոլորը նույն մասիվի մեջ) ցիկլով անցնել էկզեմպլյարների վրայով և տպել էկզեմպլյարների name փրոփրտին, աշխատանքի վայրը և հեռախոսահամարը։

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
class Chef: Person {
    var restaurant: String
    var phoneNumber: String
    
    init(restaurant: String , phoneNumber: String , name: String) {
        self.restaurant = restaurant
        self.phoneNumber = phoneNumber
        super.init(name: name)
    }
}
class Developer: Person {
    var office: String
    var phoneNumber: String
    
    init(office: String , phoneNumber: String , name: String) {
        self.office = office
        self.phoneNumber = phoneNumber
        super.init(name: name)
    }
}

let chef1 = Chef(restaurant: "Rich", phoneNumber: "+37499999999", name: "Samvel Alexanyan")
let chef2 = Chef(restaurant: "Morena", phoneNumber: "+37499999999", name: "Lfik")
let chef3 = Chef(restaurant: "Alga", phoneNumber: "+37499999999", name: "Samvel Alexanyan")
let chef4 = Chef(restaurant: "Renaissance", phoneNumber: "+37499999999", name: "Lfik")
let chef5 = Chef(restaurant: "Oreginal", phoneNumber: "+37499999999", name: "Samvel Alexanyan")

let developer1 = Developer(office: "Disco", phoneNumber: "+37477887788", name: "Gor")
let developer2 = Developer(office: "iNexxus", phoneNumber: "+37477887788", name: "Raffi")
let developer3 = Developer(office: "Globbing", phoneNumber: "+37477887788", name: "Anto")
let developer4 = Developer(office: "PicsArt", phoneNumber: "+37477887788", name: "Leo")
let developer5 = Developer(office: "Volo", phoneNumber: "+37477887788", name: "Hovo")

let personDate: [Person] = [chef1,chef2,chef3,chef4,chef5,developer1,developer2,developer3,developer4,developer5]

for per in personDate {
    if per is Chef {
        let infoChef = per as? Chef
        print("\(per.name)->\(infoChef!.restaurant)->\(infoChef!.phoneNumber)")
    } else if per is Developer {
        let infoDeveloper = per as? Developer
        print("\(per.name)->\(infoDeveloper?.office)->\(infoDeveloper?.phoneNumber)")
    }
}


//2. Ստեղծել մասիվ Any որը պետք է պարունակի swift -ի բազային տիպերով ստեղծված արժեքներ Int, Double, Float, String
// ցիկլով տպել այդ արժեքները։

var `int`: Int = 7
let `double`: Double = 7.7
let `float`: Float = 77.77
let `string`: String = "Hello World!"
let printArray:[Any] = [int,double,float,string]

for i in printArray {
    print(i)
}

let arr:[Any] = [3,3.3,3.33,"Mi Qani Hogi"]

for i in 0..<arr.count{
    print(arr[i])
}

//3. Int-ի համար գրել Extension
//- plus(r: Int)
//- minus(r: Int)

extension Int {
   mutating func plus(r:Int) {
        self = self + r
    }
   mutating func minus(r:Int) {
       self = self - r
    }
}
int.plus(r: 70)
int.minus(r: -70)

/// second version

//extension Int {
//    func plus(r:Int) {
//        for _ in 0..<self {
//            print(self + r)
//        }
//    }
//    func minus(r:Int) {
//        for _ in 0..<self {
//            print(self - r)
//        }
//    }
//}
//int.plus(r: 7)
//int.minus(r: 7)


//4. Double համար գրել Extension
//- plus(r: Double)
//- minus(r: Double)

extension Double {
    func plus(r:Double) {
        print(self + r)
    }
    func minus(r:Double) {
        print(self - r)
    }
}
double.plus(r: 3.33)
double.minus(r: 6.66)





