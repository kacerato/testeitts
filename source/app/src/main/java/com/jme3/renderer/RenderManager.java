package com.jme3.renderer;

import com.jme3.light.DefaultLightFilter;
import com.jme3.light.LightFilter;
import com.jme3.light.LightList;
import com.jme3.material.MatParamOverride;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.material.Technique;
import com.jme3.material.TechniqueDef;
import com.jme3.math.FastMath;
import com.jme3.math.Matrix4f;
import com.jme3.post.SceneProcessor;
import com.jme3.profile.AppProfiler;
import com.jme3.profile.AppStep;
import com.jme3.profile.VpStep;
import com.jme3.renderer.pipeline.DefaultPipelineContext;
import com.jme3.renderer.pipeline.ForwardPipeline;
import com.jme3.renderer.pipeline.PipelineContext;
import com.jme3.renderer.pipeline.RenderPipeline;
import com.jme3.renderer.queue.GeometryList;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.shader.Shader;
import com.jme3.shader.UniformBindingManager;
import com.jme3.shader.VarType;
import com.jme3.system.NullRenderer;
import com.jme3.system.Timer;
import com.jme3.texture.FrameBuffer;
import com.jme3.util.SafeArrayList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.logging.Level;
import java.util.logging.Logger;

public class RenderManager {
    static final boolean $assertionsDisabled = false;
    private static final int RESERVED_UNIFORMS_MAX = 16;
    private static final int RESERVED_UNIFORM_FRACTION = 4;
    private static final int VEC4_UNIFORMS_PER_LIGHT = 3;
    private static final Logger logger = Logger.getLogger(RenderManager.class.getName());
    private final MatParamOverride boundDrawBufferId;
    private final HashMap<Class<? extends PipelineContext>, PipelineContext> contexts;
    private RenderPipeline<? extends PipelineContext> defaultPipeline;
    private final LightList filteredLightList;
    private Material forcedMaterial;
    private final SafeArrayList<MatParamOverride> forcedOverrides;
    private RenderState forcedRenderState;
    private String forcedTechnique;
    private boolean handleTranslucentBucket;
    private LightFilter lightFilter;
    private int maxSinglePassLightBatchSize;
    private final Matrix4f orthoMatrix;
    private TechniqueDef.LightMode preferredLightMode;
    private Camera prevCam;
    private AppProfiler prof;
    private Predicate<Geometry> renderFilter;
    private final Renderer renderer;
    private int singlePassLightBatchSize;
    private final LinkedList<PipelineContext> usedContexts;
    private final LinkedList<RenderPipeline<? extends PipelineContext>> usedPipelines;
    private final UniformBindingManager uniformBindingManager = new UniformBindingManager();
    private final ArrayList<ViewPort> preViewPorts = new ArrayList<>();
    private final ArrayList<ViewPort> viewPorts = new ArrayList<>();
    private final ArrayList<ViewPort> postViewPorts = new ArrayList<>();

    public RenderManager(Renderer renderer) {
        HashMap<Class<? extends PipelineContext>, PipelineContext> hashMap = new HashMap<>();
        this.contexts = hashMap;
        this.usedContexts = new LinkedList<>();
        this.usedPipelines = new LinkedList<>();
        this.defaultPipeline = new ForwardPipeline();
        this.prevCam = null;
        this.forcedMaterial = null;
        this.forcedTechnique = null;
        this.forcedRenderState = null;
        SafeArrayList<MatParamOverride> safeArrayList = new SafeArrayList<>(MatParamOverride.class);
        this.forcedOverrides = safeArrayList;
        this.orthoMatrix = new Matrix4f();
        this.filteredLightList = new LightList(null);
        this.handleTranslucentBucket = true;
        this.lightFilter = new DefaultLightFilter();
        this.preferredLightMode = TechniqueDef.LightMode.SinglePass;
        this.singlePassLightBatchSize = 1;
        this.maxSinglePassLightBatchSize = 16;
        MatParamOverride matParamOverride = new MatParamOverride(VarType.Int, "BoundDrawBuffer", 0);
        this.boundDrawBufferId = matParamOverride;
        this.renderer = renderer;
        safeArrayList.add(matParamOverride);
        hashMap.put(PipelineContext.class, new DefaultPipelineContext());
        setMaxSinglePassLightBatchSize(this.maxSinglePassLightBatchSize);
    }

