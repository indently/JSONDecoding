//
//  ContentView.swift
//  JSONTest
//
//  Created by Federico on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    private var sample: Person = Person.samplePerson
    private var people: [Person] = Person.allPeople

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("\(sample.firstName) + \(sample.surname)")
                Text("\(sample.phoneNumbers[0].number)")
                Text("\(sample.address.streetAddress)")
                Text("\(sample.address.city)")
            }
            
            VStack {
                List {
                    ForEach(people, id: \.firstName) { person in
                        Text("\(person.firstName) \(person.surname)")
                    }
                }
            }
        }
        .onAppear {
            print("\(people)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
