import SwiftUI

struct MultiplayerView: View {
    @Environment(\.dismiss) private var dismiss
    
    @EnvironmentObject var appState: AppState

    
    @State private var translateSpeedAnswerGame: Bool = true
    @State private var translateSentenceRush: Bool = true
    @State private var translatePypyingRace: Bool = true
    @State private var translatePictureMatchBattle: Bool = true
    @State private var translateTimeCrossword: Bool = true
    
    
    @State private var translateQuickAnwerDuel: Bool = true
    @State private var translateTruthOfDareEnglish: Bool = true
    @State private var translateEnglishBingo: Bool = true
    @State private var translateWordBattle: Bool = true
    @State private var translateMemoryMatch: Bool = true
    @State private var translateCrosswordDuel: Bool = true
    @State private var translateGyroCrocodile: Bool = true
    @State private var translateClassicCrocodile: Bool = true

    @State private var translateDuoStory: Bool = true
    @State private var translateTeamTower : Bool = true

    var body: some View {
        NavigationStack {
            Text("Multiplayer")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.vertical, 10)
            
            ScrollView {
                VStack{
                    Text("Online games")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack {
                        Text(translateSpeedAnswerGame ? "Speed Answer Game" : "Игра «Скорый ответ»")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translateSpeedAnswerGame ? "Answer questions faster than your opponents and prove who is the smartest!" : "Отвечай на вопросы быстрее соперников и докажи, кто здесь самый умный!")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translateSpeedAnswerGame ? "Translate" : "Перевести") {
                                withAnimation{
                                    translateSpeedAnswerGame.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translateSpeedAnswerGame ? "Play and win!" : "Играй и выиграй!")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                    
                    VStack {
                        Text(translateSentenceRush ? "Sentence Rush" : "Составление предложений на скорость")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translateSentenceRush ? "Collect solutions the fastest! Grammar + speed = victory!" : "Собирай правильные предложения быстрее всех! Грамматика + скорость = победа! ")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translateSentenceRush ? "Translate" : "Перевести") {
                                withAnimation{
                                    translateSentenceRush.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translateSentenceRush ? "Compose the fastest!" : "Составь быстрее всех!")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                    
                    VStack {
                        Text(translatePypyingRace ? "Typing Race" : "Печать на скорость")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translatePypyingRace ? "Who types the fastest? Test your typing speed and accuracy in English" : "Кто печатает быстрее всех? Проверь свою скорость набора и точность в английском!")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translatePypyingRace ? "Translate" : "Перевести") {
                                withAnimation{
                                    translatePypyingRace.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translatePypyingRace ? "Start the race!" : "Начать гонку!")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                    
                    VStack {
                        Text(translatePictureMatchBattle ? "Picture Match Battle" : "Поиск парных картинок")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translatePictureMatchBattle ? "First, find all the paired pictures and show your memory in action!" : "Найди все парные картинки первым и покажи свою память в действии!")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translatePictureMatchBattle ? "Translate" : "Перевести") {
                                withAnimation{
                                    translatePictureMatchBattle.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translatePictureMatchBattle ? "Find pairs!" : "Найти пары!")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                    
                    VStack {
                        Text(translateTimeCrossword ? "Time Crossword " : "Кроссворды на время")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translateTimeCrossword ? "Solve English crosswords against time! Who will solve it the fastest?" : "Разгадывай английские кроссворды на время! Кто решит быстрее всех?")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translateTimeCrossword ? "Translate" : "Перевести") {
                                withAnimation{
                                    translateTimeCrossword.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translateTimeCrossword ? "Solve it the fastest!" : "Разгадывай быстрее всех!")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                }
                .padding(.horizontal)
                
                
                VStack {
                    Text("Offline games (VS)")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack {
                        Text(translateQuickAnwerDuel ? "Quick Answer Duel" : "Дуэль быстрого ответа")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translateQuickAnwerDuel ? "Compete with each other in the speed of answers! Whoever is first wins!" : "Соревнуйтесь друг с другом в скорости ответов! Кто первый — тот и победил!")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translateQuickAnwerDuel ? "Translate" : "Перевести") {
                                withAnimation{
                                    translateQuickAnwerDuel.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translateQuickAnwerDuel ? "Start the duel!" : "Начать дуэль!")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                    
                    VStack {
                        Text(translateTruthOfDareEnglish ? "Truth or Dare English " : "Правда или действие")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translateTruthOfDareEnglish ? "A classic game, but in English! Answer honestly or complete the task!" : "Классическая игра, но на английском! Отвечай честно или выполняй задание!")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translateTruthOfDareEnglish ? "Translate" : "Перевести") {
                                withAnimation{
                                    translateTruthOfDareEnglish.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translateTruthOfDareEnglish ? "Challenge yourself!" : "Испытай себя! ")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                    
                    
                    VStack {
                        Text(translateEnglishBingo ? "English Bingo" : "Бинго на английском")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translateEnglishBingo ? "Collect the words on the card until you shout “Bingo!” Who's first?" : "Собирай слова на карточке, пока не закричишь “Bingo!” Кто первый? ")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translateEnglishBingo ? "Translate" : "Перевести") {
                                withAnimation{
                                    translateEnglishBingo.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translateEnglishBingo ? "Play Bingo!" : "Играть в Бинго! ")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                    
                    
                    VStack {
                        Text(translateWordBattle ? "Word Battle" : "Слова на английском")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translateWordBattle ? "Make up words in English by collecting points. Who's smarter?" : "Придумывайте слова на английском, собирая баллы. Кто умнее?")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translateWordBattle ? "Translate" : "Перевести") {
                                withAnimation{
                                    translateWordBattle.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translateWordBattle ? "Challenge!" : "Брось вызов!")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                    
                    
                    VStack {
                        Text(translateMemoryMatch ? "Memory Match" : "Поиск парных картинок")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translateMemoryMatch ? "Find all paired pictures before your opponent! Train your memory and English!" : "Найди все парные картинки раньше соперника! Тренируй память и английский!")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translateMemoryMatch ? "Translate" : "Перевести") {
                                withAnimation{
                                    translateMemoryMatch.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translateMemoryMatch ? "Start the game!" : "Начать игру!")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                    
                    
                    VStack {
                        Text(translateCrosswordDuel ? "Crossword Duel " : "Кроссворды на время")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translateCrosswordDuel ? "Who can solve the English crossword faster? Fight with a friend!" : "Кто быстрее разгадает английский кроссворд? Сразись с другом!")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translateCrosswordDuel ? "Translate" : "Перевести") {
                                withAnimation{
                                    translateCrosswordDuel.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translateCrosswordDuel ? "Start the game!" : "Начать игру!")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                    
                    
                    VStack {
                        Text(translateGyroCrocodile ? "Gyro Crocodile " : "Крокодил с гироскопом")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translateGyroCrocodile ? "Hold the phone to your forehead, ask questions, and let your friends help you! Guess the word, tilt the phone - and the next word is already on the screen!" : "Держи телефон у лба, задавай вопросы, а друзья подсказывают! Угадай слово, наклони телефон — и следующее слово уже на экране!")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translateGyroCrocodile ? "Translate" : "Перевести") {
                                withAnimation{
                                    translateGyroCrocodile.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translateGyroCrocodile ? "Start guessing!" : "Начать угадывать!")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                    
                    VStack {
                        Text(translateClassicCrocodile ? "Gyro Crocodile " : "Крокодил с гироскопом")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translateClassicCrocodile ? "Explain the word without words! Only facial expressions and gestures!" : "Объясни слово без слов! Только мимика и жесты!")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translateClassicCrocodile ? "Translate" : "Перевести") {
                                withAnimation{
                                    translateClassicCrocodile.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translateClassicCrocodile ? "Start guessing!" : "Начать угадывать!")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                }
                .padding(.horizontal)
                
                
                VStack{
                    Text("Offline co-op games")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack {
                        Text(translateDuoStory ? "Duo Story" : "Сюжет на двоих")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translateDuoStory ? "Immerse yourself in exciting stories! The entire outcome of events depends on your choice!" : "Погрузитесь в захватывающие истории! Весь исход событий зависит от вашего выбора!")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translateDuoStory ? "Translate" : "Перевести") {
                                withAnimation{
                                    translateDuoStory.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translateDuoStory ? "Immerse yourself in the story!" : "Погрузиться в сюжет!")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                    
                    
                    VStack {
                        Text(translateTeamTower ? "Team Tower" : "Командная башня")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(translateTeamTower ? "Answer correctly and build a tower of words! Can you hold her?" : "Отвечайте правильно и стройте башню из слов! Сможете удержать её?")
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Button (translateTeamTower ? "Translate" : "Перевести") {
                                withAnimation{
                                    translateTeamTower.toggle()
                                }
                            }
                            .padding(3)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        NavigationLink {
                            
                        } label: {
                            Text(translateTeamTower ? "Build a tower!" : "Построить башню!")
                                .font(.headline)
                                .padding(10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                        }
                    }
                    .padding(.bottom, 5)
                }
                .padding(.horizontal)
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
    MultiplayerView()
}
