import UIKit

let myPlotWidth = 40
let myPlotLength = 40

let myPlotArea = myPlotWidth * myPlotLength

if myPlotArea < 400 {
    print("Слишком маленький участок, не берем")
} else if myPlotArea < 600 {
    print("Места хватит только посадить картошку, не берем")
} else if myPlotArea < 800  {
    print("Площадь участка на грани, нужно ехать смотреть участок вживую")
} else if myPlotArea < 1200 {
    print("Площадь хорошая, все уместится")
} else {
    print ("Площадь слишком большая, нам не подходит")
}
