//
//  ContentView.swift
//  swiftui_loginpage_reggie
//
//  Created by TI Digital on 05/06/21.
//

import SwiftUI

struct ContentView: View {
    @State var username : String = ""
    @State var password : String = ""
    var body: some View {
        ZStack{
            RadialGradient(gradient: Gradient(colors: [.blue, .red]), center: .center, startRadius: 100, endRadius: 470)
            VStack(spacing: CGFloat(30.0)){
                TitleText()
                FormField()
            }
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TitleText: View {
    var body: some View{
        return
            HStack {
                Text("SwiftUI 2.0")
                   .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                   .font(.title)
                    .foregroundColor(.white)
                Image("swift-logo")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipped()
                    .padding()
        }
    }
}

struct FormField : View {
    @State var username : String = ""
    @State var password : String = ""
    let verticalPadding = 35.0
    var body : some View {
        return
            VStack{
                HStack{
                    Image(systemName: "person")
                        .foregroundColor(.secondary)
                        .frame(width: 13.0, height: 20.0)
                    TextField("Enter your username", text: $username)
                        .foregroundColor(Color.gray)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .padding(.bottom, 20)
                
                HStack{
                    Image(systemName: "key")
                        .resizable()
                        .frame(width: 13.0, height: 20.0)
                        .foregroundColor(.secondary)
                    SecureField("Enter your password", text: $password)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .padding(.bottom, 30)
                 
                Button(action: {print("Button login clicked")}){
                    Text("LOGIN")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.headline)
                        .frame(width: 70, height: 30)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal, CGFloat(verticalPadding))
    }
}
