package com.ardor3d.renderer;

import com.ardor3d.framework.DisplaySettings;
import com.ardor3d.framework.Scene;
import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.renderer.Camera;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.scenegraph.Spatial;
import java.util.EnumMap;
import java.util.List;
import java.util.logging.Logger;

public abstract class AbstractPbufferTextureRenderer implements TextureRenderer {
    private static final Logger logger = Logger.getLogger(AbstractPbufferTextureRenderer.class.getName());
    protected int _active;
    protected int _height;
    protected RenderContext _oldContext;
    protected final Renderer _parentRenderer;
    protected final DisplaySettings _settings;
    protected int _width;
    protected final EnumMap<RenderState.StateType, RenderState> _enforcedStates = new EnumMap<>(RenderState.StateType.class);
    protected final Camera _camera = new Camera(1, 1);
    protected final ColorRGBA _backgroundColor = new ColorRGBA(1.0f, 1.0f, 1.0f, 1.0f);
    protected boolean _bgColorDirty = true;
    protected boolean _useDirectRender = false;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004e, code lost:
    
        if (com.ardor3d.math.MathUtils.isPowerOfTwo(r1) == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0050, code lost:
    
        r5 = r5 << 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0051, code lost:
    
        if (r5 < r1) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
    
        r1 = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AbstractPbufferTextureRenderer(DisplaySettings displaySettings, Renderer renderer, ContextCapabilities contextCapabilities) {
        this._width = 0;
        this._height = 0;
        this._parentRenderer = renderer;
        this._settings = displaySettings;
        int width = displaySettings.getWidth();
        int height = displaySettings.getHeight();
        if (!contextCapabilities.isNonPowerOfTwoTextureSupported()) {
            int i10 = 2;
            if (!MathUtils.isPowerOfTwo(width)) {
                int i11 = 2;
                do {
                    i11 <<= 1;
                } while (i11 < width);
                width = i11;
            }
        }
        this._width = width;
        this._height = height;
        logger.fine("Created Pbuffer sized: " + this._width + " x " + this._height);
        this._camera.resize(this._width, this._height);
        this._camera.setFrustum(1.0d, 1000.0d, -0.5d, 0.5d, 0.5d, -0.5d);
        this._camera.setFrame(new Vector3(0.0d, 0.0d, 0.0d), new Vector3(-1.0d, 0.0d, 0.0d), new Vector3(0.0d, 1.0d, 0.0d), new Vector3(0.0d, 0.0d, -1.0d));
    }

    public abstract void clearBuffers(int i10);

    @Override
    public void clearEnforcedState(RenderState.StateType stateType) {
        this._enforcedStates.remove(stateType);
    }

    @Override
    public void clearEnforcedStates() {
        this._enforcedStates.clear();
    }

    public void doDraw(Spatial spatial) {
        if (spatial.getParent() != null) {
            spatial.getParent().setLastFrustumIntersection(Camera.FrustumIntersect.Intersects);
        }
        spatial.onDraw(this._parentRenderer);
    }

    @Override
    public void enforceState(RenderState renderState) {
        this._enforcedStates.put((EnumMap<RenderState.StateType, RenderState>) renderState.getType(), (RenderState.StateType) renderState);
    }

    @Override
    public ReadOnlyColorRGBA getBackgroundColor() {
        return this._backgroundColor;
    }

    @Override
    public Camera getCamera() {
        return this._camera;
    }

    @Override
    public int getHeight() {
        return this._height;
    }

    @Override
    public int getWidth() {
        return this._width;
    }

    @Override
    public void setBackgroundColor(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this._backgroundColor.set(readOnlyColorRGBA);
        this._bgColorDirty = true;
    }

    public void switchCameraIn(int i10) {
        this._parentRenderer.getQueue().pushBuckets();
        if (i10 != 0) {
            clearBuffers(i10);
        }
        getCamera().update();
        getCamera().apply(this._parentRenderer);
    }

    public void switchCameraOut() {
        this._parentRenderer.flushFrame(false);
        this._parentRenderer.getQueue().popBuckets();
    }

    public void doDraw(List<? extends Spatial> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            doDraw(list.get(i10));
        }
    }

    public void doDraw(Scene scene) {
        scene.renderUnto(this._parentRenderer);
    }
}
