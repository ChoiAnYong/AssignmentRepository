//
//  ElectricCar.swift
//  ChapterTwoAssignment
//
//  Created by 최안용 on 3/20/25.
//

import Foundation

final class ElectricCar: Car {
    override init(
        brand: String,
        model: String,
        modelYear: String,
        engine: EngineProtocol = ElectricEngine()
    ) {
        super.init(brand: brand, model: model, modelYear: modelYear, engine: engine)
    }
}
