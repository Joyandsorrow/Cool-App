import SwiftUI

struct make1: View {
    @State private var newbox = [
        innewbox(buttontitle: "plus", chosenew: false),
        //@State var chosenew: Bool = false
    ]
    @Binding var chosenew: Bool
    @Environment(\.horizontalSizeClass) var horizontalClass
    @Binding var atitle : [TheText]
    
    @Binding var texts: [TheText]
    @Binding var openTool : Bool
    
    var body: some View {
        ScrollView (showsIndicators: false){
        VStack{
            Text("Layout")
                .bold()
                .font(.title)
                .padding(.bottom)
            ForEach(newbox){innewbox in
                Button{
                    chosenew.toggle()
                }label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .shadow(radius: 5)
                            .opacity(0.3)
                        Image(systemName:innewbox.buttontitle)
                            .font(.system(size: 20, weight: .bold))
                    }
                    
                }.sheet(isPresented: $chosenew){
                    if horizontalClass == .regular{
                        VStack{
                            HStack{
                            Button{
                                texts.append(TheText(title: "Hello,world"))
                                chosenew = false
                                openTool = false
                            }label: {
                                HStack{
                                    Text("Text")
                                        .font(.system(size: 30, weight: .bold))
                                    Spacer()
                                }
                                .padding()
                                .background()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            }//
                            Button{
                                
                            }label: {
                                HStack{
                                    Text("Image")
                                        .font(.system(size: 30, weight: .bold))
                                    Spacer()
                                }
                                .padding()
                                .background()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            }//
                            }
                            HStack{
                            Button{
                                
                            }label: {
                                HStack{
                                    Text("SF symbol")
                                        .font(.system(size: 30, weight: .bold))
                                    Spacer()
                                }
                                .padding()
                                .background()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            }//
                            Button{
                                
                            }label: {
                                HStack{
                                    Text("Spacer")
                                        .font(.system(size: 30, weight: .bold))
                                    Spacer()
                                }
                                .padding()
                                .background()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            }//
                            }
                            HStack{
                            Button{
                                
                            }label: {
                                HStack{
                                    Text("Rectangle")
                                        .font(.system(size: 30, weight: .bold))
                                    Spacer()
                                }
                                .padding()
                                .background()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            }//
                            Button{
                                
                            }label: {
                                HStack{
                                    Text("Circle")
                                        .font(.system(size: 30, weight: .bold))
                                    Spacer()
                                }
                                .padding()
                                .background()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            }//
                            }
                            
                            HStack{
                            Button{
                                
                            }label: {
                                HStack{
                                    Text("HStack")
                                        .font(.system(size: 30, weight: .bold))
                                    Spacer()
                                }
                                .padding()
                                .background()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            }//
                            Button{
                                
                            }label: {
                                HStack{
                                    Text("VStack")
                                        .font(.system(size: 30, weight: .bold))
                                    Spacer()
                                }
                                .padding()
                                .background()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            }//
                            }
                            HStack{
                            Button{
                                
                            }label: {
                                HStack{
                                    Text("ZStack")
                                        .font(.system(size: 30, weight: .bold))
                                    Spacer()
                                }
                                .padding()
                                .background()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            }//
                            Button{
                                
                            }label: {
                                HStack{
                                    Text("ScrollView")
                                        .font(.system(size: 30, weight: .bold))
                                    Spacer()
                                }
                                .padding()
                                .background()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            }//
                            }
                            Spacer()
                        }.padding()//////////
                        
                                    } else {
                        
                    VStack{
                        Button{
                            atitle.append(TheText(title: "Hello,world"))
                            chosenew = false
                        }label: {
                    HStack{
                        Text("Text")
                            .font(.system(size: 30, weight: .bold))
                        Spacer()
                    }
                    .padding()
                    .background()
                    .cornerRadius(10)
                    .shadow(radius: 5)
                        }//
                        Button{
                            
                        }label: {
                            HStack{
                                Text("Image")
                                    .font(.system(size: 30, weight: .bold))
                                Spacer()
                            }
                            .padding()
                            .background()
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        }//
                        Button{
                            
                        }label: {
                            HStack{
                                Text("SF symbol")
                                    .font(.system(size: 30, weight: .bold))
                                Spacer()
                            }
                            .padding()
                            .background()
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        }//
                        Button{
                            
                        }label: {
                            HStack{
                                Text("Spacer")
                                    .font(.system(size: 30, weight: .bold))
                                Spacer()
                            }
                            .padding()
                            .background()
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        }//
                        Button{
                            
                        }label: {
                            HStack{
                                Text("Rectangle")
                                    .font(.system(size: 30, weight: .bold))
                                Spacer()
                            }
                            .padding()
                            .background()
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        }//
                        Button{
                            
                        }label: {
                            HStack{
                                Text("Circle")
                                    .font(.system(size: 30, weight: .bold))
                                Spacer()
                            }
                            .padding()
                            .background()
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        }//
                        Button{
                            
                        }label: {
                            HStack{
                                Text("HStack")
                                    .font(.system(size: 30, weight: .bold))
                                Spacer()
                            }
                            .padding()
                            .background()
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        }//
                        Button{
                            
                        }label: {
                            HStack{
                                Text("VStack")
                                    .font(.system(size: 30, weight: .bold))
                                Spacer()
                            }
                            .padding()
                            .background()
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        }//
                        Button{
                            
                        }label: {
                            HStack{
                                Text("ZStack")
                                    .font(.system(size: 30, weight: .bold))
                                Spacer()
                            }
                            .padding()
                            .background()
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        }//
                        Button{
                            
                        }label: {
                            HStack{
                                Text("ScrollView")
                                    .font(.system(size: 30, weight: .bold))
                                Spacer()
                            }
                            .padding()
                            .background()
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        }//
                    }.padding()//////////
                    }
                }
                
            }
        }
        .padding()
        }
    }
}
