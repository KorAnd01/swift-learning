struct Size {
    var width: Int
    var height: Int
}

struct Button {
    private var text: String
    private var width: Int
    private var height: Int
    private var action: () -> Void
    var size: Size {
        return Size(width: width, height: height)
    }

    func press() {
        print("Нажата кнопка \"\(text)\"")
        action()
    }

    init(text: String, width: Int, height: Int, action: @escaping () -> Void) {
        self.text = text
        self.width = width
        self.height = height
        self.action = action
    }
}

let myButton = Button(
    text: "OK",
    width: 100,
    height: 50,
    action: {
        print("Button pressed!")
    }
)

myButton.press()
