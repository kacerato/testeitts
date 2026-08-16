package com.jme3.post;

import com.ardor3d.util.GameTaskQueue;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.Material;
import com.jme3.post.Filter;
import com.jme3.profile.AppProfiler;
import com.jme3.profile.SpStep;
import com.jme3.renderer.Camera;
import com.jme3.renderer.Caps;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.shape.FullscreenTriangle;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.Texture2D;
import com.jme3.ui.Picture;
import com.jme3.util.SafeArrayList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;

public class FilterPostProcessor implements SceneProcessor, Savable {
    public static final String FPP = "FilterPostProcessor";
    private AssetManager assetManager;
    private float bottom;
    private boolean cameraInit;
    private boolean computeDepth;
    private Image.Format depthFormat;
    private Texture2D depthTexture;
    private Image.Format fbFormat;
    private Texture2D filterTexture;
    private SafeArrayList<Filter> filters;
    private Geometry fsQuad;
    private int height;
    private int lastFilterIndex;
    private float left;
    private boolean multiView;
    private int numSamples;
    private int originalHeight;
    private int originalWidth;
    private FrameBuffer outputBuffer;
    private AppProfiler prof;
    private FrameBuffer renderFrameBuffer;
    private FrameBuffer renderFrameBufferMS;
    private RenderManager renderManager;
    private Renderer renderer;
    private float right;
    private float top;
    private boolean useFullscreenTriangle;
    private ViewPort viewPort;
    private int width;

    public FilterPostProcessor(AssetManager assetManager) {
        this.numSamples = 1;
        this.filters = new SafeArrayList<>(Filter.class);
        this.useFullscreenTriangle = false;
        this.computeDepth = false;
        this.lastFilterIndex = -1;
        this.cameraInit = false;
        this.multiView = false;
        this.fbFormat = null;
        this.depthFormat = Image.Format.Depth;
        this.assetManager = assetManager;
    }

    private void initFilter(Filter filter, ViewPort viewPort) {
        filter.setProcessor(this);
        if (!filter.isRequiresDepthTexture()) {
            filter.init(this.assetManager, this.renderManager, viewPort, this.width, this.height);
            return;
        }
        if (!this.computeDepth && this.renderFrameBuffer != null) {
            Texture2D texture2D = new Texture2D(this.width, this.height, this.depthFormat);
            this.depthTexture = texture2D;
            this.renderFrameBuffer.setDepthTarget(FrameBuffer.FrameBufferTarget.newTarget(texture2D));
        }
        this.computeDepth = true;
        filter.init(this.assetManager, this.renderManager, viewPort, this.width, this.height);
        filter.setDepthTexture(this.depthTexture);
    }

