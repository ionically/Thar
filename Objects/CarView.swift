//
//  Car.swift
//  Objects
//
//  Created by chandni chaudhari on 09/04/23.
//
import SwiftUI
import Foundation
import UIKit
class Car{
    var Main = Int()
    var secondvehiFirsTime = String()
    var thirdtime = String()
    var image = "WheelsRunning"
    let image1 = "stop"
    let image3 = "go way"
    
    init(UserDefaultIndexValue: Int,Running: String,stop:String){
        Main = UserDefaultIndexValue
        secondvehiFirsTime = Running
        thirdtime = stop
        
    }
    func startCar(){
        print("I am Driving my car");
        
    }
    func stopCar(){
        print("I came home early");
    }
    
}
let objCar = Car(UserDefaultIndexValue: 30,Running: "Running",stop: "stop")
struct User{
    var name : String
    var age  : Int
    var address : String
    func printUserInfo()->String{
        return "name=\(name)age=\(age)place belong to=\(address)"
    }
    
}
let ans = User(name:"Hero",age:30,address:"22 street gold garden sezwaan state")

struct CarView: View{
    var body: some View {
        ScrollView{
            ZStack{
                HStack(alignment: .center, spacing: 5){
                    Image("go way")
                        .font(.system(size: 15, weight: .bold, design: .monospaced))
                        .foregroundColor(.black)
                        .cornerRadius(80.50)
                }
                ScrollView{
                    HStack(alignment: .center, spacing: 5){
                        Text("lets see")
                            .font(.system(size: 40, weight: .bold, design: .monospaced))
                            .foregroundColor(.black)
                        Button {
                            Spacer()
                            print("I am Driving my car \n I will come home early asap")
                            Text("I am Driving my car \n I will come home early asap")
                        } label: {
                            Image("Running")
                            Text("I am Driving my car \n I will come home early asap!")
                                .cornerRadius(80.50)
                            
                        }
                    }
                        Button {
                            print("I am Driving my car and I will try to come early!")
                            Text("I am Driving my car and I will try to come early!")
                        } label: {
                            Text("I am Driving my car and I will try to come early!")
                        }
                    }
                
                Spacer()
                ScrollView{
                    VStack{
                        Text("Come On")
                            .font(.system(size: 40, weight: .bold, design: .monospaced))
                            .foregroundColor(.black)
                        Button {
                            Spacer()
                            print("I came home early!")
                            Text("I came home early!")
                        } label: {
                            Image("stop")
                            Text("I came home early!")
                                .cornerRadius(80.50)
                            
                        }
                        
                        Button {
                            print("I came home early!")
                            Text("I came home early!")
                        } label: {
                            Text("I came home early!")
                        }
                    }
                }
                ZStack{
                    Button {
                        Text("Stop")
                    } label: {
                        Text("Hurray")
                    }
                }
                
                
            }
        }
        }
    }
    struct CarView_Previews: PreviewProvider {
        static var previews: some View {
            CarView()
        }
    }

