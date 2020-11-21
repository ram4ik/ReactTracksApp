//
//  AddTrack.swift
//  ReactTracksApp
//
//  Created by Ramill Ibragimov on 21.11.2020.
//

import SwiftUI

struct AddTrack: View {
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var url: String = ""
    
    @Binding var show: Bool
    
    var body: some View {
        VStack {
            Text("Set New Track")
                .font(.largeTitle)
                .bold()
                .padding()
            Group {
                TextField("Set title", text: $title)
                    .padding()
                TextField("Set description", text: $description)
                    .padding()
                TextField("Set URL", text: $url)
                    .padding()
            }.textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button {
                setTrack()
                show = false
            } label: {
                Text("Add Track")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .padding()
            }
            .background(Color.blue)
            .cornerRadius(15)
            .padding()
        }
    }
    
    private func setTrack() {
        Network.shared.apollo.perform(mutation: SetTrackMutation(title: title, description: description, url: url)) { result in
            switch result {
            case .success(let graphQLResult):
                print(graphQLResult)
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
}

struct AddTrack_Previews: PreviewProvider {
    static var previews: some View {
        AddTrack(show: .constant(false))
    }
}
