//
//  HybridCar.swift
//  ChapterTwoAssignment
//
//  Created by 최안용 on 3/20/25.
//

import Foundation

final class HybridCar: Car {
    override init(
        brand: String,
        model: String,
        modelYear: String,
        engine: EngineProtocol = HybridEngine()
    ) {
        super.init(brand: brand, model: model, modelYear: modelYear, engine: engine)
    }
    
    func switchEngine(to newEngine: EngineProtocol) {
        self.setEngine(newEngine)
    }
}
