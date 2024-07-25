//
//  OnboardingProviding.swift
//
//  Created by James Sedlacek on 12/26/23.
//

import Foundation

public protocol OnboardingProviding: AnyObject, Observable {
    public var isCompleted: Bool { get set }
    public var isShowingOnboarding: Bool { get }
    public var configuration: OnboardingConfiguration { get }

    public func completeOnboarding()
    public func resetOnboarding()
}

extension OnboardingProviding {
    var isShowingOnboarding: Bool {
        !isCompleted
    }

    func completeOnboarding() {
        isCompleted = true
    }
    
    func resetOnboarding() {
        isCompleted = false
    }
}
