//
//  mem.swift
//  DarwinScripts
//
//  Created by Lukas Batema on 6/25/22.
//

import SystemKitReborn

func MEM() {
    print("\n-- Memory --")
    print("\tPhysical Size: \(System.physicalMemory())GB")

    let memUsage = System.memoryUsage()
    func memUnit(_ value: Double) -> String {
        if value < 1.0 {
            return String(Int(value * 1000.0)) + "MB"
        } else {
            return NSString(format:"%.2f", value) as String + "GB"
        }
    }

    print("\tFree: \(memUnit(memUsage.free))")
    print("\tWired: \(memUnit(memUsage.wired))")
    print("\tActive: \(memUnit(memUsage.active))")
    print("\tInactive: \(memUnit(memUsage.inactive))")
    print("\tCompressed: \(memUnit(memUsage.compressed))")
}
