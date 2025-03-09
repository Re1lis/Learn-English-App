
import SwiftUI

struct DictionaryView: View {
    @Environment(\.dismiss) private var dismiss
    
    @EnvironmentObject var appState: AppState

    @State private var searchText = ""
    @State private var displayedWords = dictionaryWords
    @State private var arrayWordsUser: [Word] = []

    @State private var nameUserField: String = ""
    @State private var descriptionUserField: String = ""

    @State private var isTranslatedDictionaryUser: Bool = false
    @State private var isVisibleTextField: Bool = false
    @State private var visibleDictionary: Bool = false
    @State private var openOrCloseDictionary: Bool = false

    @State private var openDictionaryApp: Bool = false

    @State private var openDictionaryAppA2: Bool = false
    @State private var searchTextA2 = ""
    @State private var displayedWordsA2 = dictionaryWordsA2

    @State private var openDictionaryAppB1: Bool = false
    @State private var searchTextB1 = ""
    @State private var displayedWordsB1 = dictionaryWordsB1

    
    @State private var openDictionaryAppB2: Bool = false
    @State private var searchTextB2 = ""
    @State private var displayedWordsB2 = dictionaryWordsB2
    
    
    @State private var visibleDictionaryA1: Bool = false
    @State private var visibleDictionaryA2: Bool = false
    @State private var visibleDictionaryB1: Bool = false
    @State private var visibleDictionaryB2: Bool = false

