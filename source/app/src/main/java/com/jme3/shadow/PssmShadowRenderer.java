package com.jme3.shadow;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.light.LightFilter;
import com.jme3.light.NullLightFilter;
import com.jme3.material.Material;
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
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Deprecated
public class PssmShadowRenderer implements SceneProcessor {
    private static final LightFilter NULL_LIGHT_FILTER = new NullLightFilter();
    protected boolean applyFadeInfo;
    protected boolean applyFilterMode;
    protected boolean applyHWShadows;
    protected boolean applyPCFEdge;
    protected boolean applyShadowIntensity;
    protected AssetManager assetManager;
    protected CompareMode compareMode;
    protected boolean debug;
    boolean debugfrustums;
    protected Vector3f direction;
    protected Picture[] dispPic;
    protected Texture2D dummyTex;
    protected float edgesThickness;
    protected Vector2f fadeInfo;
    protected float fadeLength;
    protected FilterMode filterMode;
    protected boolean flushQueues;
    protected float lambda;
    protected GeometryList lightReceivers;
    protected Matrix4f[] lightViewProjectionsMatrices;
    protected List<Material> matCache;
    protected int nbSplits;
    protected boolean needsfallBackMaterial;
    protected boolean noOccluders;
    protected Vector3f[] points;
    protected String postTechniqueName;
    protected Material postshadowMat;
    protected Material preshadowMat;
    protected RenderManager renderManager;
    protected Camera shadowCam;
    protected FrameBuffer[] shadowFB;
    protected float shadowIntensity;
    protected float shadowMapSize;
    protected Texture2D[] shadowMaps;
    protected GeometryList splitOccluders;
    protected ColorRGBA splits;
    protected float[] splitsArray;
    protected ViewPort viewPort;
    protected float zFarOverride;

    @Deprecated
    public enum CompareMode {
        Software,
        Hardware
    }

    @Deprecated
    public enum FilterMode {
        Nearest,
        Bilinear,
        Dither,
        PCF4,
        PCFPOISSON,
        PCF8
    }

    public PssmShadowRenderer(AssetManager assetManager, int i10, int i11) {
        this(assetManager, i10, i11, new Material(assetManager, "Common/MatDefs/Shadow/PostShadow.j3md"));
    }

