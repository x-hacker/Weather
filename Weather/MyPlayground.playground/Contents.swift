//: Playground - noun: a place where people can play

import UIKit
var str="hello world"

var url = NSURL(string: "http://www.weather.com.cn/data/sk/101110101.html")
//var data = NSData(contentsOfURL: url!, options: NSDataReadingOptions.DataReadingUncached, error: nil)
//var url=NSURL(string:"http://www.weather.com.cn/data/sk/101110101.html")
var data = NSData.dataWithContentsOfURL(url,options:NSDataReadingOptions.DataReadingUncached,error:nil)
//var str=NSString(data: data, encoding:NSUTF8StringEncoding)


var  data=NSData.dataWithContentsOfMappedFile(path:url)