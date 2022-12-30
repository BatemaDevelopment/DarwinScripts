//
//  cpu.swift
//  DarwinScripts
//
//  Created by Lukas Batema on 6/25/22.
//

import SystemKitReborn

func CPU() {
    print("-- CPU --")

    print("\tPhysical Cores: \(System.physicalCores())")
    print("\tLogical Cores: \(System.logicalCores())")

    var sys = System()
    let cpuStats = sys.usageCPU()
    print("\tSystem: \(Int(cpuStats.system))%")
    print("\tUser: \(Int(cpuStats.user))%")
    print("\tIdle: \(Int(cpuStats.idle))%")
    print("\tNice: \(Int(cpuStats.nice))%")
}
