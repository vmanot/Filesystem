//
// Copyright (c) Vatsal Manot
//

import Foundation
import Swift
import UniformTypeIdentifiers

extension URL {
    public static func filePath(_ path: String) -> URL{
        URL(path: FilePath(path))
    }
}

extension URL {
    public subscript(keys: Set<URLResourceKey>) -> Result<URLResourceValues, Error> {
        .init(try resourceValues(forKeys: keys))
    }
    
    public subscript(key: URLResourceKey) -> Result<URLResourceValues, Error> {
        self[[key]]
    }
}
