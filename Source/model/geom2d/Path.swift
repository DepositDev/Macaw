import Foundation

open class Path: Locus {
    
    open let segments: [PathSegment]
    
    override public var description: String {
        let description = segments.reduce("") { string, segment in
            return string + "\n    \(segment)"
        }
        return super.description + description
    }
    
    public init(segments: [PathSegment] = []) {
        self.segments = segments
    }
    
    override open func bounds() -> Rect {
        return pathBounds(self)!
    }
}
