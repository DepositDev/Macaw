import Foundation

open class Font {

	open let name: String
	open let size: CGFloat

	public init(name: String = "Serif", size: CGFloat = 12) {
		self.name = name
		self.size = size
	}

}