    private void maybeResizeLightBatch(TechniqueDef techniqueDef, int i10) {
        int i11;
        if ((techniqueDef.getLightMode() == TechniqueDef.LightMode.SinglePass || techniqueDef.getLightMode() == TechniqueDef.LightMode.SinglePassAndImageBased) && i10 > (i11 = this.singlePassLightBatchSize) && i11 < this.maxSinglePassLightBatchSize) {
            this.singlePassLightBatchSize = Math.min(FastMath.nearestPowerOfTwo(i10), this.maxSinglePassLightBatchSize);
        }
    }

    private void notifyRescale(ViewPort viewPort, float f10, float f11) {
        for (SceneProcessor sceneProcessor : viewPort.getProcessors()) {
            if (!sceneProcessor.isInitialized()) {
                sceneProcessor.initialize(this, viewPort);
            } else {
                sceneProcessor.rescale(viewPort, f10, f11);
            }
        }
    }

    private void notifyReshape(ViewPort viewPort, int i10, int i11) {
        for (SceneProcessor sceneProcessor : viewPort.getProcessors()) {
            if (!sceneProcessor.isInitialized()) {
                sceneProcessor.initialize(this, viewPort);
            } else {
                sceneProcessor.reshape(viewPort, i10, i11);
            }
        }
    }

    private void renderSubScene(Spatial spatial, ViewPort viewPort) {
        if (spatial.checkCulling(viewPort.getCamera())) {
            spatial.runControlRender(this, viewPort);
            if (spatial instanceof Node) {
                List<Spatial> children = ((Node) spatial).getChildren();
                int planeState = viewPort.getCamera().getPlaneState();
                for (int i10 = 0; i10 < children.size(); i10++) {
                    viewPort.getCamera().setPlaneState(planeState);
                    renderSubScene(children.get(i10), viewPort);
                }
                return;
            }
            if (spatial instanceof Geometry) {
                Geometry geometry = (Geometry) spatial;
                if (geometry.getMaterial() != null) {
                    viewPort.getQueue().addToQueue(geometry, spatial.getQueueBucket());
                    return;
                }
                throw new IllegalStateException("No material is set for Geometry: " + geometry.getName());
            }
        }
    }

    private void setViewPort(Camera camera) {
        if (camera != this.prevCam || camera.isViewportChanged()) {
            int viewPortLeft = (int) (camera.getViewPortLeft() * camera.getWidth());
            int viewPortBottom = (int) (camera.getViewPortBottom() * camera.getHeight());
            int viewPortRight = ((int) (camera.getViewPortRight() * camera.getWidth())) - viewPortLeft;
            int viewPortTop = ((int) (camera.getViewPortTop() * camera.getHeight())) - viewPortBottom;
            this.uniformBindingManager.setViewPort(viewPortLeft, viewPortBottom, viewPortRight, viewPortTop);
            this.renderer.setViewPort(viewPortLeft, viewPortBottom, viewPortRight, viewPortTop);
            this.renderer.setClipRect(viewPortLeft, viewPortBottom, viewPortRight, viewPortTop);
            camera.clearViewportChanged();
            this.prevCam = camera;
            this.orthoMatrix.loadIdentity();
            this.orthoMatrix.setTranslation(-1.0f, -1.0f, 0.0f);
            this.orthoMatrix.setScale(2.0f / camera.getWidth(), 2.0f / camera.getHeight(), 0.0f);
        }
    }

    private void setViewProjection(Camera camera, boolean z10) {
        if (!z10) {
            this.uniformBindingManager.setCamera(camera, camera.getViewMatrix(), camera.getProjectionMatrix(), camera.getViewProjectionMatrix());
            return;
        }
        UniformBindingManager uniformBindingManager = this.uniformBindingManager;
        Matrix4f matrix4f = Matrix4f.IDENTITY;
        Matrix4f matrix4f2 = this.orthoMatrix;
        uniformBindingManager.setCamera(camera, matrix4f, matrix4f2, matrix4f2);
    }

    public void addForcedMatParam(MatParamOverride matParamOverride) {
        this.forcedOverrides.add(matParamOverride);
    }

