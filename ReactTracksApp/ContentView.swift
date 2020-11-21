//
//  ContentView.swift
//  ReactTracksApp
//
//  Created by Ramill Ibragimov on 21.11.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var show: Bool = false
    @State private var tracksData: [GetTracksQuery.Data.Track?] = [GetTracksQuery.Data.Track?]()
    
    var body: some View {
        VStack {
            Text("Tracks")
                .font(.largeTitle)
                .bold()
                .padding()
            
            List(tracksData.indices, id: \.self) { idx in
                VStack(alignment: .leading) {
                    HStack {
                        Text(self.tracksData[idx]?.title ?? "n/a")
                            .foregroundColor(.primary)
                    }
                    HStack {
                        Text(self.tracksData[idx]?.description ?? "n/a")
                            .foregroundColor(.secondary)
                    }
                    HStack {
                        Text(self.tracksData[idx]?.url ?? "n/a")
                            .foregroundColor(.secondary)
                    }
                }
            }
            
            Spacer()
            Button {
                show.toggle()
            } label: {
                Image(systemName: "plus.rectangle")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
            }
            .background(Color.blue)
            .cornerRadius(15)
            .padding()
        }
        .sheet(isPresented: $show, onDismiss: { getTrack() }) {
            AddTrack(show: $show)
        }
        .onAppear() {
            getTrack()
        }
    }
    
    func getTrack() {
        Network.shared.apollo.fetch(query: GetTracksQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                if let tracks = graphQLResult.data?.tracks {
                    DispatchQueue.main.async {
                        tracksData = tracks
                    }
                }
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
