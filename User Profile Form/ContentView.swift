//
//  ContentView.swift
//  User Profile Form
//
//  Created by Anjali Minakshi on 19/06/26.
//

import SwiftUI

struct ContentView: View {
    @State private var userName = ""
    @State private var email = ""
    @State private var submittedName = ""
    @State private var submittedEmail = ""
    
    var body: some View {
        ZStack {
            
            Image("userImage")
                .resizable()
                .scaledToFit()
                .opacity(0.3)
                .ignoresSafeArea()
            
            Color.brown.opacity(0.35)
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack{
                    VStack {
                        Text ("User Profile Form")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.brown)
                            .padding(.top, 50)
                        
                        Image(systemName: "person.circle.fill")
                            .resizable()
//                            .padding(.top, 50)
                            .frame(width: 90, height: 90)
                            .foregroundColor(.brown)
                    }
                    .padding(.bottom, 30)
                    
                    VStack (spacing : 15) {
                        TextField("User Name", text: $userName)
                            .background(Color.white)
                            .foregroundColor(.brown)
                            .frame(maxWidth: 320)
                            .textFieldStyle(.roundedBorder)
                            .cornerRadius(15)
                        
                        TextField("Email Id", text: $email)
                            .background(Color.white)
                            .foregroundColor(.brown)
                            .frame(maxWidth: 320)
                            .textFieldStyle(.roundedBorder)
                            .cornerRadius(15)
                            
                    }
                    .padding()
                    .cornerRadius(15)
                    .background(Color.white.opacity(0.4).cornerRadius(13))
                    .padding(.bottom, 30)
                    
                    Button(action: {
                        submittedName = userName
                        submittedEmail = email
                    }) {
                        Text ( "Submit")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.brown)
                            .cornerRadius(12)
                            .frame(maxWidth: 320)
                    }
                    .padding(.bottom, 30)
                    
                    
                    VStack {
                        Text("User Information")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Divider()
                        
                        Text("User Name : \(submittedName)")
                            .fontWeight(.bold)
                        Text("User Email : \(submittedEmail)")
                            .fontWeight(.bold)
                    }
                    .padding()
                    .frame(maxWidth: 350)
                    .background(Color .white.opacity(0.5).cornerRadius(12))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
