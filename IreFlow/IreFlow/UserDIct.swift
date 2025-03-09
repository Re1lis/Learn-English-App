import SwiftUI

struct WordUser: Identifiable {
    let id = UUID()
    let name: String
    let description: String
}


struct UserDictionaryView: View {
    @Environment(\.dismiss) private var dismiss
    
    @State private var isTranslatedDictionaryUser: Bool = false
    @State private var arrayWordsUser: [WordUser] = []  // Здесь используем @State для массива


    var body: some View {
        HStack{
            Text(!isTranslatedDictionaryUser ? "UserDictionary": "Словарь пользователя")
            Button(!isTranslatedDictionaryUser ? "Translate" : "Перевести"){
                withAnimation{
                    isTranslatedDictionaryUser.toggle()
                }
            }
        }
        

            Button(!isTranslatedDictionaryUser ? "Clear dictionary" : "Очистить словарь") {
                withAnimation {
                    arrayWordsUser = []
                }
            }
            .padding(5)
            .foregroundColor(.black)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, minHeight: 25)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.black, lineWidth: 1)
            }

        
        if arrayWordsUser.count == 0 {
            Text(!isTranslatedDictionaryUser ? "No words in dictionary" : "В словаре нет слов")
        } else {
            ForEach(arrayWordsUser) { word in
                VStack {
                    HStack {
                        Text("Word - \(word.name)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .fontWeight(.bold)

                        Button("Del") {
                            withAnimation {
                                arrayWordsUser.removeAll { $0.id == word.id }
                            }
                        }
                        .padding(5)
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .frame(minWidth: 20, minHeight: 20)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.black, lineWidth: 1)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    Text("Translate - \(word.description)")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.bold)
                }
                .padding(4)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.black, lineWidth: 1)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(3)
        }
        
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Text("Back")
                        .foregroundColor(Color.black)
                        .fontWeight(.heavy)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.black, lineWidth: 1)
                            )
                        .padding(.bottom)
                }
            }
        }
    }
}


#Preview {
    UserDictionaryView()
}