    public void applyViewPort(ViewPort viewPort) {
        this.renderer.setFrameBuffer(viewPort.getOutputFrameBuffer());
        setCamera(viewPort.getCamera(), false);
        if (viewPort.isClearDepth() || viewPort.isClearColor() || viewPort.isClearStencil()) {
            if (viewPort.isClearColor()) {
                this.renderer.setBackgroundColor(viewPort.getBackgroundColor());
            }
            this.renderer.clearBuffers(viewPort.isClearColor(), viewPort.isClearDepth(), viewPort.isClearStencil());
        }
    }

    public void clearQueue(ViewPort viewPort) {
        viewPort.getQueue().clear();
    }

    public ViewPort createMainView(String str, Camera camera) {
        ViewPort viewPort = new ViewPort(str, camera);
        this.viewPorts.add(viewPort);
        return viewPort;
    }

    public ViewPort createPostView(String str, Camera camera) {
        ViewPort viewPort = new ViewPort(str, camera);
        this.postViewPorts.add(viewPort);
        return viewPort;
    }

    public ViewPort createPreView(String str, Camera camera) {
        ViewPort viewPort = new ViewPort(str, camera);
        this.preViewPorts.add(viewPort);
        return viewPort;
    }

    public void flushQueue(ViewPort viewPort) {
        renderViewPortQueues(viewPort, true);
    }

    public <T extends PipelineContext> T getContext(Class<T> cls) {
        return (T) this.contexts.get(cls);
    }

    public Camera getCurrentCamera() {
        return this.prevCam;
    }

    public PipelineContext getDefaultContext() {
        return getContext(PipelineContext.class);
    }

    public SafeArrayList<MatParamOverride> getForcedMatParams() {
        return this.forcedOverrides;
    }

    public Material getForcedMaterial() {
        return this.forcedMaterial;
    }

    public RenderState getForcedRenderState() {
        return this.forcedRenderState;
    }

    public String getForcedTechnique() {
        return this.forcedTechnique;
    }

    public LightFilter getLightFilter() {
        return this.lightFilter;
    }

    public ViewPort getMainView(String str) {
        for (int i10 = 0; i10 < this.viewPorts.size(); i10++) {
            if (this.viewPorts.get(i10).getName().equals(str)) {
                return this.viewPorts.get(i10);
            }
        }
        return null;
    }

    public List<ViewPort> getMainViews() {
        return Collections.unmodifiableList(this.viewPorts);
    }

    public int getMaxSinglePassLightBatchSize() {
        return this.maxSinglePassLightBatchSize;
    }

    public <T extends PipelineContext> T getOrCreateContext(Class<T> cls, Supplier<T> supplier) {
        T t10 = (T) getContext(cls);
        if (t10 != null) {
            return t10;
        }
        T t11 = supplier.get();
        registerContext(cls, t11);
        return t11;
    }

    public boolean getPassDrawBufferTargetIdToShaders() {
        return this.forcedOverrides.contains(this.boundDrawBufferId);
    }

    public RenderPipeline<? extends PipelineContext> getPipeline() {
        return this.defaultPipeline;
    }

    public ViewPort getPostView(String str) {
        for (int i10 = 0; i10 < this.postViewPorts.size(); i10++) {
            if (this.postViewPorts.get(i10).getName().equals(str)) {
                return this.postViewPorts.get(i10);
            }
        }
        return null;
    }

    public List<ViewPort> getPostViews() {
        return Collections.unmodifiableList(this.postViewPorts);
    }

    public ViewPort getPreView(String str) {
        for (int i10 = 0; i10 < this.preViewPorts.size(); i10++) {
            if (this.preViewPorts.get(i10).getName().equals(str)) {
                return this.preViewPorts.get(i10);
            }
        }
        return null;
    }

    public List<ViewPort> getPreViews() {
        return Collections.unmodifiableList(this.preViewPorts);
    }

    public TechniqueDef.LightMode getPreferredLightMode() {
        return this.preferredLightMode;
    }

    public AppProfiler getProfiler() {
        return this.prof;
    }

    public Predicate<Geometry> getRenderFilter() {
        return this.renderFilter;
    }

    public Renderer getRenderer() {
        return this.renderer;
    }

    public int getSinglePassLightBatchSize() {
        return this.singlePassLightBatchSize;
    }

    public boolean isHandleTranslucentBucket() {
        return this.handleTranslucentBucket;
    }

