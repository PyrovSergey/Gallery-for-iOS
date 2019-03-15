//
//  DataStorage.swift
//  Gallery
//
//  Created by Sergey on 13/03/2019.
//  Copyright © 2019 Sergey. All rights reserved.
//

import Foundation

class DataStorage {
    private static let instance = DataStorage()
    
    private init() {}
    
    static func getInstance() -> DataStorage {
        return instance
    }
   
    let categoryArray = [
        "Abstraction",
        "Adventure",
        "Animals",
        "Architecture",
        "Art",
        "Black And White",
        "Blur",
        "Blue",
        "Books",
        "Building",
        "Camera",
        "Car",
        "City",
        "Clouds",
        "Coffee",
        "Computer",
        "Construction",
        "Cooking",
        "Creative",
        "Crowd",
        "Desert",
        "Design",
        "Desk",
        "Earth",
        "Fire",
        "Flowers",
        "Food",
        "Forest",
        "Fun",
        "Garden",
        "Gift",
        "Grass",
        "Green",
        "Gym",
        "HD Wallpaper",
        "Happy",
        "Healthy",
        "Heart",
        "Holiday",
        "Home",
        "House",
        "Ice Cream",
        "Idea",
        "Industry",
        "Interior",
        "Landscape",
        "Light",
        "Love",
        "Marketing",
        "Mountains",
        "Musical instruments",
        "Nature",
        "New York",
        "Night",
        "Notebook",
        "Orange",
        "Paint",
        "Paper",
        "Photography",
        "Plane",
        "Purple",
        "Rain",
        "Red",
        "Relax",
        "River",
        "Road",
        "Running",
        "Sea",
        "Sky",
        "Smile",
        "Space",
        "Sport",
        "Stars",
        "Street",
        "Summer",
        "Sun",
        "Sunset",
        "Technology",
        "Texture",
        "Time",
        "Tools",
        "Travel",
        "Trees",
        "Vintage",
        "Wall",
        "Water",
        "Winter",
        "Wood",
        "Yellow"
    ]
}
