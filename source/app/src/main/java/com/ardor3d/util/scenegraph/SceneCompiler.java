package com.ardor3d.util.scenegraph;

import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.renderer.Camera;
import com.ardor3d.renderer.ContextManager;
import com.ardor3d.renderer.RenderContext;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.TextureState;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.scenegraph.visitor.Visitor;

public class SceneCompiler {

    public static class TextureApplyVisitor implements Visitor {
        private final Renderer _renderer;

        public TextureApplyVisitor(Renderer renderer) {
            this._renderer = renderer;
        }

        @Override
        public void visit(Spatial spatial) {
            TextureState textureState;
            if (!(spatial instanceof Mesh) || (textureState = (TextureState) ((Mesh) spatial).getWorldRenderState(RenderState.StateType.Texture)) == null) {
                return;
            }
            this._renderer.applyState(textureState.getType(), textureState);
        }
    }

    public static void compile(Spatial spatial, Renderer renderer, CompileOptions compileOptions) {
        if (compileOptions.isDisplayList()) {
            RenderContext currentContext = ContextManager.getCurrentContext();
            Camera currentCamera = currentContext.getCurrentCamera();
            currentContext.setCurrentCamera(new Camera(currentCamera) {
                @Override
                public Camera.FrustumIntersect contains(BoundingVolume boundingVolume) {
                    return Camera.FrustumIntersect.Inside;
                }
            });
            spatial.acceptVisitor(new TextureApplyVisitor(renderer), true);
            currentContext.invalidateStates();
            int startDisplayList = renderer.startDisplayList();
            renderer.getQueue().pushBuckets();
            spatial.draw(renderer);
            renderer.renderBuckets();
            renderer.getQueue().popBuckets();
            renderer.endDisplayList();
            currentContext.setCurrentCamera(currentCamera);
            spatial.setRenderDelegate(new DisplayListDelegate(startDisplayList, currentContext.getGlContextRep()), currentContext.getGlContextRep());
        }
    }
}