    public void preloadScene(Spatial spatial) {
        int i10 = 0;
        if (spatial instanceof Node) {
            List<Spatial> children = ((Node) spatial).getChildren();
            while (i10 < children.size()) {
                preloadScene(children.get(i10));
                i10++;
            }
            return;
        }
        if (spatial instanceof Geometry) {
            Geometry geometry = (Geometry) spatial;
            if (geometry.getMaterial() == null) {
                throw new IllegalStateException("No material is set for Geometry: " + geometry.getName());
            }
            geometry.getMaterial().preload(this, geometry);
            Mesh mesh = geometry.getMesh();
            if (mesh == null || mesh.getVertexCount() == 0 || mesh.getTriangleCount() == 0) {
                return;
            }
            VertexBuffer[] array = mesh.getBufferList().getArray();
            int length = array.length;
            while (i10 < length) {
                VertexBuffer vertexBuffer = array[i10];
                if (vertexBuffer.getData() != null && vertexBuffer.getUsage() != VertexBuffer.Usage.CpuOnly) {
                    this.renderer.updateBufferData(vertexBuffer);
                }
                i10++;
            }
        }
    }

    public <T extends PipelineContext> void registerContext(Class<T> cls, T t10) {
        if (t10 == null) {
            throw new NullPointerException("Context to register cannot be null.");
        }
        this.contexts.put(cls, t10);
    }

    public void removeForcedMatParam(MatParamOverride matParamOverride) {
        this.forcedOverrides.remove(matParamOverride);
    }

    public boolean removeMainView(String str) {
        for (int i10 = 0; i10 < this.viewPorts.size(); i10++) {
            if (this.viewPorts.get(i10).getName().equals(str)) {
                this.viewPorts.remove(i10);
                return true;
            }
        }
        return false;
    }

    public boolean removePostView(String str) {
        for (int i10 = 0; i10 < this.postViewPorts.size(); i10++) {
            if (this.postViewPorts.get(i10).getName().equals(str)) {
                this.postViewPorts.remove(i10);
                return true;
            }
        }
        return false;
    }

    public boolean removePreView(String str) {
        for (int i10 = 0; i10 < this.preViewPorts.size(); i10++) {
            if (this.preViewPorts.get(i10).getName().equals(str)) {
                this.preViewPorts.remove(i10);
                return true;
            }
        }
        return false;
    }

    public void render(float f10, boolean z10) {
        if (this.renderer instanceof NullRenderer) {
            return;
        }
        this.uniformBindingManager.newFrame();
        AppProfiler appProfiler = this.prof;
        if (appProfiler != null) {
            appProfiler.appStep(AppStep.RenderPreviewViewPorts);
        }
        for (int i10 = 0; i10 < this.preViewPorts.size(); i10++) {
            ViewPort viewPort = this.preViewPorts.get(i10);
            if (viewPort.getOutputFrameBuffer() != null || z10) {
                renderViewPort(viewPort, f10);
            }
        }
        AppProfiler appProfiler2 = this.prof;
        if (appProfiler2 != null) {
            appProfiler2.appStep(AppStep.RenderMainViewPorts);
        }
        for (int i11 = 0; i11 < this.viewPorts.size(); i11++) {
            ViewPort viewPort2 = this.viewPorts.get(i11);
            if (viewPort2.getOutputFrameBuffer() != null || z10) {
                renderViewPort(viewPort2, f10);
            }
        }
        AppProfiler appProfiler3 = this.prof;
        if (appProfiler3 != null) {
            appProfiler3.appStep(AppStep.RenderPostViewPorts);
        }
        for (int i12 = 0; i12 < this.postViewPorts.size(); i12++) {
            ViewPort viewPort3 = this.postViewPorts.get(i12);
            if (viewPort3.getOutputFrameBuffer() != null || z10) {
                renderViewPort(viewPort3, f10);
            }
        }
        for (int i13 = 0; i13 < this.usedContexts.size(); i13++) {
            this.usedContexts.get(i13).endContextRenderFrame(this);
        }
        Iterator<RenderPipeline<? extends PipelineContext>> it = this.usedPipelines.iterator();
        while (it.hasNext()) {
            it.next().endRenderFrame(this);
        }
        this.usedContexts.clear();
        this.usedPipelines.clear();
    }

