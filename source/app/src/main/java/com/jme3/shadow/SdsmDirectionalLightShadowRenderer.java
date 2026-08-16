package com.jme3.shadow;

import com.jme3.asset.AssetManager;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.light.DirectionalLight;
import com.jme3.material.Material;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.opengl.GL4;
import com.jme3.renderer.opengl.GLRenderer;
import com.jme3.renderer.queue.GeometryList;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.shader.VarType;
import com.jme3.shadow.SdsmFitter;
import com.jme3.texture.Texture;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SdsmDirectionalLightShadowRenderer extends AbstractShadowRenderer {
    private Spatial cameraFrustumDebug;
    private Texture depthTexture;
    private float fitExpansionFactor;
    private float fitFrameDelayTolerance;
    private boolean glInitialized;
    private SdsmFitter.SplitFitResult lastFit;
    private DirectionalLight light;
    private final Matrix4f lightViewMatrix;
    private SdsmFitter sdsmFitter;
    private boolean[] shadowCameraEnabled;
    private Camera[] shadowCameras;
    private List<Spatial> shadowMapFrustumDebug;

    public SdsmDirectionalLightShadowRenderer() {
        this.lightViewMatrix = new Matrix4f();
        this.glInitialized = false;
        this.fitExpansionFactor = 1.0f;
        this.fitFrameDelayTolerance = 0.05f;
        this.cameraFrustumDebug = null;
        this.shadowMapFrustumDebug = null;
    }

    private Geometry createDebugFrustum(Camera camera, int i10) {
        Vector3f[] vector3fArr = new Vector3f[8];
        for (int i11 = 0; i11 < 8; i11++) {
            vector3fArr[i11] = new Vector3f();
        }
        ShadowUtil.updateFrustumPoints2(camera, vector3fArr);
        Geometry createFrustum = createFrustum(vector3fArr, i10);
        createFrustum.getMaterial().getAdditionalRenderState().setLineWidth(5.0f);
        createFrustum.getMaterial().getAdditionalRenderState().setDepthWrite(false);
        ((Node) this.viewPort.getScenes().get(0)).attachChild(createFrustum);
        return createFrustum;
    }

    private void generateLightViewMatrix() {
        Vector3f direction = this.light.getDirection();
        Vector3f normalizeLocal = direction.cross(Math.abs(direction.f81612y) < 0.9f ? Vector3f.UNIT_Y : Vector3f.UNIT_X).normalizeLocal();
        Vector3f normalizeLocal2 = normalizeLocal.cross(direction).normalizeLocal();
        this.lightViewMatrix.set(normalizeLocal.f81611x, normalizeLocal.f81612y, normalizeLocal.f81613z, 0.0f, normalizeLocal2.f81611x, normalizeLocal2.f81612y, normalizeLocal2.f81613z, 0.0f, direction.f81611x, direction.f81612y, direction.f81613z, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f);
    }

    private Vector2f[] getSplits() {
        Vector2f[] vector2fArr = new Vector2f[3];
        for (int i10 = 0; i10 < 3; i10++) {
            vector2fArr[i10] = new Vector2f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        }
        SdsmFitter.SplitFitResult splitFitResult = this.lastFit;
        if (splitFitResult != null && splitFitResult.result != null) {
            for (int i11 = 0; i11 < this.nbShadowMaps - 1; i11++) {
                if (i11 < this.lastFit.result.cascadeStarts.size()) {
                    SdsmFitter.SplitInfo splitInfo = this.lastFit.result.cascadeStarts.get(i11);
                    vector2fArr[i11].set(splitInfo.start, splitInfo.end);
                }
            }
        }
        return vector2fArr;
    }

    private void init(int i10, int i11) {
        if (i10 < 1 || i10 > 4) {
            throw new IllegalArgumentException("Number of splits must be between 1 and 4. Given value: " + i10);
        }
        this.nbShadowMaps = i10;
        this.shadowCameras = new Camera[i10];
        this.shadowCameraEnabled = new boolean[i10];
        for (int i12 = 0; i12 < this.nbShadowMaps; i12++) {
            this.shadowCameras[i12] = new Camera(i11, i11);
            this.shadowCameras[i12].setParallelProjection(true);
            this.shadowCameraEnabled[i12] = false;
        }
        this.needsfallBackMaterial = true;
    }

    private void initGL() {
        if (this.glInitialized) {
            return;
        }
        Renderer renderer = this.renderManager.getRenderer();
        if (!(renderer instanceof GLRenderer)) {
            throw new UnsupportedOperationException("SdsmDirectionalLightShadowRenderer requires GLRenderer");
        }
        GL4 gl4 = ((GLRenderer) renderer).getGl4();
        if (gl4 == null) {
            throw new UnsupportedOperationException("SDSM shadows require OpenGL 4.3 or higher");
        }
        this.sdsmFitter = new SdsmFitter(gl4, renderer, this.assetManager);
        this.glInitialized = true;
    }

    private boolean isOldFitAcceptable(SdsmFitter.SplitFitResult splitFitResult, Matrix4f matrix4f) {
        return splitFitResult.parameters.cameraToLight.isSimilar(matrix4f, this.fitFrameDelayTolerance);
    }

    private boolean tryFitShadowCams(Camera camera) {
        DirectionalLight directionalLight;
        if (this.depthTexture != null && (directionalLight = this.light) != null) {
            Vector3f direction = directionalLight.getDirection();
            float f10 = direction.f81611x;
            Matrix4f matrix4f = this.lightViewMatrix;
            if (f10 != matrix4f.m30 || direction.f81612y != matrix4f.m31 || direction.f81613z != matrix4f.m32) {
                generateLightViewMatrix();
            }
            Matrix4f invert = camera.getViewProjectionMatrix().invert();
            Matrix4f mult = this.lightViewMatrix.mult(invert, invert);
            this.sdsmFitter.fit(this.depthTexture, this.nbShadowMaps, mult, camera.getFrustumNear(), camera.getFrustumFar());
            SdsmFitter.SplitFitResult result = this.sdsmFitter.getResult(false);
            if (result == null) {
                result = this.lastFit;
                while (true) {
                    if (result != null && isOldFitAcceptable(result, mult)) {
                        break;
                    }
                    result = this.sdsmFitter.getResult(true);
                }
            }
            this.lastFit = result;
            SdsmFitter.SplitFit splitFit = result.result;
            if (splitFit != null) {
                for (int i10 = 0; i10 < this.nbShadowMaps; i10++) {
                    this.shadowCameraEnabled[i10] = false;
                    SdsmFitter.SplitBounds splitBounds = splitFit.splits.get(i10);
                    if (splitBounds != null) {
                        Camera camera2 = this.shadowCameras[i10];
                        camera2.setLocation(this.lightViewMatrix.invert().mult(new Vector3f((splitBounds.minX + splitBounds.maxX) / 2.0f, (splitBounds.minY + splitBounds.maxY) / 2.0f, splitBounds.minZ)));
                        Matrix4f matrix4f2 = this.lightViewMatrix;
                        camera2.lookAtDirection(this.light.getDirection(), new Vector3f(matrix4f2.m10, matrix4f2.m11, matrix4f2.m12));
                        float f11 = splitBounds.maxX - splitBounds.minX;
                        float f12 = this.fitExpansionFactor;
                        float f13 = f11 * f12;
                        float f14 = (splitBounds.maxY - splitBounds.minY) * f12;
                        float f15 = f12 * (splitBounds.maxZ - splitBounds.minZ);
                        if (f13 > 0.0f && f14 > 0.0f && f15 > 0.0f) {
                            camera2.setFrustum(-100.0f, f15, (-f13) / 2.0f, f13 / 2.0f, f14 / 2.0f, (-f14) / 2.0f);
                            this.shadowCameraEnabled[i10] = true;
                            if (Float.isNaN(camera2.getViewProjectionMatrix().m00)) {
                                throw new IllegalStateException("Invalid shadow projection detected");
                            }
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean checkCulling(Camera camera) {
        return true;
    }

    @Override
    public void cleanup() {
        SdsmFitter sdsmFitter = this.sdsmFitter;
        if (sdsmFitter != null) {
            sdsmFitter.cleanup();
        }
    }

    @Override
    public void clearMaterialParameters(Material material) {
        material.clearParam("Splits");
        material.clearParam("LightDir");
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.light = (DirectionalLight) cloner.clone(this.light);
        init(this.nbShadowMaps, (int) this.shadowMapSize);
        super.cloneFields(cloner, obj);
    }

    public void displayAllDebugFrustums() {
        Spatial spatial = this.cameraFrustumDebug;
        if (spatial != null) {
            spatial.removeFromParent();
        }
        List<Spatial> list = this.shadowMapFrustumDebug;
        if (list != null) {
            Iterator<Spatial> it = list.iterator();
            while (it.hasNext()) {
                it.next().removeFromParent();
            }
        }
        this.cameraFrustumDebug = createDebugFrustum(this.viewPort.getCamera(), 4);
        this.shadowMapFrustumDebug = new ArrayList();
        for (int i10 = 0; i10 < this.nbShadowMaps; i10++) {
            if (this.shadowCameraEnabled[i10]) {
                this.shadowMapFrustumDebug.add(createDebugFrustum(this.shadowCameras[i10], i10));
            }
        }
    }

    @Override
    public void doDisplayFrustumDebug(int i10) {
        if (this.shadowCameraEnabled[i10]) {
            createDebugFrustum(this.shadowCameras[i10], i10);
        }
    }

    public float getFitExpansionFactor() {
        return this.fitExpansionFactor;
    }

    public float getFitFrameDelayTolerance() {
        return this.fitFrameDelayTolerance;
    }

    public DirectionalLight getLight() {
        return this.light;
    }

    @Override
    public GeometryList getOccludersToRender(int i10, GeometryList geometryList) {
        if (this.shadowCameraEnabled[i10]) {
            Camera camera = this.shadowCameras[i10];
            Iterator<Spatial> it = this.viewPort.getScenes().iterator();
            while (it.hasNext()) {
                ShadowUtil.getGeometriesInCamFrustum(it.next(), camera, RenderQueue.ShadowMode.Cast, geometryList);
            }
        }
        return geometryList;
    }

    @Override
    public void getReceivers(GeometryList geometryList) {
        throw new RuntimeException("Only filter mode is implemented for SDSM");
    }

    @Override
    public Camera getShadowCam(int i10) {
        return this.shadowCameras[i10];
    }

    @Override
    public void initFrustumCam() {
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.light = (DirectionalLight) capsule.readSavable("light", null);
        this.fitExpansionFactor = capsule.readFloat("fitExpansionFactor", 1.0f);
        this.fitFrameDelayTolerance = capsule.readFloat("fitFrameDelayTolerance", 0.05f);
        init(this.nbShadowMaps, (int) this.shadowMapSize);
    }

    public void setDepthTexture(Texture texture) {
        this.depthTexture = texture;
    }

    public void setFitExpansionFactor(float f10) {
        this.fitExpansionFactor = f10;
    }

    public void setFitFrameDelayTolerance(float f10) {
        this.fitFrameDelayTolerance = f10;
    }

    public void setLight(DirectionalLight directionalLight) {
        this.light = directionalLight;
        if (directionalLight != null) {
            generateLightViewMatrix();
        }
    }

    @Override
    public void setMaterialParameters(Material material) {
        material.setParam("Splits", VarType.Vector2Array, getSplits());
        DirectionalLight directionalLight = this.light;
        material.setVector3("LightDir", directionalLight == null ? new Vector3f() : directionalLight.getDirection());
    }

    @Override
    public void setPostShadowParams() {
        setMaterialParameters(this.postshadowMat);
        this.postshadowMat.setParam("LightViewProjectionMatrices", VarType.Matrix4Array, this.lightViewProjectionsMatrices);
        for (int i10 = 0; i10 < this.nbShadowMaps; i10++) {
            this.postshadowMat.setTexture(this.shadowMapStringCache[i10], this.shadowMaps[i10]);
        }
        Vector2f vector2f = this.fadeInfo;
        if (vector2f != null) {
            this.postshadowMat.setVector2("FadeInfo", vector2f);
        }
        this.postshadowMat.setBoolean("BackfaceShadows", this.renderBackFacesShadows);
    }

    @Override
    public void updateShadowCams(Camera camera) {
        if (!this.glInitialized) {
            initGL();
        }
        if (tryFitShadowCams(camera)) {
            return;
        }
        this.skipPostPass = true;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.light, "light", (Savable) null);
        capsule.write(this.fitExpansionFactor, "fitExpansionFactor", 1.0f);
        capsule.write(this.fitFrameDelayTolerance, "fitFrameDelayTolerance", 0.05f);
    }

    public SdsmDirectionalLightShadowRenderer(AssetManager assetManager, int i10, int i11) {
        super(assetManager, i10, i11);
        this.lightViewMatrix = new Matrix4f();
        this.glInitialized = false;
        this.fitExpansionFactor = 1.0f;
        this.fitFrameDelayTolerance = 0.05f;
        this.cameraFrustumDebug = null;
        this.shadowMapFrustumDebug = null;
        init(i11, i10);
    }
}
