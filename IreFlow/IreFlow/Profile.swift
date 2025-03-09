import SwiftUI
struct ProfileView: View {
    @Environment(\.dismiss) private var dismiss
    
    @EnvironmentObject var appState: AppState
    
    @State private var modalView = false
    
    @State private var nameUser: String = ""
    @State private var surnameUser: String = ""
    @State private var nameInAppUser: String = ""
    @State private var ageUser: Int = 0
    @State private var maleUser: String = "Нет"
    @State private var password: String = ""
    @State private var email: String = ""

    
    var body: some View {

        VStack {
            Text("Personaly Profile")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 50)
                    
            Image(systemName: appState.toggleTheme ? "person.circle" : "person.circle.fill")
                    .background(appState.toggleTheme ? Color.black : Color.white)
                    .padding()
                    .overlay{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                    }
                    .padding(.bottom, 40)

                HStack{
                    Text("Name: \(nameUser) ")
                        .fontWeight(.bold)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .padding(.bottom)
                }
                HStack{
                    Text("Surname: \(surnameUser)")
                        .fontWeight(.bold)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .padding(.bottom)
                }
                HStack{
                    Text("Name in App: \(nameInAppUser)")
                        .fontWeight(.bold)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .padding(.bottom)
                }
                HStack{
                    Text("Age: \(ageUser)")
                        .fontWeight(.bold)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .padding(.bottom)
                }
                HStack{
                    Text("Male: \(maleUser)")
                        .fontWeight(.bold)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .padding(.bottom)
                }
                
                Spacer()
                
                Button {
                    modalView.toggle()
                } label: {
                    Text("More")
                        .frame(maxWidth: .infinity, maxHeight: 80 ,alignment: .center)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                        .padding(.bottom, 20)
                }
                
                .sheet(isPresented: $modalView) {
                    ModalView(nameUser: $nameUser, surnameUser: $surnameUser, nameInAppUser: $nameInAppUser, ageUser: $ageUser, maleUser: $maleUser, password: $password, email: $email)
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
