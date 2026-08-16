package com.ardor3d.scenegraph;

import com.ardor3d.renderer.ContextCleanListener;
import com.ardor3d.renderer.ContextManager;
import com.ardor3d.renderer.RenderContext;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.RendererCallable;
import com.ardor3d.util.Constants;
import com.ardor3d.util.ContextIdReference;
import com.ardor3d.util.GameTaskQueueManager;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.google.common.collect.C12566s;
import com.google.common.collect.O1;
import com.google.common.collect.S1;
import java.io.IOException;
import java.lang.ref.ReferenceQueue;
import java.nio.Buffer;
import java.util.Map;

public abstract class AbstractBufferData<T extends Buffer> {
    protected T _buffer;
    protected transient ContextIdReference<AbstractBufferData<T>> _vboIdCache;
    private static Map<AbstractBufferData<?>, Object> _identityCache = new O1().l().i();
    private static final Object STATIC_REF = new Object();
    private static ReferenceQueue<AbstractBufferData<?>> _vboRefQueue = new ReferenceQueue<>();
    protected VBOAccessMode _vboAccessMode = VBOAccessMode.StaticDraw;
    protected boolean _needsRefresh = false;

    public enum VBOAccessMode {
        StaticDraw,
        StaticCopy,
        StaticRead,
        StreamDraw,
        StreamCopy,
        StreamRead,
        DynamicDraw,
        DynamicCopy,
        DynamicRead
    }

    static {
        ContextManager.addContextCleanListener(new ContextCleanListener() {
            @Override
            public void cleanForContext(RenderContext renderContext) {
                AbstractBufferData.cleanAllVBOs(null, renderContext);
            }
        });
    }

    public AbstractBufferData() {
        _identityCache.put(this, STATIC_REF);
    }

    public static void cleanAllVBOs(Renderer renderer) {
        C12566s M10 = C12566s.M();
        gatherGCdIds(M10);
        for (AbstractBufferData<?> abstractBufferData : _identityCache.o()) {
            ContextIdReference<AbstractBufferData<?>> contextIdReference = abstractBufferData._vboIdCache;
            if (contextIdReference != null) {
                if (Constants.useMultipleContexts) {
                    for (Object obj : contextIdReference.getContextObjects()) {
                        M10.put(obj, Integer.valueOf(abstractBufferData.getVBOID(obj)));
                    }
                } else {
                    M10.put(ContextManager.getCurrentContext().getGlContextRep(), Integer.valueOf(abstractBufferData.getVBOID(null)));
                }
            }
        }
        handleVBODelete(renderer, M10);
    }

    public static void cleanExpiredVBOs(Renderer renderer) {
        S1<Object, Integer> gatherGCdIds = gatherGCdIds(null);
        if (gatherGCdIds != null) {
            handleVBODelete(renderer, gatherGCdIds);
        }
    }

    private static final S1<Object, Integer> gatherGCdIds(S1<Object, Integer> s12) {
        while (true) {
            ContextIdReference contextIdReference = (ContextIdReference) _vboRefQueue.poll();
            if (contextIdReference == null) {
                return s12;
            }
            if (Constants.useMultipleContexts) {
                for (Object obj : contextIdReference.getContextObjects()) {
                    if (s12 == null) {
                        s12 = C12566s.M();
                    }
                    s12.put(obj, Integer.valueOf(contextIdReference.get(obj)));
                }
            } else {
                if (s12 == null) {
                    s12 = C12566s.M();
                }
                s12.put(ContextManager.getCurrentContext().getGlContextRep(), Integer.valueOf(contextIdReference.get(null)));
            }
            contextIdReference.clear();
        }
    }

    private static void handleVBODelete(Renderer renderer, final S1<Object, Integer> s12) {
        Object glContextRep = (renderer == null || ContextManager.getCurrentContext() == null) ? null : ContextManager.getCurrentContext().getGlContextRep();
        for (final Object obj : s12.keySet()) {
            if (renderer == null || !obj.equals(glContextRep)) {
                GameTaskQueueManager.getManager(ContextManager.getContextForRef(obj)).render(new RendererCallable<Void>() {
                    @Override
                    public Void call() throws Exception {
                        getRenderer().deleteVBOs(S1.this.get(obj));
                        return null;
                    }
                });
            } else {
                renderer.deleteVBOs(s12.get(obj));
            }
        }
    }

    public T getBuffer() {
        return this._buffer;
    }

    public int getBufferCapacity() {
        T t10 = this._buffer;
        if (t10 != null) {
            return t10.capacity();
        }
        return 0;
    }

    public int getBufferLimit() {
        T t10 = this._buffer;
        if (t10 != null) {
            return t10.limit();
        }
        return 0;
    }

    public int getVBOID(Object obj) {
        ContextIdReference<AbstractBufferData<T>> contextIdReference = this._vboIdCache;
        if (contextIdReference == null || !contextIdReference.containsKey(obj)) {
            return 0;
        }
        return this._vboIdCache.get(obj);
    }

    public VBOAccessMode getVboAccessMode() {
        return this._vboAccessMode;
    }

    public boolean isNeedsRefresh() {
        return this._needsRefresh;
    }

    public abstract AbstractBufferData<T> makeCopy();

    public void read(InputCapsule inputCapsule) throws IOException {
        this._vboAccessMode = (VBOAccessMode) inputCapsule.readEnum("vboAccessMode", VBOAccessMode.class, VBOAccessMode.StaticDraw);
    }

    public int removeVBOID(Object obj) {
        ContextIdReference<AbstractBufferData<T>> contextIdReference = this._vboIdCache;
        if (contextIdReference != null) {
            return contextIdReference.remove(obj);
        }
        return -1;
    }

    public void setBuffer(T t10) {
        this._buffer = t10;
    }

    public void setNeedsRefresh(boolean z10) {
        this._needsRefresh = z10;
    }

    public void setVBOID(Object obj, int i10) {
        if (i10 == 0) {
            throw new IllegalArgumentException("vboId must != 0");
        }
        if (this._vboIdCache == null) {
            this._vboIdCache = new ContextIdReference<>(this, _vboRefQueue);
        }
        this._vboIdCache.put(obj, i10);
    }

    public void setVboAccessMode(VBOAccessMode vBOAccessMode) {
        this._vboAccessMode = vBOAccessMode;
    }

    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._vboAccessMode, "vboAccessMode", VBOAccessMode.StaticDraw);
    }

    public static void cleanAllVBOs(Renderer renderer, RenderContext renderContext) {
        int i10;
        C12566s M10 = C12566s.M();
        gatherGCdIds(M10);
        Object glContextRep = renderContext.getGlContextRep();
        for (AbstractBufferData<?> abstractBufferData : _identityCache.o()) {
            ContextIdReference<AbstractBufferData<?>> contextIdReference = abstractBufferData._vboIdCache;
            if (contextIdReference != null && (i10 = contextIdReference.get(glContextRep)) != 0) {
                M10.put(renderContext.getGlContextRep(), Integer.valueOf(i10));
                abstractBufferData._vboIdCache.remove(glContextRep);
            }
        }
        handleVBODelete(renderer, M10);
    }
}
