// ClockTime
// a working clock that keeps track of hours, minutes and seconds

import UIKit

var currentTime = NSDate()
var hours : Int 
var minutes : Int = -1

repeat {
    let newTime = NSDate()
    let currentHours = NSCalendar.currentCalendar().component(NSCalendarUnit.Hour, fromDate: newTime)
    let currentMinutes = NSCalendar.currentCalendar().component(NSCalendarUnit.Minute, fromDate: newTime)
    if minutes != currentMinutes {
        currentTime = newTime
        hours = currentHours
        minutes = currentMinutes
        print("The current time is \(hours):\(minutes)")
    }
} while (true)