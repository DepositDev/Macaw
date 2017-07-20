import UIKit

class ShapeLayer: CAShapeLayer {
	var node: Node?
    var renderingInterval: RenderingInterval?
	var renderTransform: CGAffineTransform?
	var animationCache: AnimationCache?
    var shouldRenderContent = true
    var isForceRenderingEnabled = true

	override func draw(in ctx: CGContext) {
        guard shouldRenderContent else {
            super.draw(in: ctx)
            return
        }
		guard let node = node else { return }
		guard let animationCache = animationCache else { return }

		let renderContext = RenderContext(view: nil)
		renderContext.cgContext = ctx

		if let renderTransform = renderTransform {
			ctx.concatenate(renderTransform)
		}

		let renderer = RenderUtils.createNodeRenderer(node, context: renderContext, animationCache: animationCache, interval: renderingInterval)
		renderer.directRender(force: isForceRenderingEnabled)
		renderer.dispose()
	}
}
