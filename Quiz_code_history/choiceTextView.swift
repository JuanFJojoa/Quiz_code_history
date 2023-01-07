//
//  choiceTextView.swift
//  Quiz_code_history
//
//  Created by Fernando J on 6/1/2023.
//

import SwiftUI

struct choiceTextView: View {
    let choiceText :  String
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        
     // generate text asociated with the botton 
        Text(choiceText)
            .font(.callout)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth:.infinity)
            .overlay(RoundedRectangle(cornerRadius: 16)
            .stroke(accentColor, lineWidth: 4))
    }
}

struct choiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        choiceTextView(choiceText: "ant!")
    }
}
