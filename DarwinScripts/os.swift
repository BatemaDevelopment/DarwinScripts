//
//  os.swift
//  DarwinScripts
//
//  Created by Lukas Batema on 6/25/22.
//

import SystemKitReborn

func OS() {
    print("\n-- System --")
    print("\tModel: \(System.modelName())")
    
    let uptime = System.uptime()
    print("\tUptime: \(uptime.days)d \(uptime.hrs)h \(uptime.mins)m" + "\(uptime.secs)s")
    
    let counts = System.processCounts()
    print("\tProcesses: \(counts.processCount)")
    print("\tThreads: \(counts.threadCount)")
    
    let loadAvg = System.loadAverage().map { NSString(format: "%.2f", $0) }
    print("\tLoad Average: \(loadAvg)")
    print("\tMach Factor: \(System.machFactor())")
}
