import SwiftUI

struct PlayView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var navigationPath = NavigationPath()

    @EnvironmentObject var appState: AppState
    
    @State private var translateTextIntelligenceTraining: Bool = false
    @State private var visibleIntelligenceTraining: Bool = false
    
    @State private var translateTextKnowlegleSprint: Bool = false
    @State private var visibleTextKnowlegleSprint: Bool = false
    
    @State private var translateTextQuestInReality: Bool = false
    @State private var visibleTextQuestInReality: Bool = false

    @State private var translateLanguageCode: Bool = false
    @State private var visibleLanguageCode: Bool = false
    
    @State private var transtaleTheSoundPuzzle: Bool = false
    @State private var visibleTheSoundPuzzle: Bool = false
    
    @State private var translateImmersionInSpeech: Bool = false
    @State private var visibleImmersionInSpeech: Bool = false

    @State private var translateRecordAVoice: Bool = false
    @State private var visibleRecordAVoice: Bool = false
    
    @State private var translateTheUniverseOfWords: Bool = false
    @State private var visibleTheUniverseOfWords: Bool = false
    
    var body: some View {
        NavigationStack () {
            ScrollView {
                Text("Choose a type of game")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .frame(maxWidth: .infinity, alignment: .center)
                VStack{
                    Text(!translateTextIntelligenceTraining ? "Intelligence training" : "Интеллект-тренировка")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 2)
                    if visibleIntelligenceTraining {
                        if translateTextIntelligenceTraining == false {
                            Text ("Repeat the words in the way that suits you: choose all at once or only complex ones. Each correct repetition strengthens your knowledge base — keep track of your progress in your personal account!")
                                .frame(maxWidth: .infinity, minHeight: 130, alignment: .leading)
                                .font(.custom("Text", size: 18))
                        } else {
                            Text ("Повторяйте слова так, как вам удобно: выберите все сразу или только сложные. Каждое правильное повторение укрепляет вашу „базу знаний“ — следите за прогрессом в личном кабинете!")
                                .frame(maxWidth: .infinity, minHeight: 130, alignment: .leading)
                                .font(.custom("Text", size: 18))
                        }
                    }
                    Button(translateTextIntelligenceTraining ? "Подробнее" : "More") {
                        withAnimation {
                            visibleIntelligenceTraining.toggle()
                        }
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                    Button (translateTextIntelligenceTraining ? "Перевести на английский" : "Translate to Russian") {
                        translateTextIntelligenceTraining.toggle()
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                        NavigationLink {
                            
                        } label : {
                            Text(translateTextIntelligenceTraining ? "Выбрать слова →" : "Choose words →")
                        }
                        .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                        .foregroundColor(.blue)
                        .font(.headline)
                        .padding(.vertical, 1)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        )
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom, 7)

                VStack{
                    Text(!translateTextKnowlegleSprint ? "The Knowledge Sprint" : "Спринт знаний")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 2)
                    if visibleTextKnowlegleSprint {
                        if translateTextKnowlegleSprint == false {
                            Text("Race for survival! Choose the difficulty level: from light runs (1 minute) to marathons (5+ minutes). The longer you hold on, the more valuable the bonuses are. Can you beat your record?")
                                .frame(maxWidth: .infinity, maxHeight: 110 ,alignment: .leading)
                                .font(.custom("Text", size: 18))
                            } else {
                                Text("Гонка на выживание! Выберите уровень сложности: от лёгких забегов (1 минута) до марафонов (5+ минут). Чем дольше держитесь — тем ценнее бонусы. Сможете побить свой рекорд?")
                                    .frame(maxWidth: .infinity, maxHeight: 110 ,alignment: .leading)
                                    .font(.custom("Text", size: 18))
                            }
                    }
                    Button(translateTextKnowlegleSprint ? "Подробнее" : "More") {
                        withAnimation {
                            visibleTextKnowlegleSprint.toggle()
                        }
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                    Button (translateTextKnowlegleSprint ? "Перевести на английский" : "Translate to Russian") {
                        translateTextKnowlegleSprint.toggle()
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                        NavigationLink {
                            
                        } label : {
                            Text(translateTextKnowlegleSprint ? "Старт гонки!" : "Start of the race!")
                        }
                        .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                        .foregroundColor(.blue)
                        .font(.headline)
                        .padding(.vertical, 1)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        )
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom, 7)

                VStack{
                    Text(!translateTextQuestInReality ? "A Quest in Reality" : "Квест в реальности")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 2)
                    if visibleTextQuestInReality {
                        if translateTextQuestInReality == false {
                            Text("Your words decide everything! Insert the right terms into the characters' dialogues, correct mistakes in the plot, and watch how the ending of the story changes because of your choices.")
                                .frame(maxWidth: .infinity, maxHeight: 130 ,alignment: .leading)
                                .font(.custom("Text", size: 18))
                        } else {
                            Text("Ваши слова решают всё! Вставляйте правильные термины в диалоги героев, исправляйте ошибки в сюжете и наблюдайте, как меняется концовка истории из-за ваших выборов.")
                                .frame(maxWidth: .infinity, maxHeight: 130 ,alignment: .leading)
                                .font(.custom("Text", size: 18))
                        }
                    }
                    Button (translateTextQuestInReality ? "Подробнее" : "More"){
                        withAnimation{
                            visibleTextQuestInReality.toggle()
                        }
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                    Button (translateTextQuestInReality ? "Перевести на английский" : "Translate to Russian") {
                        translateTextQuestInReality.toggle()
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                        NavigationLink {
                            
                        } label : {
                            Text(translateTextQuestInReality ? "Начать квест" : "Start the quest")
                        }
                        .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                        .foregroundColor(.blue)
                        .font(.headline)
                        .padding(.vertical, 1)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        )
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom, 7)
                
                VStack{
                    Text(!translateLanguageCode ? "Language Code" : "Код языка")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 2)
                    if visibleLanguageCode {
                        if translateLanguageCode == false {
                            Text("Assemble a letter puzzle, solve a crossword puzzle, or find hidden words in a grid. Each puzzle is a step towards unlocking new themes!")
                                .frame(maxWidth: .infinity, maxHeight: 130 ,alignment: .leading)
                                .font(.custom("Text", size: 18))
                        } else {
                            Text("Соберите пазл из букв, разгадайте кроссворд или найдите спрятанные слова в сетке. Каждая головоломка — шаг к разблокировке новых тем!")
                                .frame(maxWidth: .infinity, maxHeight: 130 ,alignment: .leading)
                                .font(.custom("Text", size: 18))
                        }
                    }
                    Button (translateLanguageCode ? "Подробнее" : "More"){
                        withAnimation{
                            visibleLanguageCode.toggle()
                        }
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                    Button (translateLanguageCode ? "Перевести на английский" : "Translate to Russian") {
                        translateLanguageCode.toggle()
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                        NavigationLink {
                            
                        } label : {
                            Text(translateLanguageCode ? "Разгадать шифр" : "Unravel the cipher")
                        }
                        .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                        .foregroundColor(.blue)
                        .font(.headline)
                        .padding(.vertical, 1)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        )
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom, 7)
                
                VStack{
                    Text(!transtaleTheSoundPuzzle ? "The sound Puzzle" : "Звуковая загадка")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 2)
                    if visibleTheSoundPuzzle {
                        if transtaleTheSoundPuzzle == false {
                            Text("Listen to the audio story, memorize the details and answer the tricky questions. Don't miss a single clue — sometimes even the way a word is pronounced is important!")
                                .frame(maxWidth: .infinity, maxHeight: 130 ,alignment: .leading)
                                .font(.custom("Text", size: 18))
                        } else {
                            Text("Прослушайте аудио-историю, запомните детали и ответьте на каверзные вопросы. Не упустите ни одной подсказки — иногда важно даже то, как произнесено слово!")
                                .frame(maxWidth: .infinity, maxHeight: 130 ,alignment: .leading)
                                .font(.custom("Text", size: 18))
                        }
                    }
                    Button (transtaleTheSoundPuzzle ? "Подробнее" : "More"){
                        withAnimation{
                            visibleTheSoundPuzzle.toggle()
                        }
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                    Button (transtaleTheSoundPuzzle ? "Перевести на английский" : "Translate to Russian") {
                        transtaleTheSoundPuzzle.toggle()
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                        NavigationLink {
                            
                        } label : {
                            Text(transtaleTheSoundPuzzle ? "Слушать дело" : "Listen to the case")
                        }
                        .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                        .foregroundColor(.blue)
                        .font(.headline)
                        .padding(.vertical, 1)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        )
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom, 7)
                
                
                VStack{
                    Text(!translateImmersionInSpeech ? "Immersion in Speech" : "Погружение в Речь")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 2)
                    if visibleImmersionInSpeech {
                        if translateImmersionInSpeech == false {
                            Text("Check how you understand live speech! Listen to native speakers' dialogues, and then answer tricky questions. Did you catch the irony? Did you recognize the accent? The more accurate the answers are, the more keys you will get to new levels!")
                                .frame(maxWidth: .infinity, minHeight: 150 ,alignment: .leading)
                                .font(.custom("Text", size: 18))
                        } else {
                            Text("Проверьте, как вы понимаете живую речь! Слушайте диалоги носителей языка, а затем отвечайте на каверзные вопросы. Уловили иронию? Распознали акцент? Чем точнее ответы — тем больше ключей от новых уровней вы получите!")
                                .frame(maxWidth: .infinity, minHeight: 150 ,alignment: .leading)
                                .font(.custom("Text", size: 18))
                        }
                    }
                    Button (translateImmersionInSpeech ? "Подробнее" : "More"){
                        withAnimation{
                            visibleImmersionInSpeech.toggle()
                        }
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                    Button (translateImmersionInSpeech ? "Перевести на английский" : "Translate to Russian") {
                        translateImmersionInSpeech.toggle()
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                        NavigationLink {
                            
                        } label : {
                            Text(translateImmersionInSpeech ? "Начать тест" : "Start the test")
                        }
                        .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                        .foregroundColor(.blue)
                        .font(.headline)
                        .padding(.vertical, 1)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        )
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom, 7)
                
                VStack{
                    Text(!translateRecordAVoice ? "The Sound Standard" : "Звуковой Эталон")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 2)
                    if visibleRecordAVoice {
                        if translateRecordAVoice == false {
                            Text("Record your speech, compare it with a sample from a native speaker, and get instant feedback. Perfect pronunciation is your superpower!")
                                .frame(maxWidth: .infinity, minHeight: 120 ,alignment: .leading)
                                .font(.custom("Text", size: 18))
                        } else {
                            Text("Записывайте свою речь, сравнивайте с образцом от носителя языка и получайте моментальную обратную связь. Идеальное произношение — ваша суперсила!")
                                .frame(maxWidth: .infinity, minHeight: 120 ,alignment: .leading)
                                .font(.custom("Text", size: 18))
                        }
                    }
                    Button (translateRecordAVoice ? "Подробнее" : "More"){
                        withAnimation{
                            visibleRecordAVoice.toggle()
                        }
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                    Button (translateRecordAVoice ? "Перевести на английский" : "Translate to Russian") {
                        translateRecordAVoice.toggle()
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                        NavigationLink {
                            
                        } label : {
                            Text(translateRecordAVoice ? "Записать голос" : "Record a voice")
                        }
                        .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                        .foregroundColor(.blue)
                        .font(.headline)
                        .padding(.vertical, 1)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        )
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom, 7)
                
                VStack{
                    Text(!translateTheUniverseOfWords ? "The Universe of Words" : "Вселенная слов")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 2)
                    if visibleTheUniverseOfWords {
                        if translateTheUniverseOfWords == false {
                            Text("Write stories using the given words. The AI will check grammar, suggest synonyms, and evaluate creativity. The best stories end up in the general library!")
                                .frame(maxWidth: .infinity, minHeight: 105 ,alignment: .leading)
                                .font(.custom("Text", size: 18))
                        } else {
                            Text("Пишите истории, используя заданные слова. ИИ проверить грамматику, подскажет синонимы и оценит креативность. Лучшие рассказы попадают в общую библиотеку!")
                                .frame(maxWidth: .infinity, minHeight: 105 ,alignment: .leading)
                                .font(.custom("Text", size: 18))
                        }
                    }
                    Button (translateTheUniverseOfWords ? "Подробнее" : "More"){
                        withAnimation{
                            visibleTheUniverseOfWords.toggle()
                        }
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                    Button (translateTheUniverseOfWords ? "Перевести на английский" : "Translate to Russian") {
                        translateTheUniverseOfWords.toggle()
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                    .font(.headline)
                    .padding(.vertical, 1)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    )
                        NavigationLink {
                            
                        } label : {
                            Text(translateTheUniverseOfWords ? "Создать историю" : "Create a story")
                        }
                        .frame(maxWidth: .infinity, minHeight: 40 ,alignment: .center)
                        .foregroundColor(.blue)
                        .font(.headline)
                        .padding(.vertical, 1)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        )
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom, 7)
                
                Spacer()
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
    PlayView()
}
