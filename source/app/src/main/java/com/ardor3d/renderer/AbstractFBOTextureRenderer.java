package com.ardor3d.renderer;

import com.ardor3d.framework.Scene;
import com.ardor3d.image.Texture;
import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.renderer.Camera;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.scenegraph.Spatial;
import java.nio.IntBuffer;
import java.util.EnumMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class AbstractFBOTextureRenderer implements TextureRenderer {
    private static final Logger logger = Logger.getLogger(AbstractFBOTextureRenderer.class.getName());
    protected int _active;
    protected int _depthBits;
    protected int _height;
    protected boolean _neededClip;
    private Camera _oldCamera;
    protected final Renderer _parentRenderer;
    protected int _samples;
    protected final boolean _supportsDepthTexture;
    protected final boolean _supportsMultisample;
    protected int _width;
    protected final EnumMap<RenderState.StateType, RenderState> _enforcedStates = new EnumMap<>(RenderState.StateType.class);
    protected final Camera _camera = new Camera(1, 1);
    protected final ColorRGBA _backgroundColor = new ColorRGBA(1.0f, 1.0f, 1.0f, 1.0f);
    protected int _fboID = 0;
    protected int _depthRBID = 0;
    protected int _msfboID = 0;
    protected int _msdepthRBID = 0;
    protected int _mscolorRBID = 0;
    protected IntBuffer _attachBuffer = null;
    protected boolean _usingDepthRB = false;

    public AbstractFBOTextureRenderer(int i10, int i11, int i12, int i13, Renderer renderer, ContextCapabilities contextCapabilities) {
        int i14;
        int i15;
        this._width = 0;
        this._height = 0;
        this._samples = 0;
        this._depthBits = 0;
        this._parentRenderer = renderer;
        this._samples = Math.min(i13, contextCapabilities.getMaxFBOSamples());
        this._depthBits = i12;
        this._supportsDepthTexture = contextCapabilities.isDepthTextureSupported();
        this._supportsMultisample = contextCapabilities.getMaxFBOSamples() != 0;
        if (contextCapabilities.isNonPowerOfTwoTextureSupported()) {
            i14 = i11;
            i15 = i10;
        } else {
            int i16 = 2;
            if (MathUtils.isPowerOfTwo(i10)) {
                i15 = i10;
            } else {
                i15 = 2;
                do {
                    i15 <<= 1;
                } while (i15 < i10);
            }
            if (MathUtils.isPowerOfTwo(i11)) {
                i14 = i11;
            }
            do {
                i16 <<= 1;
            } while (i16 < i11);
            i14 = i16;
        }
        logger.fine("Creating FBO sized: " + i15 + " x " + i14);
        this._width = i15;
        this._height = i14;
        this._camera.resize(i15, i14);
        this._camera.setFrustum(1.0d, 1000.0d, -0.5d, 0.5d, 0.5d, -0.5d);
        this._camera.setFrame(new Vector3(0.0d, 0.0d, 0.0d), new Vector3(-1.0d, 0.0d, 0.0d), new Vector3(0.0d, 1.0d, 0.0d), new Vector3(0.0d, 0.0d, -1.0d));
    }

    public abstract void activate();

    public abstract void blitTo(Texture texture);

    public abstract void clearBuffers(int i10);

    @Override
    public void clearEnforcedState(RenderState.StateType stateType) {
        this._enforcedStates.remove(stateType);
    }

    @Override
    public void clearEnforcedStates() {
        this._enforcedStates.clear();
    }

    public abstract void deactivate();

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

    public Renderer getParentRenderer() {
        return this._parentRenderer;
    }

    @Override
    public int getWidth() {
        return this._width;
    }

    @Override
    public void render(Spatial spatial, Texture texture, int i10) {
        try {
            ContextManager.getCurrentContext().pushFBOTextureRenderer(this);
            setupForSingleTexDraw(texture);
            if (this._samples > 0 && this._supportsMultisample) {
                setMSFBO();
            }
            switchCameraIn(i10);
            doDraw(spatial);
            switchCameraOut();
            if (this._samples > 0 && this._supportsMultisample) {
                blitTo(texture);
            }
            takedownForSingleTexDraw(texture);
            ContextManager.getCurrentContext().popFBOTextureRenderer();
        } catch (Exception e10) {
            logger.logp(Level.SEVERE, getClass().toString(), "render(Spatial, Texture, boolean)", "Exception", (Throwable) e10);
        }
    }

    @Override
    public void setBackgroundColor(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this._backgroundColor.set(readOnlyColorRGBA);
    }

    public abstract void setMSFBO();

    @Override
    public void setMultipleTargets(boolean z10) {
    }

    public abstract void setupForSingleTexDraw(Texture texture);

    public void switchCameraIn(int i10) {
        this._oldCamera = Camera.getCurrentCamera();
        this._parentRenderer.getQueue().pushBuckets();
        if (i10 != 0) {
            clearBuffers(i10);
        }
        getCamera().update();
        getCamera().apply(this._parentRenderer);
    }

    public void switchCameraOut() {
        this._parentRenderer.flushFrame(false);
        this._oldCamera.update();
        this._oldCamera.apply(this._parentRenderer);
        this._parentRenderer.getQueue().popBuckets();
    }

    public abstract void takedownForSingleTexDraw(Texture texture);

    public void doDraw(List<? extends Spatial> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            doDraw(list.get(i10));
        }
    }

    public void doDraw(Scene scene) {
        scene.renderUnto(this._parentRenderer);
    }

    @Override
    public void render(Scene scene, Texture texture, int i10) {
        try {
            ContextManager.getCurrentContext().pushFBOTextureRenderer(this);
            setupForSingleTexDraw(texture);
            if (this._samples > 0 && this._supportsMultisample) {
                setMSFBO();
            }
            switchCameraIn(i10);
            doDraw(scene);
            switchCameraOut();
            if (this._samples > 0 && this._supportsMultisample) {
                blitTo(texture);
            }
            takedownForSingleTexDraw(texture);
            ContextManager.getCurrentContext().popFBOTextureRenderer();
        } catch (Exception e10) {
            logger.logp(Level.SEVERE, getClass().toString(), "render(Spatial, Texture, boolean)", "Exception", (Throwable) e10);
        }
    }

    @Override
    public void render(List<? extends Spatial> list, Texture texture, int i10) {
        try {
            ContextManager.getCurrentContext().pushFBOTextureRenderer(this);
            setupForSingleTexDraw(texture);
            if (this._samples > 0 && this._supportsMultisample) {
                setMSFBO();
            }
            switchCameraIn(i10);
            doDraw(list);
            switchCameraOut();
            if (this._samples > 0 && this._supportsMultisample) {
                blitTo(texture);
            }
            takedownForSingleTexDraw(texture);
            ContextManager.getCurrentContext().popFBOTextureRenderer();
        } catch (Exception e10) {
            logger.logp(Level.SEVERE, getClass().toString(), "render(List<Spatial>, Texture, boolean)", "Exception", (Throwable) e10);
        }
    }
}