    private void renderFilterChain(Renderer renderer, FrameBuffer frameBuffer) {
        boolean z10;
        Iterator<Filter.Pass> it;
        Texture2D texture2D = this.filterTexture;
        Texture2D texture2D2 = this.depthTexture;
        int i10 = 0;
        boolean z11 = true;
        boolean z12 = texture2D2 != null && texture2D2.getImage().getMultiSamples() > 1;
        FrameBuffer frameBuffer2 = frameBuffer;
        while (i10 < this.filters.size()) {
            Filter filter = this.filters.get(i10);
            AppProfiler appProfiler = this.prof;
            if (appProfiler != null) {
                appProfiler.spStep(SpStep.ProcPostFrame, FPP, filter.getName());
            }
            if (filter.isEnabled()) {
                if (filter.getPostRenderPasses() != null) {
                    Iterator<Filter.Pass> it2 = filter.getPostRenderPasses().iterator();
                    while (it2.hasNext()) {
                        Filter.Pass next = it2.next();
                        AppProfiler appProfiler2 = this.prof;
                        if (appProfiler2 != null) {
                            it = it2;
                            appProfiler2.spStep(SpStep.ProcPostFrame, FPP, filter.getName(), next.toString());
                        } else {
                            it = it2;
                        }
                        next.beforeRender();
                        if (next.requiresSceneAsTexture()) {
                            next.getPassMaterial().setTexture(SerializableShaderEntry.f81152f, texture2D);
                            if (texture2D.getImage().getMultiSamples() > 1) {
                                next.getPassMaterial().setInt("NumSamples", texture2D.getImage().getMultiSamples());
                            } else {
                                next.getPassMaterial().clearParam("NumSamples");
                            }
                        }
                        if (next.requiresDepthAsTexture()) {
                            next.getPassMaterial().setTexture("DepthTexture", this.depthTexture);
                            if (z12) {
                                next.getPassMaterial().setInt("NumSamplesDepth", this.depthTexture.getImage().getMultiSamples());
                            } else {
                                next.getPassMaterial().clearParam("NumSamplesDepth");
                            }
                        }
                        renderProcessing(renderer, next.getRenderFrameBuffer(), next.getPassMaterial());
                        it2 = it;
                    }
                }
                AppProfiler appProfiler3 = this.prof;
                if (appProfiler3 != null) {
                    appProfiler3.spStep(SpStep.ProcPostFrame, FPP, filter.getName(), "postFrame");
                }
                filter.postFrame(this.renderManager, this.viewPort, frameBuffer2, frameBuffer);
                Material material = filter.getMaterial();
                if (z12 && filter.isRequiresDepthTexture()) {
                    material.setInt("NumSamplesDepth", this.depthTexture.getImage().getMultiSamples());
                }
                if (filter.isRequiresSceneTexture()) {
                    material.setTexture(SerializableShaderEntry.f81152f, texture2D);
                    z10 = true;
                    if (texture2D.getImage().getMultiSamples() > 1) {
                        material.setInt("NumSamples", texture2D.getImage().getMultiSamples());
                    } else {
                        material.clearParam("NumSamples");
                    }
                } else {
                    z10 = true;
                }
                boolean isRequiresBilinear = filter.isRequiresBilinear();
                if (isRequiresBilinear) {
                    texture2D.setMagFilter(Texture.MagFilter.Bilinear);
                    texture2D.setMinFilter(Texture.MinFilter.BilinearNoMipMaps);
                }
                FrameBuffer frameBuffer3 = this.outputBuffer;
                if (i10 != this.lastFilterIndex) {
                    frameBuffer3 = filter.getRenderFrameBuffer();
                    texture2D = filter.getRenderedTexture();
                }
                AppProfiler appProfiler4 = this.prof;
                if (appProfiler4 != null) {
                    appProfiler4.spStep(SpStep.ProcPostFrame, FPP, filter.getName(), GameTaskQueue.RENDER);
                }
                renderProcessing(renderer, frameBuffer3, material);
                AppProfiler appProfiler5 = this.prof;
                if (appProfiler5 != null) {
                    appProfiler5.spStep(SpStep.ProcPostFrame, FPP, filter.getName(), "postFilter");
                }
                filter.postFilter(renderer, frameBuffer3);
                if (isRequiresBilinear) {
                    texture2D.setMagFilter(Texture.MagFilter.Nearest);
                    texture2D.setMinFilter(Texture.MinFilter.NearestNoMipMaps);
                }
                frameBuffer2 = frameBuffer3;
            } else {
                z10 = z11;
            }
            i10++;
            z11 = z10;
        }
    }

    private void renderProcessing(Renderer renderer, FrameBuffer frameBuffer, Material material) {
        if (frameBuffer == this.outputBuffer) {
            this.viewPort.getCamera().resize(this.originalWidth, this.originalHeight, false);
            this.viewPort.getCamera().setViewPort(this.left, this.right, this.bottom, this.top);
            this.renderManager.setCamera(this.viewPort.getCamera(), false);
            if (material.getAdditionalRenderState().isDepthWrite()) {
                material.getAdditionalRenderState().setDepthTest(false);
                material.getAdditionalRenderState().setDepthWrite(false);
            }
        } else {
            this.viewPort.getCamera().resize(frameBuffer.getWidth(), frameBuffer.getHeight(), false);
            this.viewPort.getCamera().setViewPort(0.0f, 1.0f, 0.0f, 1.0f);
            this.renderManager.setCamera(this.viewPort.getCamera(), false);
            material.getAdditionalRenderState().setDepthTest(true);
            material.getAdditionalRenderState().setDepthWrite(true);
        }
        this.fsQuad.setMaterial(material);
        this.fsQuad.updateGeometricState();
        renderer.setFrameBuffer(frameBuffer);
        renderer.clearBuffers(true, true, true);
        this.renderManager.renderGeometry(this.fsQuad);
    }

