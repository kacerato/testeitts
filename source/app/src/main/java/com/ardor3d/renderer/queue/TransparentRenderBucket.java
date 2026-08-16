package com.ardor3d.renderer.queue;

import com.ardor3d.renderer.ContextManager;
import com.ardor3d.renderer.RenderContext;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.state.CullState;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.ZBufferState;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.scenegraph.hint.TransparencyType;
import java.util.Comparator;

public class TransparentRenderBucket extends AbstractRenderBucket {
    private final CullState _tranparentCull = new CullState();
    private final ZBufferState _transparentZBuff;

    public class TransparentComparator implements Comparator<Spatial> {
        private TransparentComparator() {
        }

        @Override
        public int compare(Spatial spatial, Spatial spatial2) {
            double distanceToCam = TransparentRenderBucket.this.distanceToCam(spatial);
            double distanceToCam2 = TransparentRenderBucket.this.distanceToCam(spatial2);
            if (distanceToCam > distanceToCam2) {
                return -1;
            }
            return distanceToCam < distanceToCam2 ? 1 : 0;
        }
    }

    public TransparentRenderBucket() {
        ZBufferState zBufferState = new ZBufferState();
        this._transparentZBuff = zBufferState;
        zBufferState.setWritable(false);
        zBufferState.setFunction(ZBufferState.TestFunction.LessThanOrEqualTo);
        this._comparator = new TransparentComparator();
    }

    @Override
    public void render(Renderer renderer) {
        RenderContext currentContext = ContextManager.getCurrentContext();
        for (int i10 = 0; i10 < this._currentListSize; i10++) {
            Spatial spatial = this._currentList[i10];
            if (spatial != null) {
                if ((spatial instanceof Mesh) && spatial.getSceneHints().getTransparencyType() != TransparencyType.OnePass) {
                    Mesh mesh = (Mesh) spatial;
                    RenderState enforcedState = currentContext.hasEnforcedStates() ? currentContext.getEnforcedState(RenderState.StateType.Cull) : null;
                    if (enforcedState == null) {
                        enforcedState = mesh.getWorldRenderState(RenderState.StateType.Cull);
                    }
                    if (enforcedState == null || ((CullState) enforcedState).getCullFace() == CullState.Face.None) {
                        RenderState.StateType stateType = RenderState.StateType.Cull;
                        RenderState enforcedState2 = currentContext.getEnforcedState(stateType);
                        RenderState.StateType stateType2 = RenderState.StateType.ZBuffer;
                        RenderState enforcedState3 = currentContext.getEnforcedState(stateType2);
                        currentContext.enforceState(this._tranparentCull);
                        currentContext.enforceState(this._transparentZBuff);
                        this._tranparentCull.setCullFace(CullState.Face.Front);
                        mesh.draw(renderer);
                        currentContext.clearEnforcedState(stateType2);
                        if (enforcedState3 != null) {
                            currentContext.enforceState(enforcedState3);
                        }
                        this._tranparentCull.setCullFace(CullState.Face.Back);
                        mesh.draw(renderer);
                        if (enforcedState2 != null) {
                            currentContext.enforceState(enforcedState2);
                        } else {
                            currentContext.clearEnforcedState(stateType);
                        }
                    }
                }
                spatial.draw(renderer);
            }
        }
    }
}