    private Geometry createFrustum(Vector3f[] vector3fArr, int i10) {
        Geometry geometry = new Geometry("f", new WireFrustum(vector3fArr));
        geometry.setCullHint(Spatial.CullHint.Never);
        geometry.setShadowMode(RenderQueue.ShadowMode.Off);
        Material material = new Material(this.assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
        material.getAdditionalRenderState().setWireframe(true);
        geometry.setMaterial(material);
        if (i10 == 0) {
            geometry.getMaterial().setColor(SerializableShaderEntry.f81153g, ColorRGBA.Pink);
        } else if (i10 == 1) {
            geometry.getMaterial().setColor(SerializableShaderEntry.f81153g, ColorRGBA.Red);
        } else if (i10 == 2) {
            geometry.getMaterial().setColor(SerializableShaderEntry.f81153g, ColorRGBA.Green);
        } else if (i10 != 3) {
            geometry.getMaterial().setColor(SerializableShaderEntry.f81153g, ColorRGBA.White);
        } else {
            geometry.getMaterial().setColor(SerializableShaderEntry.f81153g, ColorRGBA.Blue);
        }
        geometry.updateGeometricState();
        return geometry;
    }

    private void setMatParams() {
        GeometryList geometryList = this.lightReceivers;
        this.matCache.clear();
        for (int i10 = 0; i10 < geometryList.size(); i10++) {
            Material material = geometryList.get(i10).getMaterial();
            if (material.getMaterialDef().getTechniqueDefs(this.postTechniqueName) == null) {
                this.needsfallBackMaterial = true;
            } else if (!this.matCache.contains(material)) {
                this.matCache.add(material);
            }
        }
        for (Material material2 : this.matCache) {
            material2.setColor("Splits", this.splits);
            material2.setFloat("ShadowMapSize", this.shadowMapSize);
            for (int i11 = 0; i11 < this.nbSplits; i11++) {
                material2.setMatrix4("LightViewProjectionMatrix" + i11, this.lightViewProjectionsMatrices[i11]);
            }
            for (int i12 = 0; i12 < this.nbSplits; i12++) {
                material2.setTexture("ShadowMap" + i12, this.shadowMaps[i12]);
            }
            material2.setBoolean("HardwareShadows", this.compareMode == CompareMode.Hardware);
            material2.setInt("FilterMode", this.filterMode.ordinal());
            material2.setFloat("PCFEdge", this.edgesThickness);
            material2.setFloat("ShadowIntensity", this.shadowIntensity);
            Vector2f vector2f = this.fadeInfo;
            if (vector2f != null) {
                material2.setVector2("FadeInfo", vector2f);
            }
        }
        this.applyHWShadows = false;
        this.applyFilterMode = false;
        this.applyPCFEdge = false;
        this.applyShadowIntensity = false;
        this.applyFadeInfo = false;
        if (this.needsfallBackMaterial) {
            setPostShadowParams();
        }
    }

    @Override
    public void cleanup() {
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

    public Vector3f getDirection() {
        return this.direction;
    }

    public int getEdgesThickness() {
        return (int) (this.edgesThickness * 10.0f);
    }

    public float getLambda() {
        return this.lambda;
    }

    public Node getSceneForDebug() {
        return (Node) this.viewPort.getScenes().get(0);
    }

    public float getShadowIntensity() {
        return this.shadowIntensity;
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

    @Override
    public void initialize(RenderManager renderManager, ViewPort viewPort) {
        this.renderManager = renderManager;
        this.viewPort = viewPort;
        this.postTechniqueName = "PostShadow";
    }

    public boolean isFlushQueues() {
        return this.flushQueues;
    }

    @Override
    public boolean isInitialized() {
        return this.viewPort != null;
    }

    @Override
    public void postFrame(FrameBuffer frameBuffer) {
        if (this.debug) {
            displayShadowMap(this.renderManager.getRenderer());
        }
        if (this.noOccluders) {
            return;
        }
        setMatParams();
        Camera camera = this.viewPort.getCamera();
        if (this.needsfallBackMaterial) {
            this.renderManager.setForcedMaterial(this.postshadowMat);
        }
        this.renderManager.setForcedTechnique(this.postTechniqueName);
        this.viewPort.getQueue().renderShadowQueue(this.lightReceivers, this.renderManager, camera, true);
        this.renderManager.setForcedTechnique(null);
        this.renderManager.setForcedMaterial(null);
        this.renderManager.setCamera(camera, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0139  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void postQueue(RenderQueue renderQueue) {
        int i10;
        Iterator<Spatial> it = this.viewPort.getScenes().iterator();
        while (it.hasNext()) {
            ShadowUtil.getGeometriesInCamFrustum(it.next(), this.viewPort.getCamera(), RenderQueue.ShadowMode.Receive, this.lightReceivers);
        }
        Camera camera = this.viewPort.getCamera();
        float f10 = this.zFarOverride;
        if (f10 == 0.0f) {
            f10 = camera.getFrustumFar();
        }
        float max = Math.max(camera.getFrustumNear(), 0.001f);
        ShadowUtil.updateFrustumPoints(camera, max, f10, 1.0f, this.points);
        this.shadowCam.getRotation().lookAt(this.direction, this.shadowCam.getUp());
        this.shadowCam.update();
        this.shadowCam.updateViewProjection();
        PssmShadowUtil.updateFrustumSplits(this.splitsArray, max, f10, this.lambda);
        float[] fArr = this.splitsArray;
        int length = fArr.length;
        if (length != 1 && length != 2) {
            if (length != 3) {
                if (length != 4) {
                    if (length == 5) {
                        this.splits.f81595a = fArr[4];
                    }
                    Renderer renderer = this.renderManager.getRenderer();
                    this.renderManager.setForcedMaterial(this.preshadowMat);
                    this.renderManager.setForcedTechnique("PreShadow");
                    i10 = 0;
                    while (i10 < this.nbSplits) {
                        float[] fArr2 = this.splitsArray;
                        int i11 = i10 + 1;
                        ShadowUtil.updateFrustumPoints(camera, fArr2[i10], fArr2[i11], 1.0f, this.points);
                        ShadowUtil.updateShadowCamera(this.viewPort, this.lightReceivers, this.shadowCam, this.points, this.splitOccluders, this.shadowMapSize);
                        this.lightViewProjectionsMatrices[i10].set(this.shadowCam.getViewProjectionMatrix());
                        this.renderManager.setCamera(this.shadowCam, false);
                        if (this.debugfrustums) {
                            getSceneForDebug().attachChild(createFrustum(this.points, i10));
                            ShadowUtil.updateFrustumPoints2(this.shadowCam, this.points);
                            getSceneForDebug().attachChild(createFrustum(this.points, i10));
                        }
                        renderer.setFrameBuffer(this.shadowFB[i10]);
                        renderer.clearBuffers(true, true, true);
                        LightFilter lightFilter = this.renderManager.getLightFilter();
                        this.renderManager.setLightFilter(NULL_LIGHT_FILTER);
                        this.viewPort.getQueue().renderShadowQueue(this.splitOccluders, this.renderManager, this.shadowCam, true);
                        this.renderManager.setLightFilter(lightFilter);
                        i10 = i11;
                    }
                    if (this.debugfrustums) {
                        this.debugfrustums = false;
                        getSceneForDebug().updateGeometricState();
                    }
                    renderer.setFrameBuffer(this.viewPort.getOutputFrameBuffer());
                    this.renderManager.setForcedMaterial(null);
                    this.renderManager.setForcedTechnique(null);
                    this.renderManager.setCamera(camera, false);
                }
                this.splits.f81596b = fArr[3];
            }
            this.splits.f81597g = fArr[2];
        }
        this.splits.f81598r = fArr[1];
        Renderer renderer2 = this.renderManager.getRenderer();
        this.renderManager.setForcedMaterial(this.preshadowMat);
        this.renderManager.setForcedTechnique("PreShadow");
        i10 = 0;
        while (i10 < this.nbSplits) {
        }
        if (this.debugfrustums) {
        }
        renderer2.setFrameBuffer(this.viewPort.getOutputFrameBuffer());
        this.renderManager.setForcedMaterial(null);
        this.renderManager.setForcedTechnique(null);
        this.renderManager.setCamera(camera, false);
    }

    @Override
    public void preFrame(float f10) {
    }

    @Override
    public void reshape(ViewPort viewPort, int i10, int i11) {
    }

    public final void setCompareMode(CompareMode compareMode) {
        if (compareMode == null) {
            throw new IllegalArgumentException("compareMode cannot be null");
        }
        if (this.compareMode == compareMode) {
            return;
        }
        this.compareMode = compareMode;
        for (Texture2D texture2D : this.shadowMaps) {
            if (compareMode == CompareMode.Hardware) {
                texture2D.setShadowCompareMode(Texture.ShadowCompareMode.LessOrEqual);
                if (this.filterMode == FilterMode.Bilinear) {
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
        this.applyHWShadows = true;
    }

    public void setDirection(Vector3f vector3f) {
        this.direction.set(vector3f).normalizeLocal();
    }

    public void setEdgesThickness(int i10) {
        this.edgesThickness = Math.max(1, Math.min(i10, 10)) * 0.1f;
        this.postshadowMat.setFloat("PCFEdge", i10);
        this.applyPCFEdge = true;
    }

    public final void setFilterMode(FilterMode filterMode) {
        if (filterMode == null) {
            throw new IllegalArgumentException("filterMode cannot be null");
        }
        if (this.filterMode == filterMode) {
            return;
        }
        this.filterMode = filterMode;
        this.postshadowMat.setInt("FilterMode", filterMode.ordinal());
        this.postshadowMat.setFloat("PCFEdge", this.edgesThickness);
        if (this.compareMode == CompareMode.Hardware) {
            for (Texture2D texture2D : this.shadowMaps) {
                if (filterMode == FilterMode.Bilinear) {
                    texture2D.setMagFilter(Texture.MagFilter.Bilinear);
                    texture2D.setMinFilter(Texture.MinFilter.BilinearNoMipMaps);
                } else {
                    texture2D.setMagFilter(Texture.MagFilter.Nearest);
                    texture2D.setMinFilter(Texture.MinFilter.NearestNoMipMaps);
                }
            }
        }
        this.applyFilterMode = true;
    }

    public void setFlushQueues(boolean z10) {
        this.flushQueues = z10;
    }

    public void setLambda(float f10) {
        this.lambda = f10;
    }

    public void setPostShadowParams() {
        this.postshadowMat.setColor("Splits", this.splits);
        for (int i10 = 0; i10 < this.nbSplits; i10++) {
            this.postshadowMat.setMatrix4("LightViewProjectionMatrix" + i10, this.lightViewProjectionsMatrices[i10]);
            this.postshadowMat.setTexture("ShadowMap" + i10, this.shadowMaps[i10]);
        }
    }

    @Override
    public void setProfiler(AppProfiler appProfiler) {
    }

    public final void setShadowIntensity(float f10) {
        this.shadowIntensity = f10;
        this.postshadowMat.setFloat("ShadowIntensity", f10);
        this.applyShadowIntensity = true;
    }

    public void setShadowZExtend(float f10) {
        Vector2f vector2f = this.fadeInfo;
        if (vector2f != null) {
            float f11 = this.fadeLength;
            vector2f.set(f10 - f11, 1.0f / f11);
        }
        this.zFarOverride = f10;
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

    public PssmShadowRenderer(AssetManager assetManager, int i10, int i11, Material material) {
        this.nbSplits = 3;
        this.lambda = 0.65f;
        this.shadowIntensity = 0.7f;
        this.zFarOverride = 0.0f;
        this.splitOccluders = new GeometryList(new OpaqueComparator());
        int i12 = 0;
        this.noOccluders = false;
        this.direction = new Vector3f();
        this.debug = false;
        this.edgesThickness = 1.0f;
        this.points = new Vector3f[8];
        this.flushQueues = true;
        this.needsfallBackMaterial = false;
        this.postTechniqueName = "PostShadow";
        this.applyHWShadows = true;
        this.applyFilterMode = true;
        this.applyPCFEdge = true;
        this.applyShadowIntensity = true;
        this.matCache = new ArrayList();
        this.applyFadeInfo = false;
        this.lightReceivers = new GeometryList(new OpaqueComparator());
        this.debugfrustums = false;
        this.postshadowMat = material;
        this.assetManager = assetManager;
        int max = Math.max(Math.min(i11, 4), 1);
        this.nbSplits = max;
        float f10 = i10;
        this.shadowMapSize = f10;
        this.shadowFB = new FrameBuffer[max];
        this.shadowMaps = new Texture2D[max];
        this.dispPic = new Picture[max];
        this.lightViewProjectionsMatrices = new Matrix4f[max];
        this.splits = new ColorRGBA();
        this.splitsArray = new float[max + 1];
        this.dummyTex = new Texture2D(i10, i10, Image.Format.RGBA8);
        this.preshadowMat = new Material(assetManager, "Common/MatDefs/Shadow/PreShadow.j3md");
        this.postshadowMat.setFloat("ShadowMapSize", f10);
        for (int i13 = 0; i13 < max; i13++) {
            this.lightViewProjectionsMatrices[i13] = new Matrix4f();
            this.shadowFB[i13] = new FrameBuffer(i10, i10, 1);
            this.shadowMaps[i13] = new Texture2D(i10, i10, Image.Format.Depth);
            this.shadowFB[i13].setDepthTexture(this.shadowMaps[i13]);
            this.shadowFB[i13].setColorTexture(this.dummyTex);
            this.postshadowMat.setTexture("ShadowMap" + i13, this.shadowMaps[i13]);
            this.dispPic[i13] = new Picture("Picture" + i13);
            this.dispPic[i13].setTexture(assetManager, this.shadowMaps[i13], false);
        }
        setCompareMode(CompareMode.Hardware);
        setFilterMode(FilterMode.Bilinear);
        setShadowIntensity(0.7f);
        Camera camera = new Camera(i10, i10);
        this.shadowCam = camera;
        camera.setParallelProjection(true);
        while (true) {
            Vector3f[] vector3fArr = this.points;
            if (i12 >= vector3fArr.length) {
                return;
            }
            vector3fArr[i12] = new Vector3f();
            i12++;
        }
    }
}
