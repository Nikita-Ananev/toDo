//
//  Int.swift
//  simple toDo
//
//  Created by Никита Ананьев on 23.08.2022.
//

import Foundation

extension Int {
    
    // Добавляет правильное окончание
    // Кинуть потом в модель Задачи
    func taskString() -> String {
        
        var taskString: String!
        
        if "1".contains("\(self % 10)")      {taskString = "Задача"}
        if "234".contains("\(self % 10)")    {taskString = "Задачи" }
        if "567890".contains("\(self % 10)") {taskString = "Задач"}
        if 11...14 ~= self % 100             {taskString = "Задач"}
        
        return taskString
    }
}