    private void setupViewPortFrameBuffer() {
        FrameBuffer frameBuffer = this.renderFrameBufferMS;
        if (frameBuffer != null) {
            this.viewPort.setOutputFrameBuffer(frameBuffer);
        } else {
            this.viewPort.setOutputFrameBuffer(this.renderFrameBuffer);
        }
    }

    private void updateLastFilterIndex() {
        this.lastFilterIndex = -1;
        for (int size = this.filters.size() - 1; size >= 0 && this.lastFilterIndex == -1; size--) {
            if (this.filters.get(size).isEnabled()) {
                this.lastFilterIndex = size;
                if (isInitialized() && this.viewPort.getOutputFrameBuffer() == this.outputBuffer) {
                    setupViewPortFrameBuffer();
                    return;
                }
                return;
            }
        }
        if (isInitialized() && this.lastFilterIndex == -1) {
            this.viewPort.setOutputFrameBuffer(this.outputBuffer);
        }
    }

    public void addFilter(Filter filter) {
        if (filter == null) {
            throw new IllegalArgumentException("Filter cannot be null.");
        }
        this.filters.add(filter);
        if (isInitialized()) {
            initFilter(filter, this.viewPort);
        }
        setFilterState(filter, filter.isEnabled());
    }

    @Override
    public void cleanup() {
        ViewPort viewPort = this.viewPort;
        if (viewPort != null) {
            viewPort.getCamera().resize(this.originalWidth, this.originalHeight, true);
            this.viewPort.getCamera().setViewPort(this.left, this.right, this.bottom, this.top);
            this.viewPort.setOutputFrameBuffer(this.outputBuffer);
            this.viewPort = null;
            FrameBuffer frameBuffer = this.renderFrameBuffer;
            if (frameBuffer != null) {
                frameBuffer.dispose();
            }
            Texture2D texture2D = this.depthTexture;
            if (texture2D != null) {
                texture2D.getImage().dispose();
            }
            this.filterTexture.getImage().dispose();
            FrameBuffer frameBuffer2 = this.renderFrameBufferMS;
            if (frameBuffer2 != null) {
                frameBuffer2.dispose();
            }
            for (Filter filter : this.filters.getArray()) {
                filter.cleanup(this.renderer);
            }
        }
    }

    public Image.Format getDefaultPassTextureFormat() {
        return this.fbFormat;
    }

    public Texture2D getDepthTexture() {
        return this.depthTexture;
    }

    public <T extends Filter> T getFilter(Class<T> cls) {
        for (Filter filter : this.filters.getArray()) {
            T t10 = (T) filter;
            if (cls.isAssignableFrom(t10.getClass())) {
                return t10;
            }
        }
        return null;
    }

    public Iterator<Filter> getFilterIterator() {
        return this.filters.iterator();
    }

    public List<Filter> getFilterList() {
        return Collections.unmodifiableList(this.filters);
    }

    public Texture2D getFilterTexture() {
        return this.filterTexture;
    }

    public Image.Format getFrameBufferDepthFormat() {
        return this.depthFormat;
    }

    public int getNumSamples() {
        return this.numSamples;
    }

    @Override
    public void initialize(RenderManager renderManager, ViewPort viewPort) {
        this.renderManager = renderManager;
        this.renderer = renderManager.getRenderer();
        this.viewPort = viewPort;
        if (this.useFullscreenTriangle) {
            this.fsQuad = new Geometry("FsQuad", new FullscreenTriangle());
        } else {
            Picture picture = new Picture("filter full screen quad");
            picture.setWidth(1.0f);
            picture.setHeight(1.0f);
            this.fsQuad = picture;
        }
        if (this.fbFormat == null) {
            this.fbFormat = this.renderer.getBestColorTargetFormat(true, false, false);
        }
        Camera camera = viewPort.getCamera();
        this.left = camera.getViewPortLeft();
        this.right = camera.getViewPortRight();
        this.top = camera.getViewPortTop();
        this.bottom = camera.getViewPortBottom();
        this.originalWidth = camera.getWidth();
        this.originalHeight = camera.getHeight();
        reshape(viewPort, camera.getWidth(), camera.getHeight());
    }

