import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) private var dismiss
    
    @EnvironmentObject var appState: AppState
    
    @State private var toggleValue = false
    @State private var passValue = true

    @State private var sizeValue: String = "Средний"
    
    @State private var notiValue = true
    @State private var soundValue = true
    @State private var vibrValue = true
    
    @State private var timesOfDayValue: String = "Вечер"
    
    @State private var visibValue = true
    @State private var chatValue = false
    
    @State private var onControlValue = false
    @State private var timeControl = "10 минут"
    @State private var offSocialValue = false
    


    
    var body: some View {
        ScrollView {
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 30)
            
            Text("1. Прогресс и аналитика")
                .font(.title)
                .fontWeight(.medium)
                .padding(.bottom, 2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            HStack{
                Text("• Статистика")
                    .font(.system(size: 20))
                Toggle("", isOn: $toggleValue)
                    .padding(.horizontal)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            Text("Ваша статистика будет отображаться в профиле")
                .frame(maxWidth: .infinity)
                .font(.caption2)
                .padding(.bottom, 5)
            HStack {
                Text("• Удаление прогресса")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Button {
                    
                } label: {
                    Text("Удалить")
                        .padding(.horizontal)
                        .foregroundColor(appState.toggleTheme ? .white : .black)
                        .fontWeight(.bold)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        )
                }
                

            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .padding(.bottom, 10)

            
            Text("2. Управление контентом")
                .font(.title)
                .fontWeight(.medium)
                .padding(.bottom, 2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            HStack{
                Text("• Пропускать слова при ошибке")
                    .font(.system(size: 20))
                Toggle("", isOn: $passValue)
                    .padding(.horizontal)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            Text("Если функция выключена, то Вам стоит нажать на кнопку 'Далее', если Вы хотите продолжить")
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.horizontal)
                .font(.caption2)
                .padding(.bottom, 10)

            Text("3. Интерфейс")
                .font(.title)
                .fontWeight(.medium)
                .padding(.bottom, 2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            HStack{
                Text("• Размер иконок")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Menu{
                    Button("Маленький"){sizeValue = "Маленький"}
                    Button("Средний"){sizeValue = "Средний"}
                    Button("Большой"){sizeValue = "Большой"}
                } label: {
                    Text(sizeValue)
                        .foregroundColor(appState.toggleTheme ? .white : .black)
                        .fontWeight(.bold)
                }
                .padding(.horizontal)
                .frame(maxHeight: 40)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                )
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .padding(.bottom, 10)

            
            Text("4. Уведолмения и напоминания")
                .font(.system(size: 25))
                .fontWeight(.medium)
                .padding(.bottom, 2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            HStack{
                Text("• Вибрация")
                    .font(.system(size: 20))
                Toggle("", isOn: $vibrValue)
                    .padding(.horizontal)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            HStack{
                Text("• Напоминания")
                    .font(.system(size: 20))
                Toggle("", isOn: $notiValue)
                    .padding(.horizontal)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            HStack{
                Text("• Время суток для напоминаний")
                    .font(.system(size: 20))
                    .frame(maxWidth: 300, alignment: .leading)
                Menu{
                    Button("Вечер"){timesOfDayValue = "Вечер"}
                    Button("День"){timesOfDayValue = "День"}
                    Button("Утро"){timesOfDayValue = "Утро"}
                } label: {
                    Text(timesOfDayValue)
                        .foregroundColor(appState.toggleTheme ? .white : .black)
                        .fontWeight(.bold)
                }
                .padding(.horizontal)
                .frame(maxHeight: 40)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                )
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .disabled(!notiValue)
            .opacity(!notiValue ? 0.7 : 1)
            HStack{
                Text("• Звук при ответе")
                    .font(.system(size: 20))
                Toggle("", isOn: $soundValue)
                    .padding(.horizontal)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .padding(.bottom, 10)
            Text("5. Безопасность и конфиденциальность")
                .font(.system(size: 19))
                .fontWeight(.medium)
                .padding(.bottom, 2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            HStack {
                Text("• Удаление аккаунта")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Button {
                } label: {
                    Text("Удалить")
                        .padding(.horizontal)
                        .foregroundColor(appState.toggleTheme ? .white : .black)
                        .fontWeight(.bold)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                        )
                }
                
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            VStack {
                Text("• Синхронизация с ICloud")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Button {
                } label: {
                    Text("Синхронизировать")
                        .padding(.horizontal)
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                        .padding(10)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.blue, lineWidth: 2)
                        )
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .padding(.bottom, 10)
            
            Text("6. Социальные функции")
                .font(.system(size: 25))
                .fontWeight(.medium)
                .padding(.bottom, 2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            HStack{
                Text("• Видимость аккаунта")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Toggle("", isOn: $visibValue)
                    .padding(.horizontal)
                    .frame(maxWidth: 100)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .disabled(offSocialValue)
            .opacity(offSocialValue ? 0.7 : 1)
            HStack{
                Text("• Возможность добавить меня в чат")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Toggle("", isOn: $chatValue)
                    .padding(.horizontal)
                    .frame(maxWidth: 100)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .padding(.bottom, 10)
            .disabled(offSocialValue)
            .opacity(offSocialValue ? 0.7 : 1)
            Text("7. Родительский контроль")
                .font(.system(size: 25))
                .fontWeight(.medium)
                .padding(.bottom, 2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            HStack{
                Text("• Включить контроль")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Toggle("", isOn: $onControlValue)
                    .padding(.horizontal)
                    .frame(maxWidth: 100)
                    .onChange(of: onControlValue) {
                        if onControlValue == false {
                            offSocialValue = false
                        }
                    }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            
            HStack{
                Text("• Ограничение времени")
                    .font(.system(size: 20))
                    .frame(maxWidth: 300, alignment: .leading)
                Menu{
                    Button("5 минут"){timeControl = "5 минут"}
                    Button("10 минут"){timeControl = "10 минут"}
                    Button("20 минут"){timeControl = "20 минут"}
                    Button("30 минут"){timeControl = "30 минут"}
                    Button("45 минут"){timeControl = "45 минут"}
                    Button("1 час"){timeControl = "1 час"}
                } label: {
                    Text(timeControl)
                        .foregroundColor(appState.toggleTheme ? .white : .black)
                        .fontWeight(.bold)
                }
                .padding(.horizontal)
                .frame(maxHeight: 40)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(!appState.toggleTheme ? Color.black : Color.white, lineWidth: 1)
                )
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .disabled(!onControlValue)
            .opacity(!onControlValue ? 0.7 : 1)
            
            HStack{
                Text("• Отключить социальные функции")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Toggle("", isOn: $offSocialValue)
                    .padding(.horizontal)
                    .frame(maxWidth: 100)
                    .onChange(of: offSocialValue) {
                        if offSocialValue {
                            visibValue = false
                            chatValue = false
                        }
                    }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .disabled(!onControlValue)
            .opacity(!onControlValue ? 0.7 : 1)
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

    
