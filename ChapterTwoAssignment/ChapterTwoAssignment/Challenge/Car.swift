//
//  Car.swift
//  ChapterTwoAssignment
//
//  Created by 최안용 on 3/20/25.
//

import Foundation

class Car {
    private var brand: String
    private var model: String
    private var modelYear: String
    private var engine: EngineProtocol
    
    init(brand: String, model: String, modelYear: String, engine: EngineProtocol = Engine()) {
        self.brand = brand
        self.model = model
        self.modelYear = modelYear
        self.engine = engine
    }
    
    func start() {
        print("Car 주행 중...")
    }
    
    func stop() {
        print("Car 정지")
    }
    
    func setEngine(_ engine: EngineProtocol) {
        self.engine = engine
    }
}
