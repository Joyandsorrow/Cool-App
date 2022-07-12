import SwiftUI

struct TextView: View {
    @Binding var text: TheText
    var body: some View {
        Text(text.title)
            .foregroundColor(.black)
            .border(text.istaptext ? Color.blue : Color.clear, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        //.background(text.istaptext ? Color.blue : Color.clear)
            .onTapGesture {
                withAnimation(.spring()) {
                    text.istaptext.toggle()
                }
            }
    }
}
