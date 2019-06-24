import UIKit

//var str = "Hello, playground"
//to return a string with dashmarks before and after each odd integer but not at the beginning or end of the full number
var str = String()
var div = 10
var mod = 10
var number = Int()
var count = 1
func dashitize(num : Int) -> String {
    var new = String(num)
    var end = new.count
    for _ in 1...end-2 {
        div = div * 10
    }
    for _ in 1...end-1
    {
        mod = mod * 10
    }
    for _ in 1...end {
        let last2Digits = num % mod
        let lastDigit = num % div
        let result = last2Digits - lastDigit //40
        if(number == 0){
            if((result / div) % 2 == 0){
                str = str + String(num % mod / div)
            }
            else if (count == end){
                str = str + "-" + String(num % mod / div)
            }
            else {
                str = str + "-" + String(num % mod / div) + "-"
            }
        }
        if(number != 0){
            if(((result / div) % 2 == 0) || count == end){
                str = str + String(num % mod / div)
            }
            else{
                str = str + String(num % mod / div) + "-"
            }
        }
        number = ((result / div) % 2)
        div = div / 10
        mod = mod / 10
        count+=1
    }
    return str
}
var ready = dashitize(num: 6815)
print(ready)

















////Java solution
//
//function dashatize(num) {
//    return num.toString().
//    replace(/([13579])/g,'-$1-'). // dashes around odd digits
//    replace(/\-+/g,'-'). // replace multiple dashes by one dash
//    replace(/^\-/,''). // remove starting dash
//    replace(/\-$/,''); // remove ending dash
//}
//

