import SwiftUI

struct DiaryView: View {
    @State private var isTranslated: Bool = false
    @State private var textNoteDescription: String = ""
    @State private var isVisibleForm: Bool = false
    @State private var arrayNotes: [(String, String)] = []
    @State private var titleNote: String = ""
    @State private var selectedNote: Int? = nil
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var appState: AppState

    var body: some View {
        VStack {
            HStack {
                Text(!isTranslated ? "Diary" : "Дневник")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .frame(maxWidth: 200, alignment: .leading)
                Button {
                    withAnimation{
                        isTranslated.toggle()
                    }
                } label: {
                    Text(!isTranslated ? "Translate" : "Перевести")
                }
                .padding(3)
                .overlay{
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                }
            }
            .frame(maxWidth: .infinity)

            Text(!isTranslated ? "Here you can leave your notes." : "Здесь вы можете оставлять свои заметки")
                .padding(.horizontal)
                .font(.caption)
                .background(appState.toggleTheme ? Color.black : Color.white)
                .foregroundColor(appState.toggleTheme ? .gray : .secondary)
            
            Button {
                withAnimation{
                    isVisibleForm.toggle()
                }
            } label : {
                if !isVisibleForm {
                    Text(!isTranslated ? "Add Note" : "Добавить заметку")
                        .frame(maxWidth: .infinity)
                        .padding(5)
                        .fontWeight(.bold)
                        .font(.title)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        }
                        .padding(.horizontal)
                } else if isVisibleForm {
                    Text (!isTranslated ? "Close Form" : "Закрыть форму")
                        .frame(maxWidth: .infinity)
                        .padding(5)
                        .fontWeight(.bold)
                        .font(.title)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        }
                        .padding(.horizontal)
                }
                     
            }
            
            if isVisibleForm {
                VStack {
                    TextField ("", text:$titleNote, prompt: Text (!isTranslated ? "Write name your note" : "Напишите название вашей заметки").foregroundColor(.gray))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        }
                        .padding(.horizontal)
                    TextEditor(text: $textNoteDescription)
                        .frame(maxWidth: .infinity, maxHeight: 100)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        }
                        .padding(.horizontal)
                        .scrollContentBackground(.hidden)
                        .background(appState.toggleTheme ? Color.black : Color.white)
                        .foregroundColor(appState.toggleTheme ? .white : .black) 


                    Button {
                        if !titleNote.isEmpty && !textNoteDescription.isEmpty {
                            arrayNotes.append((titleNote, textNoteDescription))
                            textNoteDescription = ""
                            titleNote = ""
                            withAnimation{
                                isVisibleForm.toggle()
                            }
                        }
                    } label: {
                        Text(!isTranslated ? "Add" : "Добавить")
                            .frame(maxWidth: .infinity)
                            .padding(5)
                            .fontWeight(.bold)
                            .font(.headline)
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                            .padding(.horizontal)
                    }
                }
            }
            
            
            HStack {
                Text (!isTranslated ? "All notes" : "Все заметки")
                    .fontWeight(.bold)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("\(arrayNotes.count) \("Notes")")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)

            
            ScrollView {
                ForEach(arrayNotes.indices, id: \.self) { index in
                    VStack{
                        HStack {
                            Text(arrayNotes[index].0)
                                .font(.title)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 5)
                            Button {
                                arrayNotes.remove(at: index)
                            } label : {
                                Text(!isTranslated ? "Delete" : "Удалить")
                                    .padding(5)
                                    .overlay{
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                    }
                                    .font(.headline)
                                    .padding(.trailing, 5)

                            }
                        }
                        Button {
                            withAnimation {
                                selectedNote = (selectedNote == index ? nil : index)
                            }
                        } label: {
                            Text (selectedNote == index ? (!isTranslated ? "Close" : "Закрыть") : (!isTranslated ? "More" : "Подробнее"))
                                .frame(maxWidth: .infinity)
                                .padding(5)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                         }
                        if selectedNote == index {
                            Text(arrayNotes[index].1)
                        }
                    }
                    .padding(5)
                    .frame(maxWidth: .infinity)
                    .overlay{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    }
                    .padding(.horizontal)
                }
            }
        }
        .background(appState.toggleTheme ? Color.black : Color.white)
        .foregroundColor(appState.toggleTheme ? .white : .black)
        
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
    }
}



#Preview {
    DiaryView()
}

