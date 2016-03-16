//
//  ViewController.swift
//  Weather
//
//  Created by 李良 on 15/10/4.
//  Copyright © 2015年 李良. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tv:UITextView
    @IBAction func btnPressed(sender:AnyObject){
       loadJsonData()
    
    
    }

    override func viewDidLoad() {
        loadJsonData()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func loadJsonData(){
        
        var url = NSURL(string:"http://www.weather.com.cn/data/sk/101110101.html")
        //获取JSON数据
        var data = NSData.dataWithContentsOfURL(url,options:NSDataReadingOptions.DataReadingUncached,error:nil)
        var json:AnyObject = NSJSONSerialization.JSONObjectWithData(data,options:NSJSONReadingOptions.AllowFragments,error:nil)
        
        //解析获取JSON字段值
        
        var weatherInfo:AnyObject = json.objectForKey("weatherinfo") //json结构字段名。
        var city:AnyObject = weatherInfo.objectForKey("city")
        var wind:AnyObject = weatherInfo.objectForKey("wind")
        //以此类推获取其他字段的信息,再此我就不过多赘述了。
        
        //然后把获取到的json值赋值个相应的控件即可。
        tv.text = "城市:\(city)\n风:\(wind)" //使用\()可以将变量嵌入到相应的字符串中，
    }


}

