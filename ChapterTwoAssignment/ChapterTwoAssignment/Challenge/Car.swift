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

// 상속
// 상속은 클래스 간의 상하 관계를 형성하여 부모 클래스의 기능을 자식 클래스가 상속받아 사용하는 방식
//
// 장점
// 코드 재사용성: 부모 클래스의 기능을 그대로 사용하거나, 오버라이딩하여 확장 가능.
// 일관된 인터페이스 제공: 부모 클래스의 함수를 오버라이딩하여 동일한 인터페이스를 유지하면서 다양한 동작을 구현 가능.
// 다형성: 부모 클래스 타입으로 자식 클래스를 참조하여 다양한 객체를 일관되게 관리.
//
// 단점
// 단일 상속의 한계: Swift에서는 다중 상속을 지원하지 않기 때문에, 여러 클래스로부터 상속 불가능.
// 강한 결합: 부모 클래스의 변경이 자식 클래스에 영향을 미칠 수 있음.
// 확장성의 제한: 상속 구조가 깊어질수록 관리가 어려워지고, 구조를 변경하기 힘듦.

// 프로토콜
// 프로토콜은 특정 기능을 정의하는 인터페이스 역할 을 하며, 클래스, 구조체, 열거형 등에서 채택 가능.
//
// 장점
// 구조체와 열거형에서도 사용 가능: 클래스뿐 아니라, 구조체와 열거형에서도 프로토콜을 채택하여 유연하게 기능 추가 가능.
// 다중 채택 가능: 여러 프로토콜을 동시에 채택할 수 있어 코드의 유연성과 확장성 향상.
// 의존성 역전 원칙 준수: 인터페이스(프로토콜)와 구현(구조체, 클래스 등)을 분리하여 의존성을 줄이고 유연한 코드 구성 가능.
// 컴파일 타임 안전성: 프로토콜 준수 여부를 컴파일 시점에 확인인 가능.
//
// 단점
// 구현 강제: 프로토콜을 채택한 타입은 반드시 요구 사항을 구현해야 하므로, 불필요한 구현 발생.
// 상속과의 비교: 상속처럼 기본 구현을 물려주는 게 아니라, 구현을 명시적으로 작성해야함.
// 기능 추가의 제한: 프로토콜 자체에 저장 프로퍼티를 정의할 수 없으며, 프로토콜 확장에서 구현하는 메서드는 오버라이딩이 불가능.
 