    public void renderGeometry(Geometry geometry) {
        Predicate<Geometry> predicate = this.renderFilter;
        if (predicate == null || predicate.test(geometry)) {
            LightList worldLightList = geometry.getWorldLightList();
            if (this.lightFilter != null) {
                this.filteredLightList.clear();
                this.lightFilter.filterLights(geometry, this.filteredLightList);
                worldLightList = this.filteredLightList;
            }
            renderGeometry(geometry, worldLightList);
        }
    }

    public void renderGeometryList(GeometryList geometryList) {
        for (int i10 = 0; i10 < geometryList.size(); i10++) {
            renderGeometry(geometryList.get(i10));
        }
    }

    public void renderScene(Spatial spatial, ViewPort viewPort) {
        viewPort.getCamera().setPlaneState(0);
        renderSubScene(spatial, viewPort);
    }

    public void renderTranslucentQueue(ViewPort viewPort) {
        AppProfiler appProfiler = this.prof;
        if (appProfiler != null) {
            appProfiler.vpStep(VpStep.RenderBucket, viewPort, RenderQueue.Bucket.Translucent);
        }
        RenderQueue queue = viewPort.getQueue();
        RenderQueue.Bucket bucket = RenderQueue.Bucket.Translucent;
        if (queue.isQueueEmpty(bucket) || !this.handleTranslucentBucket) {
            return;
        }
        queue.renderQueue(bucket, this, viewPort.getCamera(), true);
    }

    public void renderViewPort(ViewPort viewPort, float f10) {
        if (viewPort.isEnabled()) {
            RenderPipeline<? extends PipelineContext> pipeline = viewPort.getPipeline();
            if (pipeline == null) {
                pipeline = this.defaultPipeline;
            }
            PipelineContext fetchPipelineContext = pipeline.fetchPipelineContext(this);
            if (fetchPipelineContext == null) {
                throw new NullPointerException("Failed to fetch pipeline context.");
            }
            if (!fetchPipelineContext.startViewPortRender(this, viewPort)) {
                this.usedContexts.add(fetchPipelineContext);
            }
            if (!pipeline.hasRenderedThisFrame()) {
                this.usedPipelines.add(pipeline);
                pipeline.startRenderFrame(this);
            }
            pipeline.pipelineRender(this, fetchPipelineContext, viewPort, f10);
            fetchPipelineContext.endViewPortRender(this, viewPort);
        }
    }

    public void renderViewPortQueues(ViewPort viewPort, boolean z10) {
        boolean z11;
        RenderQueue queue = viewPort.getQueue();
        Camera camera = viewPort.getCamera();
        AppProfiler appProfiler = this.prof;
        if (appProfiler != null) {
            appProfiler.vpStep(VpStep.RenderBucket, viewPort, RenderQueue.Bucket.Opaque);
        }
        queue.renderQueue(RenderQueue.Bucket.Opaque, this, camera, z10);
        RenderQueue.Bucket bucket = RenderQueue.Bucket.Sky;
        boolean z12 = true;
        if (queue.isQueueEmpty(bucket)) {
            z11 = false;
        } else {
            AppProfiler appProfiler2 = this.prof;
            if (appProfiler2 != null) {
                appProfiler2.vpStep(VpStep.RenderBucket, viewPort, bucket);
            }
            this.renderer.setDepthRange(1.0f, 1.0f);
            queue.renderQueue(bucket, this, camera, z10);
            z11 = true;
        }
        RenderQueue.Bucket bucket2 = RenderQueue.Bucket.Transparent;
        if (!queue.isQueueEmpty(bucket2)) {
            AppProfiler appProfiler3 = this.prof;
            if (appProfiler3 != null) {
                appProfiler3.vpStep(VpStep.RenderBucket, viewPort, bucket2);
            }
            if (z11) {
                this.renderer.setDepthRange(0.0f, 1.0f);
                z11 = false;
            }
            queue.renderQueue(bucket2, this, camera, z10);
        }
        RenderQueue.Bucket bucket3 = RenderQueue.Bucket.Gui;
        if (queue.isQueueEmpty(bucket3)) {
            z12 = z11;
        } else {
            AppProfiler appProfiler4 = this.prof;
            if (appProfiler4 != null) {
                appProfiler4.vpStep(VpStep.RenderBucket, viewPort, bucket3);
            }
            this.renderer.setDepthRange(0.0f, 0.0f);
            setCamera(camera, true);
            queue.renderQueue(bucket3, this, camera, z10);
            setCamera(camera, false);
        }
        if (z12) {
            this.renderer.setDepthRange(0.0f, 1.0f);
        }
    }

