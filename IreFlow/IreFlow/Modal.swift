import SwiftUI

struct ModalView: View {
    @Environment(\.dismiss) private var dismiss
        
    @EnvironmentObject var appState: AppState
    
    @Binding var nameUser: String
    @Binding var surnameUser: String
    @Binding var nameInAppUser: String
    @Binding var ageUser: Int
    @Binding var maleUser: String
    @Binding var password: String
    @Binding var email: String

    let ages = Array (6...100)

    @State private var showAlert = false
    let maxCountName = 10
    let maxCountSurname = 15
    let maxCountPassword = 15
    let maxCountNameInApp = 15

    
    @State private var disableValue: Bool = true
    @State private var showPassword: Bool = false
    
    var body: some View {
        VStack {
            Text("More")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.vertical, 10)
            TextField("", text: $nameUser, prompt: Text("Enter your name").foregroundColor(.gray))
                .padding(7)
                .frame(maxWidth: .infinity, maxHeight: 40 ,alignment: .center)
                .overlay{
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                }
                .padding(.bottom, 5)
                .padding(.horizontal)
                .disabled(disableValue)
                .opacity(!disableValue ? 1 : 0.7)
            TextField("", text: $surnameUser, prompt: Text("Enter your surname").foregroundColor(.gray))
                .padding(7)
                .frame(maxWidth: .infinity, maxHeight: 40 ,alignment: .center)
                .overlay{
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                }
                .padding(.bottom, 5)
                .padding(.horizontal)
                .disabled(disableValue)
                .opacity(!disableValue ? 1 : 0.7)
            TextField("", text: $nameInAppUser, prompt: Text("Enter your name in app").foregroundColor(.gray))
                .padding(7)
                .frame(maxWidth: .infinity, maxHeight: 40 ,alignment: .center)
                .overlay{
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                }
                .padding(.bottom, 5)
                .padding(.horizontal)
                .disabled(disableValue)
                .opacity(!disableValue ? 1 : 0.7)
            HStack{
                Text("Choose your age:")
                    .padding(15)
                    .frame(maxWidth: 350,alignment: .leading)
                Menu {
                    ForEach (ages, id: \.hashValue) { age in
                        Button("\(age)") {
                            ageUser = age
                        }
                    }
                } label: {
                    Text("\(ageUser)")
                }
                    .padding(15)
                    .disabled(disableValue)
                    .opacity(!disableValue ? 1 : 0.7)
            }
            .frame(maxWidth: .infinity, maxHeight: 40)
            .overlay{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
            }
            .padding(.bottom, 5)
            .padding(.horizontal)
            .disabled(disableValue)
            .opacity(!disableValue ? 1 : 0.7)
            HStack{
                Text("Choose your male")
                    .padding(15)
                    .frame(maxWidth: 350,alignment: .leading)
                Menu {
                    Button("Мужской"){maleUser = "Мужской"}
                    Button("Женский"){maleUser = "Женский"}
                    Button("Нет"){maleUser = "Нет"}
                } label: {
                    Text(maleUser)
                }
                .padding(15)

            }
            .frame(maxWidth: .infinity, maxHeight: 40)
            .overlay{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
            }
            .padding(.bottom, 5)
            .padding(.horizontal)
            .disabled(disableValue)
            .opacity(!disableValue ? 1 : 0.7)

            
            TextField("", text: $email, prompt: Text("Enter your email").foregroundColor(.gray))
                .padding(7)
                .frame(maxWidth: .infinity, maxHeight: 40 ,alignment: .center)
                .overlay{
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                }
                .padding(.bottom, 5)
                .padding(.horizontal)
                .disabled(disableValue)
                .opacity(!disableValue ? 1 : 0.7)

            HStack {
                if showPassword {
                    TextField("", text: $password, prompt: Text("Enter password").foregroundColor(.gray))
                        .padding(7)
                        .frame(maxWidth: 350, maxHeight: 40 , alignment: .leading)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        }
                        .padding(.bottom, 5)
                } else{
                    SecureField("", text: $password, prompt: Text("Enter password").foregroundColor(.gray))
                        .padding(7)
                        .frame(maxWidth: 350, maxHeight: 40 , alignment: .leading)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        }
                        .padding(.bottom, 5)
                }
                
                Button {
                    showPassword.toggle()
                } label: {
                    if showPassword {
                        Image(systemName: "eye")
                            .padding(10)
                            .frame(maxWidth: 40, maxHeight: 0)
                            .overlay{
                                RoundedRectangle(cornerRadius: 70)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                    } else if !showPassword {
                        Image(systemName: "eye.fill")
                            .padding(10)
                            .frame(maxWidth: 40, maxHeight: 40)
                            .overlay{
                                RoundedRectangle(cornerRadius: 70)
                                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                            }
                    }

                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .disabled(disableValue)
            .opacity(!disableValue ? 1 : 0.7)
            
            

            .onChange(of: nameUser){ oldValue ,newValue in
                nameUser = String(newValue.prefix(maxCountName))
                if nameUser.count == maxCountName {
                    showAlert.toggle()
                }
            }
            .onChange(of: surnameUser){ oldValue ,newValue in
                surnameUser = String(newValue.prefix(maxCountSurname))
                if surnameUser.count == maxCountSurname {
                    showAlert.toggle()
                }
            }
            .onChange(of: nameInAppUser){ oldValue ,newValue in
                nameInAppUser = String(newValue.prefix(maxCountNameInApp))
                if nameInAppUser.count == maxCountNameInApp {
                    showAlert.toggle()
                }
            }
            .onChange(of: password){ oldValue ,newValue in
                password = String(newValue.prefix(maxCountPassword))
                if password.count == maxCountPassword {
                    showAlert.toggle()
                }
            }
            
            
            Button{
                disableValue.toggle()
            } label: {
                if disableValue {
                    Text("Edit")
                } else {
                    Text("Save")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 40 ,alignment: .center)
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
            .overlay{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
            }
            .padding(.horizontal)
            .padding(.vertical, 30)
            .padding(.bottom, 20)
            
            Spacer()
                
         
            Button("Back"){
                dismiss()
            }
            .fontWeight(.heavy)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
            )
        }
        .background(appState.toggleTheme ? Color.black : Color.white)
        .foregroundColor(appState.toggleTheme ? .white : .black)
    }
    
}

