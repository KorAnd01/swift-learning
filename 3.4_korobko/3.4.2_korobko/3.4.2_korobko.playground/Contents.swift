import UIKit

var originalText = "Сегодня был теплый, солнечный день"
var wordForReplace = "теплый"
var newWord = "морозный"

originalText.replace(wordForReplace, with: newWord)

print(originalText)
