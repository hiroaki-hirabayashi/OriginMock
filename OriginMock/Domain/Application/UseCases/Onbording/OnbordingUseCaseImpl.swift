//
//  OnbordingUseCaseImpl.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/27.
//

import Foundation

final class OnbordingUseCaseImpl: OnbordingUseCase {
    private let onbordingUserDefaultsRepository: OnbordingUserDefaultsRepository

    init(onbordingUserDefaultsRepository: OnbordingUserDefaultsRepository) {
        self.onbordingUserDefaultsRepository = onbordingUserDefaultsRepository
    }

    // オンボーディングの進捗取得
    func getOnbodingProgress() -> OnbodingProgress {
        return onbordingUserDefaultsRepository.getOnbodingProgress()
    }

    // オンボーディングの進捗設定
    func setOnbodingProgress(progress: OnbodingProgress) {
        onbordingUserDefaultsRepository.setOnbodingProgress(progress: progress)
    }
}
