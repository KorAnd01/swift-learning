import Foundation

class Person {
    var name: String

    init(name: String) {
        self.name = name
    }

    func introduce() {
        print("Привет! Меня зовут \(name).")
    }
}

class Driver: Person {
    var licenseNumber: String

    init(name: String, licenseNumber: String) {
        self.licenseNumber = licenseNumber
        super.init(name: name)
    }

    func drive() {
        print("\(name) ведёт машину по правам \(licenseNumber).")
    }
}

let driver = Driver(name: "Иван", licenseNumber: "AB123456")
driver.introduce()
driver.drive()

print("===========")

class BankAccount {
    private var balance: Double = 0.0

    func deposit(amount: Double) {
        if amount > 0 {
            balance += amount
        }
    }

    func withdraw(amount: Double) {
        if amount <= balance {
            balance -= amount
        } else {
            print("Недостаточно средств")
        }
    }

    func showBalance() {
        print("На счету: \(balance) €")
    }
}

let account = BankAccount()
account.deposit(amount: 200)
account.withdraw(amount: 50)
account.showBalance()

print("===========")

class Animal {
    func makeSound() {
        print("Животное издаёт звук")
    }
}

class Dog: Animal {
    override func makeSound() {
        print("Собака лает: Гав-гав!")
    }
}

class Cat: Animal {
    override func makeSound() {
        print("Кошка мяукает: Мяу!")
    }
}

let pets: [Animal] = [Dog(), Cat(), Dog()]

for pet in pets {
    pet.makeSound()
}

