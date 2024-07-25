//
//  OnboardingProviding.swift
//
//  Created by James Sedlacek on 12/26/23.
//

import Foundation

public protocol OnboardingProviding: AnyObject, Observable {
    var isCompleted: Bool { get set }
    var isShowingOnboarding: Bool { get }
    var configuration: OnboardingConfiguration { get }

    func completeOnboarding()
    func resetOnboarding()
}

extension OnboardingProviding {
    public var isShowingOnboarding: Bool {
        !isCompleted
    }

    public func completeOnboarding() {
        isCompleted = true
    }
    
    public func resetOnboarding() {
        isCompleted = false
    }
}
