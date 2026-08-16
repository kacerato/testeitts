package com.ardor3d.util.scenegraph;

import com.ardor3d.renderer.ContextCleanListener;
import com.ardor3d.renderer.ContextManager;
import com.ardor3d.renderer.RenderContext;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.RendererCallable;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.util.GameTaskQueueManager;
import com.ardor3d.util.SimpleContextIdReference;
import com.google.common.collect.C12566s;
import com.google.common.collect.O1;
import com.google.common.collect.S1;
import java.lang.ref.ReferenceQueue;
import java.util.Map;

public class DisplayListDelegate implements RenderDelegate {
    private final SimpleContextIdReference<DisplayListDelegate> _id;
    private static Map<DisplayListDelegate, Object> _identityCache = new O1().l().i();
    private static final Object STATIC_REF = new Object();
    private static ReferenceQueue<DisplayListDelegate> _refQueue = new ReferenceQueue<>();

    static {
        ContextManager.addContextCleanListener(new ContextCleanListener() {
            @Override
            public void cleanForContext(RenderContext renderContext) {
            }
        });
    }

    public DisplayListDelegate(int i10, Object obj) {
        this._id = new SimpleContextIdReference<>(this, _refQueue, i10, obj);
        _identityCache.put(this, STATIC_REF);
    }

    public static void cleanAllDisplayLists(Renderer renderer) {
        C12566s M10 = C12566s.M();
        gatherGCdIds(M10);
        for (DisplayListDelegate displayListDelegate : _identityCache.o()) {
            M10.put(displayListDelegate._id.getGlContext(), Integer.valueOf(displayListDelegate._id.getId()));
        }
        handleDisplayListDelete(renderer, M10);
    }

    public static void cleanExpiredDisplayLists(Renderer renderer) {
        S1<Object, Integer> gatherGCdIds = gatherGCdIds(null);
        if (gatherGCdIds != null) {
            handleDisplayListDelete(renderer, gatherGCdIds);
        }
    }

    private static S1<Object, Integer> gatherGCdIds(S1<Object, Integer> s12) {
        while (true) {
            SimpleContextIdReference simpleContextIdReference = (SimpleContextIdReference) _refQueue.poll();
            if (simpleContextIdReference == null) {
                return s12;
            }
            if (s12 == null) {
                s12 = C12566s.M();
            }
            s12.put(simpleContextIdReference.getGlContext(), Integer.valueOf(simpleContextIdReference.getId()));
            simpleContextIdReference.clear();
        }
    }

    private static void handleDisplayListDelete(Renderer renderer, final S1<Object, Integer> s12) {
        Object glContextRep = (renderer == null || ContextManager.getCurrentContext() == null) ? null : ContextManager.getCurrentContext().getGlContextRep();
        for (final Object obj : s12.keySet()) {
            if (renderer == null || !obj.equals(glContextRep)) {
                GameTaskQueueManager.getManager(ContextManager.getContextForRef(obj)).render(new RendererCallable<Void>() {
                    @Override
                    public Void call() throws Exception {
                        getRenderer().deleteDisplayLists(S1.this.y(obj));
                        return null;
                    }
                });
            } else {
                renderer.deleteDisplayLists(s12.y(obj));
            }
        }
    }

    @Override
    public void render(Spatial spatial, Renderer renderer) {
        boolean doTransforms = renderer.doTransforms(spatial.getWorldTransform());
        renderer.renderDisplayList(this._id.getId());
        ContextManager.getCurrentContext().invalidateStates();
        if (doTransforms) {
            renderer.undoTransforms(spatial.getWorldTransform());
        }
    }
}