    public void renderViewPortRaw(ViewPort viewPort) {
        setCamera(viewPort.getCamera(), false);
        SafeArrayList<Spatial> scenes = viewPort.getScenes();
        for (int size = scenes.size() - 1; size >= 0; size--) {
            renderScene(scenes.get(size), viewPort);
        }
        flushQueue(viewPort);
    }

    public void setAlphaToCoverage(boolean z10) {
        this.renderer.setAlphaToCoverage(z10);
    }

    public void setAppProfiler(AppProfiler appProfiler) {
        this.prof = appProfiler;
    }

    public void setCamera(Camera camera, boolean z10) {
        LightFilter lightFilter = this.lightFilter;
        if (lightFilter != null) {
            lightFilter.setCamera(camera);
        }
        setViewPort(camera);
        setViewProjection(camera, z10);
    }

    public void setForcedMaterial(Material material) {
        this.forcedMaterial = material;
    }

    public void setForcedRenderState(RenderState renderState) {
        this.forcedRenderState = renderState;
    }

    public void setForcedTechnique(String str) {
        this.forcedTechnique = str;
    }

    public void setHandleTranslucentBucket(boolean z10) {
        this.handleTranslucentBucket = z10;
    }

    public void setLightFilter(LightFilter lightFilter) {
        this.lightFilter = lightFilter;
    }

    public void setMaxSinglePassLightBatchSize(int i10) {
        this.maxSinglePassLightBatchSize = Math.max(i10, 1);
        Integer num = this.renderer.getLimits().get(Limits.FragmentUniformVectors);
        if (num != null && num.intValue() > 0) {
            int max = Math.max((num.intValue() - Math.min(Math.max(num.intValue() / 4, 1), 16)) / 3, 1);
            if (this.maxSinglePassLightBatchSize > 16 && max < 16) {
                logger.log(Level.WARNING, "setMaxSinglePassLightBatchSize({0}) was requested but hardware only supports {1} lights per pass (FragmentUniformVectors={2}); clamping to {1}.", new Object[]{Integer.valueOf(i10), Integer.valueOf(max), num});
            }
            this.maxSinglePassLightBatchSize = Math.min(this.maxSinglePassLightBatchSize, max);
        }
        int i11 = this.singlePassLightBatchSize;
        int i12 = this.maxSinglePassLightBatchSize;
        if (i11 > i12) {
            this.singlePassLightBatchSize = i12;
        }
    }

    public void setPassDrawBufferTargetIdToShaders(boolean z10) {
        if (!z10) {
            this.forcedOverrides.remove(this.boundDrawBufferId);
        } else {
            if (this.forcedOverrides.contains(this.boundDrawBufferId)) {
                return;
            }
            this.forcedOverrides.add(this.boundDrawBufferId);
        }
    }

    public void setPipeline(RenderPipeline<? extends PipelineContext> renderPipeline) {
        this.defaultPipeline = renderPipeline;
    }

    public void setPreferredLightMode(TechniqueDef.LightMode lightMode) {
        this.preferredLightMode = lightMode;
    }

    public void setRenderFilter(Predicate<Geometry> predicate) {
        this.renderFilter = predicate;
    }

    public void setSinglePassLightBatchSize(int i10) {
        int max = Math.max(i10, 1);
        this.singlePassLightBatchSize = max;
        this.maxSinglePassLightBatchSize = max;
    }

    public void setTimer(Timer timer) {
        this.uniformBindingManager.setTimer(timer);
    }

    public void setWorldMatrix(Matrix4f matrix4f) {
        this.uniformBindingManager.setWorldMatrix(matrix4f);
    }

    public void updateUniformBindings(Shader shader) {
        this.uniformBindingManager.updateUniformBindings(shader);
    }

    public <T extends PipelineContext> T getOrCreateContext(Class<T> cls, Function<RenderManager, T> function) {
        T t10 = (T) getContext(cls);
        if (t10 != null) {
            return t10;
        }
        T apply = function.apply(this);
        registerContext(cls, apply);
        return apply;
    }

    public boolean removeMainView(ViewPort viewPort) {
        return this.viewPorts.remove(viewPort);
    }

