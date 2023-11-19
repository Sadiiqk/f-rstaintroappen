import SwiftUI

struct PersonView: View {
    @State private var stad = ["Malmö", "Skellefteå", "Karlstad"]
    @State private var addName = ""

    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "airplane")
                    .imageScale(.large)
                    .foregroundColor(.blue)
                Text("Hej, resenärer!")

                HStack {
                    TextField("Skriv stad", text: $addName)
                    Button("Lägg till annan stad") {
                        addPerson()
                    }
                }

                List(stad, id: \.self) { person in
                    NavigationLink(destination: DetailView(plats: person)) {
                        HStack {
                            Image(systemName: "airplane")
                                .foregroundColor(.blue)
                            Text(person)
                        }
                    }
                }

                Button("Reset") {
                    stad.removeAll()
                }
            }
            .padding()
        }
    }

    private func addPerson() {
        if !addName.isEmpty {
            stad.append(addName)
            addName = ""
        }
    }
}

struct DetailView: View {
    var plats: String

    var body: some View {
        Text("Information om flygget till \(plats)")
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView()
    }
}


