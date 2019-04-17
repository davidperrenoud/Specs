//
//  Version.swift
//  Paseto
//
//  Created by Aidan Woods on 04/03/2018.
//

public enum Version: String {
    case v2 = "v2"
}

extension Version {
    init <M: Module>(module: M.Type) {
        switch module {
        case is Version2.Local.Type: self = .v2
        case is Version2.Public.Type: self = .v2
        default: fatalError("All implementations must be enumerated")
        }
    }
}
