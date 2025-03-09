import SwiftUI

struct ContentView: View {
    @State private var navigationPath = NavigationPath()
    var body: some View {
        ZStack{
            Image("Assets/profile")
                Text("IreFlow")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .frame(maxWidth: 150, alignment: .center)
                Image("settings")
            }
            Text("Break barriers, not patience.")
                .font(.title)
                .fontWeight(.semibold)
            
            
            NavigationStack (path: $navigationPath) {
                
                NavigationLink{
                    
                }   label: {
                    Text("Play")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .padding(.vertical, 50)
                        .background(Color(red: 219/255, green: 217/255, blue: 215/255).opacity(0.8))
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                        .shadow(color: Color.gray, radius: 5, x: 0, y: 5)
                        .padding(.bottom, 30)
                }
                
                NavigationLink{
                    
                }   label: {
                    Text("Dictionary")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .padding(.vertical, 50)
                        .background(Color(red: 219/255, green: 217/255, blue: 215/255).opacity(0.8))
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                        .shadow(color: Color.gray, radius: 5, x: 0, y: 5)
                        .padding(.bottom, 30)
                }
                
                NavigationLink{
                    
                }   label: {
                    Text("Multiplayer")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .padding(.vertical, 50)
                        .background(Color(red: 219/255, green: 217/255, blue: 215/255).opacity(0.8))
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                        .shadow(color: Color.gray, radius: 5, x: 0, y: 5)
                        .padding(.bottom, 30)
                }
                
            }
        }
    }
    
    #Preview {
        ContentView()
    }

