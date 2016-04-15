//: Playground - noun: a place where people can play

import UIKit

var str = "callnative://share?url=http://shareurl&content=%E4%BD%A0%E5%A5%BD&title=%E5%A4%A9%E4%B8%8B"

let urlComponents = NSURLComponents(string: str)

let queryItems = urlComponents?.queryItems

let title = queryItems?.filter({$0.name == "title"}).first?.value?.stringByRemovingPercentEncoding

title

//let content = queryItems.filter({$0.name == "content"}).first?.value?.stringByRemovingPercentEncoding