    @Override
    public boolean isInitialized() {
        return this.viewPort != null;
    }

    @Override
    public void postFrame(FrameBuffer frameBuffer) {
        FrameBuffer frameBuffer2 = this.renderFrameBuffer;
        if (this.renderFrameBufferMS == null || this.renderer.getCaps().contains(Caps.OpenGL32)) {
            FrameBuffer frameBuffer3 = this.renderFrameBufferMS;
            if (frameBuffer3 != null) {
                frameBuffer2 = frameBuffer3;
            }
        } else {
            this.renderer.copyFrameBuffer(this.renderFrameBufferMS, this.renderFrameBuffer, true, true);
        }
        renderFilterChain(this.renderer, frameBuffer2);
        this.renderer.setFrameBuffer(this.outputBuffer);
        ViewPort viewPort = this.viewPort;
        if (viewPort != null) {
            this.renderManager.setCamera(viewPort.getCamera(), false);
        }
    }

    @Override
    public void postQueue(RenderQueue renderQueue) {
        for (Filter filter : this.filters.getArray()) {
            if (filter.isEnabled()) {
                AppProfiler appProfiler = this.prof;
                if (appProfiler != null) {
                    appProfiler.spStep(SpStep.ProcPostQueue, FPP, filter.getName());
                }
                filter.postQueue(renderQueue);
            }
        }
    }