    var body: some View {
        Text(!isTranslatedDictionaryUser ? "Dictionary" : "Словарь")
            .foregroundColor(appState.toggleTheme ? .white : .black)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(appState.toggleTheme ? Color.black : Color.white)

        Spacer(minLength: 0)

        Button(!isTranslatedDictionaryUser ? "Translated" : "Перевести") {
            withAnimation{
                isTranslatedDictionaryUser.toggle()
            }
        }
        .padding(5)
        .fontWeight(.bold)
        .font(.title)
        .frame(maxWidth: .infinity, maxHeight: 30)
        .overlay{
            RoundedRectangle(cornerRadius: 20)
                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
        }
        .frame(maxWidth: .infinity)
        .padding(.bottom, 10)
        .padding(.horizontal)
        .background(appState.toggleTheme ? Color.black : Color.white)
        .foregroundColor(appState.toggleTheme ? .white : .black)

        
        Spacer(minLength: 0)

        
        ScrollView {
            VStack {
                HStack {
                    if isTranslatedDictionaryUser {
                        Text(!isTranslatedDictionaryUser ? "User dictionary" : "Словарь пользователя")
                            .fontWeight(.bold)
                            .font(.custom("bold", size: 22))
                            .frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
                    } else {
                        Text(!isTranslatedDictionaryUser ? "User dictionary" : "Словарь пользователя")
                            .font(.title)
                            .frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
                            .fontWeight(.bold)
                    }
                    Button(isVisibleTextField ? "Add Word" : "Close Form") {
                        withAnimation {
                            isVisibleTextField.toggle()
                        }
                    }
                    
                    .padding(5)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .fontWeight(.bold)
                    .frame(maxWidth: 120, maxHeight: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                }
                .padding(.bottom, 5)
                


                Text(!isTranslatedDictionaryUser ? "Words will be added to a separate dictionary" : "Слова, будут добавляться в отдельный словарь")
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)

                if !isVisibleTextField {
                    VStack {
                        TextField("", text: $nameUserField, prompt: Text(!isTranslatedDictionaryUser ? "Add word" : "Добавить слово").foregroundColor(.gray))
                            .frame(maxWidth: .infinity)
                            .foregroundColor(appState.toggleTheme ? .white : .black)
                            .padding(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            )
                        TextField("", text: $descriptionUserField, prompt: Text(!isTranslatedDictionaryUser ? "Add translation" : "Добавить перевод").foregroundColor(.gray))
                            .frame(maxWidth: .infinity)
                            .foregroundColor(appState.toggleTheme ? .white : .black)
                            .padding(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            )
                        Button(!isTranslatedDictionaryUser ? "Add" : "Добавить") {
                            if !nameUserField.isEmpty && !descriptionUserField.isEmpty {
                                let newWord = Word(name: nameUserField, description: descriptionUserField)
                                arrayWordsUser.append(newWord)
                                nameUserField = ""
                                descriptionUserField = ""
                                withAnimation {
                                    isVisibleTextField.toggle()
                                }
                            }
                        }
                        .padding(5)
                        .fontWeight(.bold)
                        .frame(maxWidth: 120, maxHeight: 50)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        }
                    }
                }
                

                if arrayWordsUser.count > 0 {
                    withAnimation {
                        HStack {
                            Button(!openOrCloseDictionary ? "Open Dictionary" : "Close Dictionary") {
                                withAnimation {
                                    openOrCloseDictionary.toggle()
                                    visibleDictionary.toggle()
                                }
                            }
                            .padding(5)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, minHeight: 25)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                            .padding(.bottom, 5)
                            Button(!isTranslatedDictionaryUser ? "Clear dictionary" : "Очистить словарь") {
                                withAnimation {
                                    arrayWordsUser = []
                                }
                            }
                            .padding(5)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, minHeight: 25)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                    }
                }

                if visibleDictionary {
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
                                .fontWeight(.bold)
                                .frame(minWidth: 20, minHeight: 20)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                            }
                            .frame(maxWidth: .infinity)
                            Text("Translate - \(word.description)")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .fontWeight(.bold)
                        }
                        .padding(4)
                        .overlay{
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(3)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .padding(.bottom, 50)
            
            Text("Levels Words")
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(!isTranslatedDictionaryUser ? "Click on the level and a dictionary with the corresponding words will open (close)" : "Нажмите на уровень, и откроется (закроется) словарь с соответствующими словами.")
                .font(.headline)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 10)
                .fontWeight(.bold)
                .padding(.horizontal)
            HStack {
                Button("A1") {
                    withAnimation{
                        visibleDictionaryA1.toggle()
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(4)
                .font(.title)
                .fontWeight(.bold)
                .overlay{
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                }
                Button("A2") {
                    withAnimation{
                        visibleDictionaryA2.toggle()
                    }

                }
                .frame(maxWidth: .infinity)
                .padding(4)
                .font(.title)
                .fontWeight(.bold)
                .overlay{
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                }
                Button("B1") {
                    withAnimation{
                        visibleDictionaryB1.toggle()
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(4)
                .font(.title)
                .fontWeight(.bold)
                .overlay{
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                }
                Button("B2") {
                    withAnimation{
                        visibleDictionaryB2.toggle()
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(4)
                .font(.title)
                .fontWeight(.bold)
                .overlay{
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)

            if visibleDictionaryA1 {
                Text("Dictionary App (A1)")
                    .fontWeight(.bold)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                HStack {
                    TextField("Word search...", text: $searchText)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Search") {
                        if searchText.isEmpty {
                            displayedWords = dictionaryWords
                        } else {
                            displayedWords = dictionaryWords.filter { word in
                                word.name.lowercased().contains(searchText.lowercased()) ||
                                word.description.lowercased().contains(searchText.lowercased())
                            }
                            searchText = ""
                        }
                    }
                    .padding(5)
                    .fontWeight(.bold)
                    .overlay{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                Button(!openDictionaryApp ? "Open Dictionary" : "Close Dictionary") {
                    withAnimation {
                        openDictionaryApp.toggle()
                    }
                }
                .padding(5)
                .fontWeight(.bold)
                .overlay{
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                }
                .padding(.horizontal)

                if openDictionaryApp {
                    ForEach(displayedWords) { word in
                        VStack {
                            HStack {
                                Text("Word: \(word.name)")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .fontWeight(.bold)

                                Button("Add in Dictionary") {
                                    withAnimation {
                                        if !arrayWordsUser.contains(where: { $0.id == word.id }) {
                                            arrayWordsUser.append(word)
                                        }
                                    }
                                }
                                .padding(5)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                            }
                            Text("Translate - \(word.description)")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .fontWeight(.bold)
                        }
                        .padding(7)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        }
                        .padding(.horizontal)
                    }
                }

            }
            
            if visibleDictionaryA2{
                Text("Dictionary App (A2)")
                    .fontWeight(.bold)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                HStack {
                    TextField("Word search...", text: $searchTextA2)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Search") {
                        if searchTextA2.isEmpty {
                            displayedWordsA2 = dictionaryWordsA2
                        } else {
                            displayedWordsA2 = dictionaryWordsA2.filter { word in
                                word.name.lowercased().contains(searchTextA2.lowercased()) ||
                                word.description.lowercased().contains(searchTextA2.lowercased())
                            }
                            searchTextA2 = ""
                        }
                    }
                    .padding(5)
                    .fontWeight(.bold)
                    .overlay{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                Button(!openDictionaryAppA2 ? "Open Dictionary" : "Close Dictionary") {
                    withAnimation {
                        openDictionaryAppA2.toggle()
                    }
                }
                .padding(5)
                .fontWeight(.bold)
                .overlay{
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                }
                .padding(.horizontal)

                if openDictionaryAppA2 {
                    ForEach(displayedWordsA2) { word in
                        VStack {
                            HStack {
                                Text("Word: \(word.name)")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .fontWeight(.bold)

                                Button("Add in Dictionary") {
                                    withAnimation {
                                        if !arrayWordsUser.contains(where: { $0.id == word.id }) {
                                            arrayWordsUser.append(word)
                                        }
                                    }
                                }
                                .padding(5)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                            }
                            Text("Translate - \(word.description)")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .fontWeight(.bold)
                        }
                        .padding(7)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        }
                        .padding(.horizontal)
                    }
                }
            }

            if visibleDictionaryB1{
                Text("Dictionary App (B1)")
                    .fontWeight(.bold)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                HStack {
                    TextField("Word search...", text: $searchTextB1)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Search") {
                        if searchTextB1.isEmpty {
                            displayedWordsB1 = dictionaryWordsB1
                        } else {
                            displayedWordsB1 = dictionaryWordsB1.filter { word in
                                word.name.lowercased().contains(searchTextB1.lowercased()) ||
                                word.description.lowercased().contains(searchTextB1.lowercased())
                            }
                            searchTextB1 = ""
                        }
                    }
                    .padding(5)
                    .fontWeight(.bold)
                    .overlay{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                Button(!openDictionaryAppB1 ? "Open Dictionary" : "Close Dictionary") {
                    withAnimation {
                        openDictionaryAppB1.toggle()
                    }
                }
                .padding(5)
                .fontWeight(.bold)
                .overlay{
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                }
                .padding(.horizontal)

                if openDictionaryAppB1 {
                    ForEach(displayedWordsB1) { word in
                        VStack {
                            HStack {
                                Text("Word: \(word.name)")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .fontWeight(.bold)

                                Button("Add in Dictionary") {
                                    withAnimation {
                                        if !arrayWordsUser.contains(where: { $0.id == word.id }) {
                                            arrayWordsUser.append(word)
                                        }
                                    }
                                }
                                .padding(5)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                            }
                            Text("Translate - \(word.description)")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .fontWeight(.bold)
                        }
                        .padding(7)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        }
                        .padding(.horizontal)
                    }
                }
            }
            
            if visibleDictionaryB2 {
                Text("Dictionary App (B2)")
                    .fontWeight(.bold)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                HStack {
                    TextField("", text: $searchTextB2, prompt: Text(!isTranslatedDictionaryUser ? "Search by word" : "Найти слово"))
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Search") {
                        if searchTextB2.isEmpty {
                            displayedWordsB2 = dictionaryWordsB1
                        } else {
                            displayedWordsB2 = dictionaryWordsB2.filter { word in
                                word.name.lowercased().contains(searchTextB1.lowercased()) ||
                                word.description.lowercased().contains(searchTextB2.lowercased())
                            }
                            searchTextB2 = ""
                        }
                    }
                    .padding(5)
                    .fontWeight(.bold)
                    .overlay{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                Button(!openDictionaryAppB2 ? "Open Dictionary" : "Close Dictionary") {
                    withAnimation {
                        openDictionaryAppB2.toggle()
                    }
                }
                .padding(5)
                .fontWeight(.bold)
                .overlay{
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                }
                .padding(.horizontal)

                if openDictionaryAppB2 {
                    ForEach(displayedWordsB2) { word in
                        VStack {
                            HStack {
                                Text("Word: \(word.name)")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .fontWeight(.bold)

                                Button("Add in Dictionary") {
                                    withAnimation {
                                        if !arrayWordsUser.contains(where: { $0.id == word.id }) {
                                            arrayWordsUser.append(word)
                                        }
                                    }
                                }
                                .padding(5)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                            }
                            Text("Translate - \(word.description)")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .fontWeight(.bold)
                        }
                        .padding(7)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        }
                        .padding(.horizontal)
                    }
                }
            }
            }
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button{
                    dismiss()
                } label: {
                    Text("Back")
                        .foregroundColor(appState.toggleTheme ? .white : .black)
                        .fontWeight(.heavy)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        )
                        .padding(.bottom)
                }
            }
        }
        .background(appState.toggleTheme ? Color.black : Color.white)
        .foregroundColor(appState.toggleTheme ? .white : .black)
    }
}

#Preview {
    DictionaryView()
}


