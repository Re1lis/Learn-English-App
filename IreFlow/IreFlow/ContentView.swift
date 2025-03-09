import SwiftUI

class AppState: ObservableObject {
    @Published var toggleTheme: Bool = true
}

struct ContentView: View {
    @StateObject private var appState = AppState()
    @State private var navigationPath = NavigationPath()
    @State private var isStartedApp: Bool = false
var body: some View {
        if !isStartedApp  {
            ModalStart(isStartedApp: $isStartedApp)
        }
        
        if isStartedApp {
            NavigationStack (path: $navigationPath) {
                HStack{
                    VStack {
                        HStack {
                            Text("IreFlow")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                                .background(appState.toggleTheme ? Color.black : Color.white)
                            
                        }
                        Text("Break barriers, not patience.")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .padding(.bottom, 10)
                    }
                    Button {
                        withAnimation{
                            appState.toggleTheme.toggle()
                        }
                    } label : {
                        Image(systemName: appState.toggleTheme ? "moon.fill" : "sun.max")
                            .padding(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            )
                            .padding(.trailing, 20)
                    }
                }
                    .background(appState.toggleTheme ? Color.black : Color.white)
                    .foregroundColor(appState.toggleTheme ? .white : .black)
                
                Spacer(minLength: 0)

                
                ScrollView {
                    NavigationLink {
                        PlayView()
                            .environmentObject(appState)

                    } label: {
                        Text("Play")
                            .frame(maxWidth: .infinity, minHeight: 120 ,alignment: .center)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                            .cornerRadius(20)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                    }
                    
                    NavigationLink {
                        DictionaryView()
                            .environmentObject(appState)

                    } label: {
                        Text("Dictionary")
                            .frame(maxWidth: .infinity, maxHeight: 70 ,alignment: .center)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                    }
                    
                    NavigationLink {
                        MultiplayerView()
                            .environmentObject(appState)

                    } label: {
                        Text("Multiplayer")
                            .frame(maxWidth: .infinity, maxHeight: 70 ,alignment: .center)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                    }
                    
                    NavigationLink {
                        MessengerView()
                            .environmentObject(appState)

                    } label: {
                        Text("Messenger")
                            .frame(maxWidth: .infinity, maxHeight: 70 ,alignment: .center)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                    }
                    NavigationLink {
                        ChatBotView()
                            .environmentObject(appState)

                    } label: {
                        Text("Chat Bot")
                            .frame(maxWidth: .infinity, maxHeight: 70 ,alignment: .center)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                    }
                    
                    NavigationLink {
                        DiaryView()
                            .environmentObject(appState)

                    } label: {
                        Text("Diary")
                            .frame(maxWidth: .infinity, maxHeight: 70 ,alignment: .center)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                    }
                    
                    HStack{
                        NavigationLink {
                            ProfileView()
                                .environmentObject(appState)

                        } label: {
                            Text("Profile")
                                .frame(maxWidth: 200, maxHeight: 70 ,alignment: .center)
                                .font(.title)
                                .fontWeight(.bold)
                                .padding()
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                                .padding(.horizontal)
                                .padding(.vertical, 10)
                        }
                        
                        NavigationLink {
                            SettingsView()
                                .environmentObject(appState)
                        } label: {
                            Text("Settings")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding()
                                .padding(.vertical, 10)
                                .frame(maxWidth: 200, maxHeight: 70,alignment: .center)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                                }
                                .padding(.horizontal)
                        }
                    }

                }
                .environmentObject(appState)
                .background(appState.toggleTheme ? Color.black : Color.white)
                .foregroundColor(appState.toggleTheme ? .white : .black)
                
            }

        }
    }

}







#Preview {
    ContentView()
}