    public boolean removePostView(ViewPort viewPort) {
        return this.postViewPorts.remove(viewPort);
    }

    public boolean removePreView(ViewPort viewPort) {
        return this.preViewPorts.remove(viewPort);
    }

    public void notifyRescale(float f10, float f11) {
        Iterator<ViewPort> it = this.preViewPorts.iterator();
        while (it.hasNext()) {
            notifyRescale(it.next(), f10, f11);
        }
        Iterator<ViewPort> it2 = this.viewPorts.iterator();
        while (it2.hasNext()) {
            notifyRescale(it2.next(), f10, f11);
        }
        Iterator<ViewPort> it3 = this.postViewPorts.iterator();
        while (it3.hasNext()) {
            notifyRescale(it3.next(), f10, f11);
        }
    }

    public void notifyReshape(int i10, int i11) {
        Iterator<ViewPort> it = this.preViewPorts.iterator();
        while (it.hasNext()) {
            ViewPort next = it.next();
            if (next.getOutputFrameBuffer() == null) {
                next.getCamera().resize(i10, i11, true);
            }
            notifyReshape(next, i10, i11);
        }
        Iterator<ViewPort> it2 = this.viewPorts.iterator();
        while (it2.hasNext()) {
            ViewPort next2 = it2.next();
            if (next2.getOutputFrameBuffer() == null) {
                next2.getCamera().resize(i10, i11, true);
            }
            notifyReshape(next2, i10, i11);
        }
        Iterator<ViewPort> it3 = this.postViewPorts.iterator();
        while (it3.hasNext()) {
            ViewPort next3 = it3.next();
            if (next3.getOutputFrameBuffer() == null) {
                next3.getCamera().resize(i10, i11, true);
            }
            notifyReshape(next3, i10, i11);
        }
    }

    public void renderGeometry(Geometry geometry, LightList lightList) {
        String str;
        Predicate<Geometry> predicate = this.renderFilter;
        if (predicate == null || predicate.test(geometry)) {
            this.renderer.pushDebugGroup(geometry.getName());
            if (geometry.isIgnoreTransform()) {
                setWorldMatrix(Matrix4f.IDENTITY);
            } else {
                setWorldMatrix(geometry.getWorldMatrix());
            }
            FrameBuffer currentFrameBuffer = this.renderer.getCurrentFrameBuffer();
            if (currentFrameBuffer != null && !currentFrameBuffer.isMultiTarget()) {
                this.boundDrawBufferId.setValue(Integer.valueOf(currentFrameBuffer.getTargetIndex()));
            }
            Material material = geometry.getMaterial();
            if (this.forcedTechnique != null) {
                if (material.getMaterialDef().getTechniqueDefs(this.forcedTechnique) != null) {
                    Technique activeTechnique = material.getActiveTechnique();
                    if (activeTechnique != null) {
                        str = activeTechnique.getDef().getName();
                    } else {
                        str = "Default";
                    }
                    geometry.getMaterial().selectTechnique(this.forcedTechnique, this);
                    RenderState renderState = this.forcedRenderState;
                    if (geometry.getMaterial().getActiveTechnique().getDef().getForcedRenderState() != null) {
                        this.forcedRenderState = geometry.getMaterial().getActiveTechnique().getDef().getForcedRenderState();
                    }
                    material.render(geometry, lightList, this);
                    maybeResizeLightBatch(geometry.getMaterial().getActiveTechnique().getDef(), lightList.size());
                    material.selectTechnique(str, this);
                    this.forcedRenderState = renderState;
                } else {
                    Material material2 = this.forcedMaterial;
                    if (material2 != null) {
                        material2.render(geometry, lightList, this);
                        maybeResizeLightBatch(this.forcedMaterial.getActiveTechnique().getDef(), lightList.size());
                    }
                }
            } else {
                Material material3 = this.forcedMaterial;
                if (material3 != null) {
                    material3.render(geometry, lightList, this);
                    maybeResizeLightBatch(this.forcedMaterial.getActiveTechnique().getDef(), lightList.size());
                } else {
                    material.render(geometry, lightList, this);
                    maybeResizeLightBatch(geometry.getMaterial().getActiveTechnique().getDef(), lightList.size());
                }
            }
            this.renderer.popDebugGroup();
        }
    }
}
