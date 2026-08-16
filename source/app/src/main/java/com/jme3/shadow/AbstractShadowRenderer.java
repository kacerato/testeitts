package com.jme3.shadow;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.light.LightFilter;
import com.jme3.light.NullLightFilter;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.post.SceneProcessor;
import com.jme3.profile.AppProfiler;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.GeometryList;
import com.jme3.renderer.queue.OpaqueComparator;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.debug.WireFrustum;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.Texture2D;
import com.jme3.ui.Picture;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public abstract class AbstractShadowRenderer implements SceneProcessor, Savable, JmeCloneable {
    protected AssetManager assetManager;
    protected boolean debug;
    protected boolean debugfrustums;
    protected Picture[] dispPic;
    protected Texture2D dummyTex;
    protected EdgeFilteringMode edgeFilteringMode;
    protected float edgesThickness;
    protected Vector2f fadeInfo;
    protected float fadeLength;
    protected RenderState forcedRenderState;
    protected Camera frustumCam;
    protected GeometryList lightReceivers;
    protected Matrix4f[] lightViewProjectionsMatrices;
    private String[] lightViewStringCache;
    protected List<Material> matCache;
    protected int nbShadowMaps;
    protected boolean needsfallBackMaterial;
    protected String postTechniqueName;
    protected Material postshadowMat;
    protected Material preshadowMat;
    protected AppProfiler prof;
    protected boolean renderBackFacesShadows;
    protected RenderManager renderManager;
    protected CompareMode shadowCompareMode;
    protected FrameBuffer[] shadowFB;
    protected float shadowIntensity;
    protected GeometryList shadowMapOccluders;
    protected float shadowMapSize;
    protected String[] shadowMapStringCache;
    protected Texture2D[] shadowMaps;
    protected boolean skipPostPass;
    protected ViewPort viewPort;
    protected float zFarOverride;
    protected static final Logger logger = Logger.getLogger(AbstractShadowRenderer.class.getName());
    private static final LightFilter NULL_LIGHT_FILTER = new NullLightFilter();

    public AbstractShadowRenderer() {
        this.nbShadowMaps = 1;
        this.shadowIntensity = 0.7f;
        this.debug = false;
        this.edgesThickness = 1.0f;
        this.edgeFilteringMode = EdgeFilteringMode.Bilinear;
        this.shadowCompareMode = CompareMode.Hardware;
        this.forcedRenderState = new RenderState();
        this.renderBackFacesShadows = true;
        this.debugfrustums = false;
        this.needsfallBackMaterial = false;
        this.postTechniqueName = "PostShadow";
        this.matCache = new ArrayList();
        this.lightReceivers = new GeometryList(new OpaqueComparator());
        this.shadowMapOccluders = new GeometryList(new OpaqueComparator());
        this.zFarOverride = 0.0f;
    }

    private void buildMatCache(GeometryList geometryList) {
        this.matCache.clear();
        for (int i10 = 0; i10 < geometryList.size(); i10++) {
            Material material = geometryList.get(i10).getMaterial();
            if (material.getMaterialDef().getTechniqueDefs(this.postTechniqueName) == null) {
                this.needsfallBackMaterial = true;
            } else if (!this.matCache.contains(material)) {
                this.matCache.add(material);
            }
        }
    }

    private void clearMatParams() {
        for (Material material : this.matCache) {
            for (int i10 = 1; i10 < this.nbShadowMaps; i10++) {
                material.clearParam(this.lightViewStringCache[i10]);
            }
            for (int i11 = 1; i11 < this.nbShadowMaps; i11++) {
                material.clearParam(this.shadowMapStringCache[i11]);
            }
            material.clearParam("FadeInfo");
            clearMaterialParameters(material);
        }
    }

    private void init(AssetManager assetManager, int i10, int i11) {
        this.postshadowMat = new Material(assetManager, "Common/MatDefs/Shadow/PostShadow.j3md");
        this.shadowFB = new FrameBuffer[i10];
        this.shadowMaps = new Texture2D[i10];
        this.dispPic = new Picture[i10];
        this.lightViewProjectionsMatrices = new Matrix4f[i10];
        this.shadowMapStringCache = new String[i10];
        this.lightViewStringCache = new String[i10];
        this.dummyTex = new Texture2D(i11, i11, Image.Format.RGBA8);
        this.preshadowMat = new Material(assetManager, "Common/MatDefs/Shadow/PreShadow.j3md");
        this.postshadowMat.setFloat("ShadowMapSize", i11);
        for (int i12 = 0; i12 < i10; i12++) {
            this.lightViewProjectionsMatrices[i12] = new Matrix4f();
            this.shadowFB[i12] = new FrameBuffer(i11, i11, 1);
            this.shadowMaps[i12] = new Texture2D(i11, i11, Image.Format.Depth);
            this.shadowFB[i12].setDepthTarget(FrameBuffer.FrameBufferTarget.newTarget(this.shadowMaps[i12]));
            this.shadowFB[i12].addColorTarget(FrameBuffer.FrameBufferTarget.newTarget(this.dummyTex));
            this.shadowMapStringCache[i12] = "ShadowMap" + i12;
            this.lightViewStringCache[i12] = "LightViewProjectionMatrix" + i12;
            this.postshadowMat.setTexture(this.shadowMapStringCache[i12], this.shadowMaps[i12]);
            this.dispPic[i12] = new Picture("Picture" + i12);
            this.dispPic[i12].setTexture(assetManager, this.shadowMaps[i12], false);
        }
        setShadowCompareMode(this.shadowCompareMode);
        setEdgeFilteringMode(this.edgeFilteringMode);
        setShadowIntensity(this.shadowIntensity);
        initForcedRenderState();
        setRenderBackFacesShadows(isRenderBackFacesShadows());
    }

    private void setMatParams(GeometryList geometryList) {
        buildMatCache(geometryList);
        for (Material material : this.matCache) {
            material.setFloat("ShadowMapSize", this.shadowMapSize);
            for (int i10 = 0; i10 < this.nbShadowMaps; i10++) {
                material.setMatrix4(this.lightViewStringCache[i10], this.lightViewProjectionsMatrices[i10]);
            }
            for (int i11 = 0; i11 < this.nbShadowMaps; i11++) {
                material.setTexture(this.shadowMapStringCache[i11], this.shadowMaps[i11]);
            }
            material.setBoolean("HardwareShadows", this.shadowCompareMode == CompareMode.Hardware);
            material.setInt("FilterMode", this.edgeFilteringMode.getMaterialParamValue());
            material.setFloat("PCFEdge", this.edgesThickness);
            material.setFloat("ShadowIntensity", this.shadowIntensity);
            material.setBoolean("BackfaceShadows", this.renderBackFacesShadows);
            Vector2f vector2f = this.fadeInfo;
            if (vector2f != null) {
                material.setVector2("FadeInfo", vector2f);
            }
            setMaterialParameters(material);
        }
        if (this.needsfallBackMaterial) {
            setPostShadowParams();
        }
    }

    public abstract boolean checkCulling(Camera camera);

    @Override
    public void cleanup() {
    }

    public abstract void clearMaterialParameters(Material material);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.forcedRenderState = (RenderState) cloner.clone(this.forcedRenderState);
        init(this.assetManager, this.nbShadowMaps, (int) this.shadowMapSize);
    }

    public Geometry createFrustum(Vector3f[] vector3fArr, int i10) {
        Geometry geometry = new Geometry("WireFrustum" + i10, new WireFrustum(vector3fArr));
        Material material = new Material(this.assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
        material.getAdditionalRenderState().setWireframe(true);
        geometry.setMaterial(material);
        geometry.setCullHint(Spatial.CullHint.Never);
        geometry.setShadowMode(RenderQueue.ShadowMode.Off);
        if (i10 == 0) {
            material.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Pink);
        } else if (i10 == 1) {
            material.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Red);
        } else if (i10 == 2) {
            material.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Green);
        } else if (i10 != 3) {
            material.setColor(SerializableShaderEntry.f81153g, ColorRGBA.White);
        } else {
            material.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Blue);
        }
        geometry.updateGeometricState();
        return geometry;
    }

    public void displayDebug() {
        this.debug = true;
    }

    public void displayFrustum() {
        this.debugfrustums = true;
    }

    public void displayShadowMap(Renderer renderer) {
        Camera camera = this.viewPort.getCamera();
        this.renderManager.setCamera(camera, true);
        int height = camera.getHeight();
        int i10 = 0;
        while (true) {
            Picture[] pictureArr = this.dispPic;
            if (i10 >= pictureArr.length) {
                this.renderManager.setCamera(camera, false);
                return;
            }
            pictureArr[i10].setPosition((i10 * 128) + (r5 * 64) + 150, height / 20.0f);
            this.dispPic[i10].setWidth(128.0f);
            this.dispPic[i10].setHeight(128.0f);
            this.dispPic[i10].updateGeometricState();
            this.renderManager.renderGeometry(this.dispPic[i10]);
            i10++;
        }
    }

    public void doDisplayFrustumDebug(int i10) {
    }

    public EdgeFilteringMode getEdgeFilteringMode() {
        return this.edgeFilteringMode;
    }

    public int getEdgesThickness() {
        return (int) (this.edgesThickness * 10.0f);
    }

    public int getNumShadowMaps() {
        return this.nbShadowMaps;
    }

    public abstract GeometryList getOccludersToRender(int i10, GeometryList geometryList);

    public RenderState getPreShadowForcedRenderState() {
        return this.forcedRenderState;
    }

    public abstract void getReceivers(GeometryList geometryList);

    public Node getSceneForDebug() {
        return (Node) this.viewPort.getScenes().get(0);
    }

    public abstract Camera getShadowCam(int i10);

    public CompareMode getShadowCompareMode() {
        return this.shadowCompareMode;
    }

    public float getShadowIntensity() {
        return this.shadowIntensity;
    }

    public int getShadowMapSize() {
        return (int) this.shadowMapSize;
    }

    public float getShadowZExtend() {
        return this.zFarOverride;
    }

    public float getShadowZFadeLength() {
        Vector2f vector2f = this.fadeInfo;
        if (vector2f != null) {
            return this.zFarOverride - vector2f.f81609x;
        }
        return 0.0f;
    }

    public void initForcedRenderState() {
        this.forcedRenderState.setFaceCullMode(RenderState.FaceCullMode.Front);
        this.forcedRenderState.setColorWrite(false);
        this.forcedRenderState.setDepthWrite(true);
        this.forcedRenderState.setDepthTest(true);
    }

    public abstract void initFrustumCam();

    @Override
    public void initialize(RenderManager renderManager, ViewPort viewPort) {
        this.renderManager = renderManager;
        this.viewPort = viewPort;
        this.postTechniqueName = "PostShadow";
        if (this.zFarOverride <= 0.0f || this.frustumCam != null) {
            return;
        }
        initFrustumCam();
    }

    @Deprecated
    public boolean isFlushQueues() {
        return false;
    }

    @Override
    public boolean isInitialized() {
        return this.viewPort != null;
    }

    public boolean isRenderBackFacesShadows() {
        return this.renderBackFacesShadows;
    }

    @Override
    public Object jmeClone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public void postFrame(FrameBuffer frameBuffer) {
        if (this.skipPostPass) {
            return;
        }
        if (this.debug) {
            displayShadowMap(this.renderManager.getRenderer());
        }
        getReceivers(this.lightReceivers);
        if (this.lightReceivers.size() != 0) {
            setMatParams(this.lightReceivers);
            Camera camera = this.viewPort.getCamera();
            if (this.needsfallBackMaterial) {
                this.renderManager.setForcedMaterial(this.postshadowMat);
            }
            this.renderManager.setForcedTechnique(this.postTechniqueName);
            this.viewPort.getQueue().renderShadowQueue(this.lightReceivers, this.renderManager, camera, false);
            this.renderManager.setForcedTechnique(null);
            this.renderManager.setForcedMaterial(null);
            this.renderManager.setCamera(camera, false);
            clearMatParams();
        }
    }

    @Override
    public void postQueue(RenderQueue renderQueue) {
        this.lightReceivers.clear();
        this.skipPostPass = false;
        if (!checkCulling(this.viewPort.getCamera())) {
            this.skipPostPass = true;
            return;
        }
        updateShadowCams(this.viewPort.getCamera());
        Renderer renderer = this.renderManager.getRenderer();
        this.renderManager.setForcedMaterial(this.preshadowMat);
        this.renderManager.setForcedTechnique("PreShadow");
        for (int i10 = 0; i10 < this.nbShadowMaps; i10++) {
            if (this.debugfrustums) {
                doDisplayFrustumDebug(i10);
            }
            renderShadowMap(i10);
        }
        if (this.debugfrustums) {
            this.debugfrustums = false;
            getSceneForDebug().updateGeometricState();
        }
        renderer.setFrameBuffer(this.viewPort.getOutputFrameBuffer());
        this.renderManager.setForcedMaterial(null);
        this.renderManager.setForcedTechnique(null);
        this.renderManager.setCamera(this.viewPort.getCamera(), false);
    }

    @Override
    public void preFrame(float f10) {
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.assetManager = jmeImporter.getAssetManager();
        this.nbShadowMaps = capsule.readInt("nbShadowMaps", 1);
        this.shadowMapSize = capsule.readFloat("shadowMapSize", 0.0f);
        this.shadowIntensity = capsule.readFloat("shadowIntensity", 0.7f);
        this.edgeFilteringMode = (EdgeFilteringMode) capsule.readEnum("edgeFilteringMode", EdgeFilteringMode.class, EdgeFilteringMode.Bilinear);
        this.shadowCompareMode = (CompareMode) capsule.readEnum("shadowCompareMode", CompareMode.class, CompareMode.Hardware);
        init(this.assetManager, this.nbShadowMaps, (int) this.shadowMapSize);
        float readFloat = capsule.readFloat("edgesThickness", 1.0f);
        this.edgesThickness = readFloat;
        this.postshadowMat.setFloat("PCFEdge", readFloat);
    }

    public void renderShadowMap(int i10) {
        this.shadowMapOccluders = getOccludersToRender(i10, this.shadowMapOccluders);
        Camera shadowCam = getShadowCam(i10);
        this.lightViewProjectionsMatrices[i10].set(shadowCam.getViewProjectionMatrix());
        this.renderManager.setCamera(shadowCam, false);
        this.renderManager.getRenderer().setFrameBuffer(this.shadowFB[i10]);
        this.renderManager.getRenderer().clearBuffers(true, true, true);
        this.renderManager.setForcedRenderState(this.forcedRenderState);
        LightFilter lightFilter = this.renderManager.getLightFilter();
        this.renderManager.setLightFilter(NULL_LIGHT_FILTER);
        this.viewPort.getQueue().renderShadowQueue(this.shadowMapOccluders, this.renderManager, shadowCam, true);
        this.renderManager.setLightFilter(lightFilter);
        this.renderManager.setForcedRenderState(null);
    }

    @Override
    public void reshape(ViewPort viewPort, int i10, int i11) {
    }

    public final void setEdgeFilteringMode(EdgeFilteringMode edgeFilteringMode) {
        if (edgeFilteringMode == null) {
            throw new IllegalArgumentException("filterMode cannot be null");
        }
        this.edgeFilteringMode = edgeFilteringMode;
        this.postshadowMat.setInt("FilterMode", edgeFilteringMode.getMaterialParamValue());
        this.postshadowMat.setFloat("PCFEdge", this.edgesThickness);
        if (this.shadowCompareMode == CompareMode.Hardware) {
            for (Texture2D texture2D : this.shadowMaps) {
                if (edgeFilteringMode == EdgeFilteringMode.Bilinear) {
                    texture2D.setMagFilter(Texture.MagFilter.Bilinear);
                    texture2D.setMinFilter(Texture.MinFilter.BilinearNoMipMaps);
                } else {
                    texture2D.setMagFilter(Texture.MagFilter.Nearest);
                    texture2D.setMinFilter(Texture.MinFilter.NearestNoMipMaps);
                }
            }
        }
    }

    public void setEdgesThickness(int i10) {
        float max = Math.max(1, Math.min(i10, 10)) * 0.1f;
        this.edgesThickness = max;
        this.postshadowMat.setFloat("PCFEdge", max);
    }

    public abstract void setMaterialParameters(Material material);

    public final void setPostShadowMaterial(Material material) {
        this.postshadowMat = material;
        material.setFloat("ShadowMapSize", this.shadowMapSize);
        for (int i10 = 0; i10 < this.nbShadowMaps; i10++) {
            this.postshadowMat.setTexture(this.shadowMapStringCache[i10], this.shadowMaps[i10]);
        }
        setShadowCompareMode(this.shadowCompareMode);
        setEdgeFilteringMode(this.edgeFilteringMode);
        setShadowIntensity(this.shadowIntensity);
    }

    public void setPostShadowParams() {
        setMaterialParameters(this.postshadowMat);
        for (int i10 = 0; i10 < this.nbShadowMaps; i10++) {
            this.postshadowMat.setMatrix4(this.lightViewStringCache[i10], this.lightViewProjectionsMatrices[i10]);
            this.postshadowMat.setTexture(this.shadowMapStringCache[i10], this.shadowMaps[i10]);
        }
        Vector2f vector2f = this.fadeInfo;
        if (vector2f != null) {
            this.postshadowMat.setVector2("FadeInfo", vector2f);
        }
        this.postshadowMat.setBoolean("BackfaceShadows", this.renderBackFacesShadows);
    }

    @Override
    public void setProfiler(AppProfiler appProfiler) {
        this.prof = appProfiler;
    }

    public void setRenderBackFacesShadows(boolean z10) {
        this.renderBackFacesShadows = z10;
        if (z10) {
            getPreShadowForcedRenderState().setPolyOffset(5.0f, 3.0f);
            getPreShadowForcedRenderState().setFaceCullMode(RenderState.FaceCullMode.Back);
        } else {
            getPreShadowForcedRenderState().setPolyOffset(0.0f, 0.0f);
            getPreShadowForcedRenderState().setFaceCullMode(RenderState.FaceCullMode.Front);
        }
    }

    public final void setShadowCompareMode(CompareMode compareMode) {
        if (compareMode == null) {
            throw new IllegalArgumentException("Shadow compare mode cannot be null");
        }
        this.shadowCompareMode = compareMode;
        for (Texture2D texture2D : this.shadowMaps) {
            if (compareMode == CompareMode.Hardware) {
                texture2D.setShadowCompareMode(Texture.ShadowCompareMode.LessOrEqual);
                if (this.edgeFilteringMode == EdgeFilteringMode.Bilinear) {
                    texture2D.setMagFilter(Texture.MagFilter.Bilinear);
                    texture2D.setMinFilter(Texture.MinFilter.BilinearNoMipMaps);
                } else {
                    texture2D.setMagFilter(Texture.MagFilter.Nearest);
                    texture2D.setMinFilter(Texture.MinFilter.NearestNoMipMaps);
                }
            } else {
                texture2D.setShadowCompareMode(Texture.ShadowCompareMode.Off);
                texture2D.setMagFilter(Texture.MagFilter.Nearest);
                texture2D.setMinFilter(Texture.MinFilter.NearestNoMipMaps);
            }
        }
        this.postshadowMat.setBoolean("HardwareShadows", compareMode == CompareMode.Hardware);
    }

    public final void setShadowIntensity(float f10) {
        this.shadowIntensity = f10;
        this.postshadowMat.setFloat("ShadowIntensity", f10);
    }

    public void setShadowZExtend(float f10) {
        this.zFarOverride = f10;
        if (f10 == 0.0f) {
            this.fadeInfo = null;
            this.frustumCam = null;
            return;
        }
        Vector2f vector2f = this.fadeInfo;
        if (vector2f != null) {
            float f11 = this.fadeLength;
            vector2f.set(f10 - f11, 1.0f / f11);
        }
        if (this.frustumCam != null || this.viewPort == null) {
            return;
        }
        initFrustumCam();
    }

    public void setShadowZFadeLength(float f10) {
        if (f10 == 0.0f) {
            this.fadeInfo = null;
            this.fadeLength = 0.0f;
            this.postshadowMat.clearParam("FadeInfo");
        } else {
            if (this.zFarOverride == 0.0f) {
                this.fadeInfo = new Vector2f(0.0f, 0.0f);
            } else {
                this.fadeInfo = new Vector2f(this.zFarOverride - f10, 1.0f / f10);
            }
            this.fadeLength = f10;
            this.postshadowMat.setVector2("FadeInfo", this.fadeInfo);
        }
    }

    public abstract void updateShadowCams(Camera camera);

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.nbShadowMaps, "nbShadowMaps", 1);
        capsule.write(this.shadowMapSize, "shadowMapSize", 0.0f);
        capsule.write(this.shadowIntensity, "shadowIntensity", 0.7f);
        capsule.write(this.edgeFilteringMode, "edgeFilteringMode", EdgeFilteringMode.Bilinear);
        capsule.write(this.shadowCompareMode, "shadowCompareMode", CompareMode.Hardware);
        capsule.write(this.edgesThickness, "edgesThickness", 1.0f);
    }

    public AbstractShadowRenderer(AssetManager assetManager, int i10, int i11) {
        this.nbShadowMaps = 1;
        this.shadowIntensity = 0.7f;
        this.debug = false;
        this.edgesThickness = 1.0f;
        this.edgeFilteringMode = EdgeFilteringMode.Bilinear;
        this.shadowCompareMode = CompareMode.Hardware;
        this.forcedRenderState = new RenderState();
        this.renderBackFacesShadows = true;
        this.debugfrustums = false;
        this.needsfallBackMaterial = false;
        this.postTechniqueName = "PostShadow";
        this.matCache = new ArrayList();
        this.lightReceivers = new GeometryList(new OpaqueComparator());
        this.shadowMapOccluders = new GeometryList(new OpaqueComparator());
        this.zFarOverride = 0.0f;
        this.assetManager = assetManager;
        this.shadowMapSize = i10;
        this.nbShadowMaps = i11;
        init(assetManager, i11, i10);
    }
}
