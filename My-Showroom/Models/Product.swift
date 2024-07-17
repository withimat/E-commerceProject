//
//  Product.swift
//  My-Showroom
//
//  Created by İmat Gökaslan on 15.07.2024.
//

import Foundation


struct Product : Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var description : String
    var supplier : String
    var price : Int
    var width: String
    var height : String
    var diameter: String
}
    
    
    
    var productList = [
        Product(name: "Leather Couch", image: "fn1", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sollicitudin, magna vitae luctus dignissim, lectus lectus lobortis eros, ac faucibus lorem dolor et ante. Morbi quis justo enim. Donec rutrum pulvinar tristique. Donec dapibus magna non laoreet auctor. Nulla venenatis accumsan euismod. Maecenas aliquet mauris tellus, in ornare mauris posuere ornare. Pellentesque lacinia est at elit ornare, nec tincidunt velit mattis. Fusce dictum dui in mauris venenatis, ut lacinia nisi porttitor.", supplier: "IKEA", price: 350,width:"200 cm",height:"135",diameter:"105"),
    Product(name: "Nice Couch", image: "fn2", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sollicitudin, magna vitae luctus dignissim, lectus lectus lobortis eros, ac faucibus lorem dolor et ante. Morbi quis justo enim. Donec rutrum pulvinar tristique. Donec dapibus magna non laoreet auctor. Nulla venenatis accumsan euismod. Maecenas aliquet mauris tellus, in ornare mauris posuere ornare. Pellentesque lacinia est at elit ornare, nec tincidunt velit mattis. Fusce dictum dui in mauris venenatis, ut lacinia nisi porttitor.", supplier: "Walmart", price: 2300,width:"200 cm",height:"135",diameter:"105"),
    Product(name: "Gray Couch", image: "fn3", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sollicitudin, magna vitae luctus dignissim, lectus lectus lobortis eros, ac faucibus lorem dolor et ante. Morbi quis justo enim. Donec rutrum pulvinar tristique. Donec dapibus magna non laoreet auctor. Nulla venenatis accumsan euismod. Maecenas aliquet mauris tellus, in ornare mauris posuere ornare. Pellentesque lacinia est at elit ornare, nec tincidunt velit mattis. Fusce dictum dui in mauris venenatis, ut lacinia nisi porttitor.", supplier: "Home Depo", price: 1200,width:"200 cm",height:"135",diameter:"105"),
    Product(name: "Beatiful Couch", image: "fn4", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sollicitudin, magna vitae luctus dignissim, lectus lectus lobortis eros, ac faucibus lorem dolor et ante. Morbi quis justo enim. Donec rutrum pulvinar tristique. Donec dapibus magna non laoreet auctor. Nulla venenatis accumsan euismod. Maecenas aliquet mauris tellus, in ornare mauris posuere ornare. Pellentesque lacinia est at elit ornare, nec tincidunt velit mattis. Fusce dictum dui in mauris venenatis, ut lacinia nisi porttitor.", supplier: "IKEA", price: 4500,width:"200 cm",height:"135",diameter:"105"),
    Product(name: "OutDoor Couch", image: "fn5", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sollicitudin, magna vitae luctus dignissim, lectus lectus lobortis eros, ac faucibus lorem dolor et ante. Morbi quis justo enim. Donec rutrum pulvinar tristique. Donec dapibus magna non laoreet auctor. Nulla venenatis accumsan euismod. Maecenas aliquet mauris tellus, in ornare mauris posuere ornare. Pellentesque lacinia est at elit ornare, nec tincidunt velit mattis. Fusce dictum dui in mauris venenatis, ut lacinia nisi porttitor.", supplier: "Home Depo", price: 2500,width:"200 cm",height:"135",diameter:"105"),
    Product(name: "Green Couch", image: "fn1", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sollicitudin, magna vitae luctus dignissim, lectus lectus lobortis eros, ac faucibus lorem dolor et ante. Morbi quis justo enim. Donec rutrum pulvinar tristique. Donec dapibus magna non laoreet auctor. Nulla venenatis accumsan euismod. Maecenas aliquet mauris tellus, in ornare mauris posuere ornare. Pellentesque lacinia est at elit ornare, nec tincidunt velit mattis. Fusce dictum dui in mauris venenatis, ut lacinia nisi porttitor.", supplier: "Walmart", price: 700,width:"200 cm",height:"135",diameter:"105")
    ]
    
    