    @Override
    public void preFrame(float f10) {
        if (!this.filters.isEmpty() && this.lastFilterIndex != -1) {
            setupViewPortFrameBuffer();
            if (this.multiView) {
                this.viewPort.getCamera().resize(this.width, this.height, false);
                this.viewPort.getCamera().setViewPort(0.0f, 1.0f, 0.0f, 1.0f);
                this.viewPort.getCamera().update();
                this.renderManager.setCamera(this.viewPort.getCamera(), false);
            }
        } else if (this.cameraInit) {
            this.viewPort.getCamera().resize(this.originalWidth, this.originalHeight, true);
            this.viewPort.getCamera().setViewPort(this.left, this.right, this.bottom, this.top);
            this.viewPort.setOutputFrameBuffer(this.outputBuffer);
            this.cameraInit = false;
        }
        for (Filter filter : this.filters.getArray()) {
            if (filter.isEnabled()) {
                AppProfiler appProfiler = this.prof;
                if (appProfiler != null) {
                    appProfiler.spStep(SpStep.ProcPreFrame, FPP, filter.getName());
                }
                filter.preFrame(f10);
            }
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.numSamples = capsule.readInt("numSamples", 0);
        this.useFullscreenTriangle = capsule.readBoolean("useFullscreenTriangle", false);
        SafeArrayList<Filter> safeArrayList = new SafeArrayList<>((Class<Filter>) Filter.class, capsule.readSavableArrayList("filters", null));
        this.filters = safeArrayList;
        for (Filter filter : safeArrayList.getArray()) {
            filter.setProcessor(this);
            setFilterState(filter, filter.isEnabled());
        }
        this.assetManager = jmeImporter.getAssetManager();
    }

    public void removeAllFilters() {
        this.filters.clear();
        updateLastFilterIndex();
    }

    public void removeFilter(Filter filter) {
        if (filter == null) {
            throw new IllegalArgumentException("Filter cannot be null.");
        }
        this.filters.remove(filter);
        filter.cleanup(this.renderer);
        updateLastFilterIndex();
    }

    @Override
    public void reshape(ViewPort viewPort, int i10, int i11) {
        Camera camera = viewPort.getCamera();
        camera.setViewPort(this.left, this.right, this.bottom, this.top);
        camera.resize(i10, i11, true);
        this.left = camera.getViewPortLeft();
        this.right = camera.getViewPortRight();
        this.top = camera.getViewPortTop();
        this.bottom = camera.getViewPortBottom();
        this.originalWidth = i10;
        this.originalHeight = i11;
        this.width = (int) (i10 * Math.abs(this.right - this.left));
        this.height = (int) (i11 * Math.abs(this.bottom - this.top));
        this.width = Math.max(1, this.width);
        int max = Math.max(1, this.height);
        this.height = max;
        if (this.originalWidth != this.width || this.originalHeight != max) {
            this.multiView = true;
        }
        this.cameraInit = true;
        this.computeDepth = false;
        if (this.renderFrameBuffer == null && this.renderFrameBufferMS == null) {
            this.outputBuffer = this.viewPort.getOutputFrameBuffer();
        }
        EnumSet<Caps> caps = this.renderer.getCaps();
        if (this.numSamples > 1 && caps.contains(Caps.FrameBufferMultisample)) {
            this.renderFrameBufferMS = new FrameBuffer(this.width, this.height, this.numSamples);
            if (caps.contains(Caps.OpenGL32)) {
                Texture2D texture2D = new Texture2D(this.width, this.height, this.numSamples, this.fbFormat);
                Texture2D texture2D2 = new Texture2D(this.width, this.height, this.numSamples, this.depthFormat);
                this.renderFrameBufferMS.setDepthTarget(FrameBuffer.FrameBufferTarget.newTarget(texture2D2));
                this.renderFrameBufferMS.addColorTarget(FrameBuffer.FrameBufferTarget.newTarget(texture2D));
                this.filterTexture = texture2D;
                this.depthTexture = texture2D2;
            } else {
                this.renderFrameBufferMS.setDepthTarget(FrameBuffer.FrameBufferTarget.newTarget(this.depthFormat));
                this.renderFrameBufferMS.addColorTarget(FrameBuffer.FrameBufferTarget.newTarget(this.fbFormat));
            }
        }
        if (this.numSamples <= 1 || !caps.contains(Caps.OpenGL32) || !caps.contains(Caps.FrameBufferMultisample)) {
            FrameBuffer frameBuffer = new FrameBuffer(this.width, this.height, 1);
            this.renderFrameBuffer = frameBuffer;
            frameBuffer.setDepthTarget(FrameBuffer.FrameBufferTarget.newTarget(this.depthFormat));
            Texture2D texture2D3 = new Texture2D(this.width, this.height, this.fbFormat);
            this.filterTexture = texture2D3;
            this.renderFrameBuffer.addColorTarget(FrameBuffer.FrameBufferTarget.newTarget(texture2D3));
        }
        FrameBuffer frameBuffer2 = this.renderFrameBufferMS;
        if (frameBuffer2 != null) {
            frameBuffer2.setName("FilterPostProcessor MS");
        }
        FrameBuffer frameBuffer3 = this.renderFrameBuffer;
        if (frameBuffer3 != null) {
            frameBuffer3.setName(FPP);
        }
        for (Filter filter : this.filters.getArray()) {
            initFilter(filter, viewPort);
        }
        setupViewPortFrameBuffer();
    }

    public void setAssetManager(AssetManager assetManager) {
        this.assetManager = assetManager;
    }

    public void setFilterState(Filter filter, boolean z10) {
        if (this.filters.contains(filter)) {
            filter.enabled = z10;
            updateLastFilterIndex();
        }
    }

    public void setFrameBufferDepthFormat(Image.Format format) {
        this.depthFormat = format;
    }

    public void setFrameBufferFormat(Image.Format format) {
        this.fbFormat = format;
    }

    public void setNumSamples(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("numSamples must be > 0");
        }
        this.numSamples = i10;
    }

    @Override
    public void setProfiler(AppProfiler appProfiler) {
        this.prof = appProfiler;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.numSamples, "numSamples", 0);
        capsule.write(this.useFullscreenTriangle, "useFullscreenTriangle", false);
        capsule.writeSavableArrayList(new ArrayList(this.filters), "filters", null);
    }

    public FilterPostProcessor(AssetManager assetManager, boolean z10) {
        this(assetManager);
        this.useFullscreenTriangle = z10;
    }

    public FilterPostProcessor() {
        this.numSamples = 1;
        this.filters = new SafeArrayList<>(Filter.class);
        this.useFullscreenTriangle = false;
        this.computeDepth = false;
        this.lastFilterIndex = -1;
        this.cameraInit = false;
        this.multiView = false;
        this.fbFormat = null;
        this.depthFormat = Image.Format.Depth;
    }
}
