package com.jme3.shadow;

import com.jme3.asset.AssetManager;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.light.DirectionalLight;
import com.jme3.material.Material;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.queue.GeometryList;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Spatial;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.Iterator;

public class DirectionalLightShadowRenderer extends AbstractShadowRenderer {
    protected float lambda;
    protected DirectionalLight light;
    protected Vector3f[] points;
    protected Camera shadowCam;
    protected ColorRGBA splits;
    protected float[] splitsArray;
    private boolean stabilize;
    protected final Vector3f tempVec;

    public DirectionalLightShadowRenderer() {
        this.lambda = 0.65f;
        this.points = new Vector3f[8];
        this.tempVec = new Vector3f();
        this.stabilize = true;
    }

    private void init(int i10, int i11) {
        if (i10 < 1 || i10 > 4) {
            throw new IllegalArgumentException("Number of splits must be between 1 and 4. Given value: " + i10);
        }
        this.nbShadowMaps = i10;
        this.splits = new ColorRGBA();
        this.splitsArray = new float[i10 + 1];
        Camera camera = new Camera(i11, i11);
        this.shadowCam = camera;
        camera.setParallelProjection(true);
        int i12 = 0;
        while (true) {
            Vector3f[] vector3fArr = this.points;
            if (i12 >= vector3fArr.length) {
                return;
            }
            vector3fArr[i12] = new Vector3f();
            i12++;
        }
    }

    @Override
    public boolean checkCulling(Camera camera) {
        return true;
    }

    @Override
    public void clearMaterialParameters(Material material) {
        material.clearParam("Splits");
        material.clearParam("FadeInfo");
        material.clearParam("LightDir");
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.light = (DirectionalLight) cloner.clone(this.light);
        init(this.nbShadowMaps, (int) this.shadowMapSize);
        super.cloneFields(cloner, obj);
    }

    @Override
    public void doDisplayFrustumDebug(int i10) {
        getSceneForDebug().attachChild(createFrustum(this.points, i10));
        ShadowUtil.updateFrustumPoints2(this.shadowCam, this.points);
        getSceneForDebug().attachChild(createFrustum(this.points, i10));
    }

    public float getLambda() {
        return this.lambda;
    }

    public DirectionalLight getLight() {
        return this.light;
    }

    @Override
    public GeometryList getOccludersToRender(int i10, GeometryList geometryList) {
        Camera camera = this.viewPort.getCamera();
        float[] fArr = this.splitsArray;
        ShadowUtil.updateFrustumPoints(camera, fArr[i10], fArr[i10 + 1], 1.0f, this.points);
        if (this.lightReceivers.size() == 0) {
            Iterator<Spatial> it = this.viewPort.getScenes().iterator();
            while (it.hasNext()) {
                ShadowUtil.getGeometriesInCamFrustum(it.next(), this.viewPort.getCamera(), RenderQueue.ShadowMode.Receive, this.lightReceivers);
            }
        }
        ShadowUtil.updateShadowCamera(this.viewPort, this.lightReceivers, this.shadowCam, this.points, geometryList, this.stabilize ? this.shadowMapSize : 0.0f);
        return geometryList;
    }

    @Override
    public void getReceivers(GeometryList geometryList) {
        if (geometryList.size() == 0) {
            Iterator<Spatial> it = this.viewPort.getScenes().iterator();
            while (it.hasNext()) {
                ShadowUtil.getGeometriesInCamFrustum(it.next(), this.viewPort.getCamera(), RenderQueue.ShadowMode.Receive, geometryList);
            }
        }
    }

    @Override
    public Camera getShadowCam(int i10) {
        return this.shadowCam;
    }

    @Override
    public void initFrustumCam() {
    }

    public boolean isEnabledStabilization() {
        return this.stabilize;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.lambda = capsule.readFloat("lambda", 0.65f);
        this.zFarOverride = capsule.readFloat("zFarOverride", 0.0f);
        this.light = (DirectionalLight) capsule.readSavable("light", null);
        this.fadeInfo = (Vector2f) capsule.readSavable("fadeInfo", null);
        this.fadeLength = capsule.readFloat("fadeLength", 0.0f);
        init(this.nbShadowMaps, (int) this.shadowMapSize);
    }

    public void setEnabledStabilization(boolean z10) {
        this.stabilize = z10;
    }

    public void setLambda(float f10) {
        this.lambda = f10;
    }

    public void setLight(DirectionalLight directionalLight) {
        this.light = directionalLight;
    }

    @Override
    public void setMaterialParameters(Material material) {
        material.setColor("Splits", this.splits);
        DirectionalLight directionalLight = this.light;
        material.setVector3("LightDir", directionalLight == null ? new Vector3f() : directionalLight.getDirection());
        Vector2f vector2f = this.fadeInfo;
        if (vector2f != null) {
            material.setVector2("FadeInfo", vector2f);
        }
    }

    @Override
    public void updateShadowCams(Camera camera) {
        if (this.light == null) {
            AbstractShadowRenderer.logger.warning("The light can't be null for a " + getClass().getName());
            return;
        }
        float f10 = this.zFarOverride;
        if (f10 == 0.0f) {
            f10 = camera.getFrustumFar();
        }
        float max = Math.max(camera.getFrustumNear(), 0.001f);
        ShadowUtil.updateFrustumPoints(camera, max, f10, 1.0f, this.points);
        this.shadowCam.setFrustumFar(f10);
        this.shadowCam.getRotation().lookAt(this.light.getDirection(), this.shadowCam.getUp(this.tempVec));
        this.shadowCam.update();
        this.shadowCam.updateViewProjection();
        PssmShadowUtil.updateFrustumSplits(this.splitsArray, max, f10, this.lambda);
        if (camera.isParallelProjection()) {
            for (int i10 = 0; i10 < this.nbShadowMaps; i10++) {
                float[] fArr = this.splitsArray;
                fArr[i10] = fArr[i10] / (f10 - max);
            }
        }
        float[] fArr2 = this.splitsArray;
        int length = fArr2.length;
        if (length != 1 && length != 2) {
            if (length != 3) {
                if (length != 4) {
                    if (length != 5) {
                        return;
                    }
                    this.splits.f81595a = fArr2[4];
                }
                this.splits.f81596b = fArr2[3];
            }
            this.splits.f81597g = fArr2[2];
        }
        this.splits.f81598r = fArr2[1];
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.lambda, "lambda", 0.65f);
        capsule.write(this.zFarOverride, "zFarOverride", 0.0f);
        capsule.write(this.light, "light", (Savable) null);
        capsule.write(this.fadeInfo, "fadeInfo", (Savable) null);
        capsule.write(this.fadeLength, "fadeLength", 0.0f);
    }

    public DirectionalLightShadowRenderer(AssetManager assetManager, int i10, int i11) {
        super(assetManager, i10, i11);
        this.lambda = 0.65f;
        this.points = new Vector3f[8];
        this.tempVec = new Vector3f();
        this.stabilize = true;
        init(i11, i10);
    }
}
