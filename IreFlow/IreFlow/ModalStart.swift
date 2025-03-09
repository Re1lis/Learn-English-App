import SwiftUI

struct ModalStart: View {
    @Binding var isStartedApp: Bool
    var body: some View {
        ScrollView {
            VStack{
                Text("Добро пожаловать в приложение IreFlow")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment:.center)
                HStack {
                    VStack{
                        Text("Привет! Я Артем Терзиян. И я разработчик этого приложения. Спасибо, что вы скачали его и решили им попользоваться. Хорошего изучения!")
                            .frame(maxWidth: .infinity, maxHeight: 145)
                            .font(.callout)
                        Text("Фотограф: лучший человек на свете")
                            .font(.caption2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    Image("photoDeveloper")
                        .cornerRadius(20)
                    
                }
                .padding(10)
                .frame(maxWidth: .infinity)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.gray, lineWidth: 1)
                )
                .padding(.horizontal, 10)
                .padding(.bottom, 10)

                
                VStack{
                    HStack {
                        VStack {
                            Text("Игры")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)

                            HStack {
                                Image(systemName: "livephoto.play")
                                    .resizable()
                                    .frame(maxWidth: 40, maxHeight: 40)
                                    .padding(.trailing, 7)

                                Text("Изучайте английский через игры! Разные интересные режимы, каждый найдет то, что ему нравится!")
                                    .font(.callout)
                            }
                        }
                    }
                    .padding(3)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .padding(.bottom, 20)
                    HStack {
                        VStack {
                            Text("Словари")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)

                            HStack {
                                Image(systemName: "book.pages")
                                    .resizable()
                                    .frame(maxWidth: 40, maxHeight: 40)
                                    .padding(.trailing, 7)

                                Text("Используйте словари, которые уже поделены на уровни. Создавайте свои словари со своими словами! ")
                                    .font(.callout)
                            }
                        }
                    }
                    .padding(3)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .padding(.bottom, 20)

                    HStack {
                        VStack {
                            Text("Мультиплеер")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            HStack{
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(maxWidth: 40, maxHeight: 40)
                                    .padding(.trailing, 7)

                                Text("Соревнуйтесь с другими, смотрите на общий рейтинг и пытайтесь вырваться вперед!")
                                    .font(.callout)
                            }
                        }
                    }
                    .padding(3)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .padding(.bottom, 20)
                    
                    HStack {
                        VStack {
                            Text("Мессенджер")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            HStack{
                                Image(systemName: "message")
                                    .resizable()
                                    .frame(maxWidth: 40, maxHeight: 40)
                                    .padding(.trailing, 7)

                                Text("Находите общих друзей и общайтесь с нмми. Создавайте чаты и переписывайтесь группами!")
                                    .font(.callout)
                            }
                        }
                    }
                    .padding(3)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .padding(.bottom, 20)
                    
                    HStack {
                        VStack {
                            Text("Нейросеть")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            HStack{
                                Image(systemName: "pc")
                                    .resizable()
                                    .frame(maxWidth: 40, maxHeight: 40)
                                    .padding(.trailing, 7)

                                Text("Улучшайте свой английский при помощи встроенной нейросети, которая поможет вам в изучении, произношении и других проблемах!")
                                    .font(.callout)
                            }
                        }
                    }
                    .padding(3)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, maxHeight: 120)
                    .padding(.bottom, 20)

                    HStack {
                        VStack {
                            Text("Дневник")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            HStack{
                                Image(systemName: "character.book.closed")
                                    .resizable()
                                    .frame(maxWidth: 40, maxHeight: 40)
                                    .padding(.trailing, 7)

                                Text("Ведите свой дневник! Записывайте в него разные слова, которые вы изучаете, цели и проблемы, которые хотите решить!")
                                    .font(.callout)
                            }
                        }
                    }
                    .padding(3)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, maxHeight: 120)
                    .padding(.bottom, 20)
                    
                    HStack {
                        VStack {
                            Text("Настраиваемость")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            HStack{
                                Image(systemName: "gearshape")
                                    .resizable()
                                    .frame(maxWidth: 40, maxHeight: 40)
                                    .padding(.trailing, 7)

                                Text("Настраивайте свое приложение так, как удобно вам. Меняйте тему, изменяйте размер иконок. Все для вашего удобства!")
                                    .font(.callout)
                            }
                        }
                    }
                    .padding(3)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, maxHeight: 120)
                    .padding(.bottom, 20)
                    
                    HStack {
                        VStack {
                            Text("Аккаунт")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            HStack{
                                Image(systemName: "person.crop.circle")
                                    .resizable()
                                    .frame(maxWidth: 40, maxHeight: 40)
                                    .padding(.trailing, 7)

                                Text("Добавляйте свои данные в личный кабинет! Смотрите свою статистику! Меняйте аватарку, настраивайте аккаунт!")
                                    .font(.callout)
                            }
                        }
                    }
                    .padding(3)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, maxHeight: 120)
                    .padding(.bottom, 20)
                    
                    Button {
                        withAnimation{
                            isStartedApp.toggle()
                        }
                    } label : {
                        Text("Изучать англйиский")
                            .frame(maxWidth: .infinity, minHeight: 60)
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                            .background(Color.purple)
                            .cornerRadius(20)
                            .padding(.horizontal)
                    }
                }

            }
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .foregroundColor(.gray)
            
        }
        .background(Color.black)
        .foregroundColor(.gray)


    }
}
