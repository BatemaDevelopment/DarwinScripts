//
//  kernel.swift
//  DarwinScripts
//
//  Created by Lukas Batema on 6/25/22.
//

import SystemKitReborn

func kernel() {
    print("\n-- Kernel --")
    
    let names = System.uname()
    print("\tSystem Name: \(names.sysname)")
    print("\tNode Name: \(names.nodename)")
    print("\tRelease: \(names.release)")
    print("\tVersion: \(names.version)")
    print("\tMachine: \(names.machine)")
}
