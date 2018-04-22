//
//  Data.swift
//  StackOverflow
//
//  Created by George Gomes on 22/04/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

import Foundation

class DataManager{
    
    static let sharedInstance: DataManager = {
        let instance = DataManager()
        return instance
    }()
    
    private var persons = [Person(name: "Joãozinho", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus, vel efficitur massa"),
        Person(name: "Maria", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus, vel efficitur massa. Phasellus sodales justo quis erat faucibus, non finibus massa mattis. Sed felis nunc, sollicitudin ut purus vitae, blandit gravida mi. Donec accumsan mauris mi, eget egestas ligula"),
        Person(name: "Pedrinho", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus"),
        Person(name: "Romario", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus, vel efficitur massa. Phasellus sodales justo quis erat faucibus, non finibus massa mattis. Sed felis nunc, sollicitudin ut purus vitae, blandit gravida mi. Donec accumsan mauris mi, eget egestas ligula porttitor sit amet. Nulla facilisi. Pellentesque cursus nisi sem, efficitur tincidunt lacus luctus id. Curabitur convallis nisi non luctus aliquam. Sed auctor sapien nec dui interdum imperdiet."),
        Person(name: "Augusto", description: "Sem descricão"),Person(name: "Joãozinho", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus, vel efficitur massa"),
        Person(name: "Maria", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus, vel efficitur massa. Phasellus sodales justo quis erat faucibus, non finibus massa mattis. Sed felis nunc, sollicitudin ut purus vitae, blandit gravida mi. Donec accumsan mauris mi, eget egestas ligula"),
        Person(name: "Pedrinho", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus"),
        Person(name: "Romario", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus, vel efficitur massa. Phasellus sodales justo quis erat faucibus, non finibus massa mattis. Sed felis nunc, sollicitudin ut purus vitae, blandit gravida mi. Donec accumsan mauris mi, eget egestas ligula porttitor sit amet. Nulla facilisi. Pellentesque cursus nisi sem, efficitur tincidunt lacus luctus id. Curabitur convallis nisi non luctus aliquam. Sed auctor sapien nec dui interdum imperdiet."),
        Person(name: "Augusto", description: "Sem descricão"),Person(name: "Joãozinho", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus, vel efficitur massa"),
        Person(name: "Maria", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus, vel efficitur massa. Phasellus sodales justo quis erat faucibus, non finibus massa mattis. Sed felis nunc, sollicitudin ut purus vitae, blandit gravida mi. Donec accumsan mauris mi, eget egestas ligula"),
        Person(name: "Pedrinho", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus"),
        Person(name: "Romario", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus, vel efficitur massa. Phasellus sodales justo quis erat faucibus, non finibus massa mattis. Sed felis nunc, sollicitudin ut purus vitae, blandit gravida mi. Donec accumsan mauris mi, eget egestas ligula porttitor sit amet. Nulla facilisi. Pellentesque cursus nisi sem, efficitur tincidunt lacus luctus id. Curabitur convallis nisi non luctus aliquam. Sed auctor sapien nec dui interdum imperdiet."),
        Person(name: "Augusto", description: "Sem descricão"),Person(name: "Joãozinho", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus, vel efficitur massa"),
        Person(name: "Maria", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus, vel efficitur massa. Phasellus sodales justo quis erat faucibus, non finibus massa mattis. Sed felis nunc, sollicitudin ut purus vitae, blandit gravida mi. Donec accumsan mauris mi, eget egestas ligula"),
        Person(name: "Pedrinho", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus"),
        Person(name: "Romario", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus auctor lectus, vel efficitur massa. Phasellus sodales justo quis erat faucibus, non finibus massa mattis. Sed felis nunc, sollicitudin ut purus vitae, blandit gravida mi. Donec accumsan mauris mi, eget egestas ligula porttitor sit amet. Nulla facilisi. Pellentesque cursus nisi sem, efficitur tincidunt lacus luctus id. Curabitur convallis nisi non luctus aliquam. Sed auctor sapien nec dui interdum imperdiet."),
        Person(name: "Augusto", description: "Sem descricão")]
 
    func getPersonsCount() -> Int{
        return persons.count
    }
    
    func getPersons() -> [Person] {
        return self.persons
    }
}
