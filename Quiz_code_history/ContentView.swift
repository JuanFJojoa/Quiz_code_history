//
//  ContentView.swift
//  Quiz_code_history
//
//  Created by Fernando J on 3/1/2023.
//
//



import SwiftUI

struct ContentView: View {
    // instance of struc question
    
    let question = Question(question: "What was the first computer bug?", possibleAnswers: ["Beetle","Moth","Ant", "Fly"], correctAnswerIndex: 1)
    
    
    // backgroung colour
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
   
    
var body: some View {
        
        ZStack {
            mainColor.ignoresSafeArea()
            
            VStack{
                
                Text("1 / 10")
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text(question.question)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                Spacer() // push the text towards the top screen
                
                // vector buttons
                VStack(spacing: 20) {
                    
                    Button(action: {
                        print("select opt 1")
                    }, label: {
                        choiceTextView(choiceText: question.possibleAnswers[0])
                    })
                       
                    Button(action: {
                        print("select opt 2")
                    }, label: {
                        choiceTextView(choiceText: question.possibleAnswers[1])
                    })
                    
                    Button(action: {
                        print("select opt 3")
                    }, label: {
                        choiceTextView(choiceText: question.possibleAnswers[2])
                    })
                    
                    
                    Button(action: {
                        print("select opt 4")
                    }, label: {
                        choiceTextView(choiceText: question.possibleAnswers[3])
                    })
                }
                .fixedSize(horizontal: true, vertical: false)
            }
            
        }
        .foregroundColor(.white)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
