//
//  OnbordingUserDefaultsRepository.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/26.
//

import Foundation

protocol OnbordingUserDefaultsRepository {
    /// オンボーディングの進捗を取得する
    func getOnbodingProgress() -> OnbodingProgress
    /// オンボーディングの進捗を保存する
    func setOnbodingProgress(progress: OnbodingProgress)
}
