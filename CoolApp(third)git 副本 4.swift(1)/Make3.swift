import SwiftUI

struct make3: View {
    //@Binding var atitle : [TheText]
    @State var toolnew = TheText(title: "", istaptext: false)
    @Binding var Switch: Bool
    
    @State var texts: [TheText] = [
        TheText(title: "Hello,world")
    ]
    var body: some View {
        VStack{
            ForEach(texts.indices) { indice in
                //TextView(text: $texts[indice])
                TextView(text: $texts[indice])
            }
            /*ForEach(atitle){ (TheText) in
                Button{
                    toolnew.istaptext.toggle()
                    //Bool值传输地点
                    //点击后出现一个动画
                    if toolnew.istaptext{
                        Switch = true
                    }else{
                        Switch = false
                    }
                }label: {
                    if toolnew.istaptext == false{
                        Text(TheText.title)
                            .foregroundColor(.black)
                            
                    } else {
                        Text(TheText.title)
                            .foregroundColor(.black)
                            .border(Color.blue, width: 2)
                        
                    }
                    
                    
                 }
                
            }*/
        }
    }
    /*func newtext() {
        atitle.append(TheText(title: "Hello,world"))
    }*/
}
