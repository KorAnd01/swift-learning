import UIKit

let myPlotWidth = 40
let myPlotLength = 50

let myPlotArea = myPlotWidth * myPlotLength

switch myPlotArea {
case 0 ..< 400:
    print("Слишком маленький участок, не берем")
case 400 ..< 600:
    print("Места хватит только посадить картошку, не берем")
case 600 ..< 800:
    print("Площадь участка на грани, нужно ехать смотреть участок вживую")
case 800 ..< 1200:
    print("Площадь хорошая, все уместится")
default:
    print("Площадь слишком большая, нам не подходит")
}
