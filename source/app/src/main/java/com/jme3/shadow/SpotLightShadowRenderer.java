package com.jme3.shadow;

import com.jme3.asset.AssetManager;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.light.SpotLight;
import com.jme3.material.Material;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.queue.GeometryList;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Spatial;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.Iterator;

public class SpotLightShadowRenderer extends AbstractShadowRenderer {
    protected SpotLight light;
    protected final Vector3f[] points;
    protected Camera shadowCam;
    protected final Camera[] tempCams;
    protected final Vector3f tempVec;

    public SpotLightShadowRenderer() {
        this.tempCams = new Camera[1];
        this.points = new Vector3f[8];
        this.tempVec = new Vector3f();
    }

    private void init(int i10) {
        this.shadowCam = new Camera(i10, i10);
        int i11 = 0;
        while (true) {
            Vector3f[] vector3fArr = this.points;
            if (i11 >= vector3fArr.length) {
                return;
            }
            vector3fArr[i11] = new Vector3f();
            i11++;
        }
    }

    @Override
    public boolean checkCulling(Camera camera) {
        Camera camera2 = this.frustumCam;
        if (camera2 != null) {
            camera2.setLocation(camera.getLocation());
            camera2.setRotation(camera.getRotation());
            camera = camera2;
        }
        TempVars tempVars = TempVars.get();
        boolean intersectsFrustum = this.light.intersectsFrustum(camera, tempVars);
        tempVars.release();
        return intersectsFrustum;
    }

    @Override
    public void clearMaterialParameters(Material material) {
        material.clearParam("LightPos");
        material.clearParam("LightDir");
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.light = (SpotLight) cloner.clone(this.light);
        init((int) this.shadowMapSize);
        super.cloneFields(cloner, obj);
    }

    @Override
    public void doDisplayFrustumDebug(int i10) {
        Vector3f[] vector3fArr = (Vector3f[]) this.points.clone();
        getSceneForDebug().attachChild(createFrustum(this.points, i10));
        ShadowUtil.updateFrustumPoints2(this.shadowCam, vector3fArr);
        getSceneForDebug().attachChild(createFrustum(vector3fArr, i10));
    }

    public SpotLight getLight() {
        return this.light;
    }

    @Override
    public GeometryList getOccludersToRender(int i10, GeometryList geometryList) {
        Iterator<Spatial> it = this.viewPort.getScenes().iterator();
        while (it.hasNext()) {
            ShadowUtil.getGeometriesInCamFrustum(it.next(), this.shadowCam, RenderQueue.ShadowMode.Cast, geometryList);
        }
        return geometryList;
    }

    @Override
    public void getReceivers(GeometryList geometryList) {
        geometryList.clear();
        this.tempCams[0] = this.shadowCam;
        Iterator<Spatial> it = this.viewPort.getScenes().iterator();
        while (it.hasNext()) {
            ShadowUtil.getLitGeometriesInViewPort(it.next(), this.viewPort.getCamera(), this.tempCams, RenderQueue.ShadowMode.Receive, geometryList);
        }
    }

    @Override
    public Camera getShadowCam(int i10) {
        return this.shadowCam;
    }

    @Override
    public void initFrustumCam() {
        Camera camera = this.viewPort.getCamera();
        Camera m1294clone = camera.m1294clone();
        this.frustumCam = m1294clone;
        m1294clone.setFrustum(camera.getFrustumNear(), this.zFarOverride, camera.getFrustumLeft(), camera.getFrustumRight(), camera.getFrustumTop(), camera.getFrustumBottom());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.zFarOverride = capsule.readInt("zFarOverride", 0);
        this.light = (SpotLight) capsule.readSavable("light", null);
        this.fadeInfo = (Vector2f) capsule.readSavable("fadeInfo", null);
        this.fadeLength = capsule.readFloat("fadeLength", 0.0f);
        init((int) this.shadowMapSize);
    }

    public void setLight(SpotLight spotLight) {
        this.light = spotLight;
    }

    @Override
    public void setMaterialParameters(Material material) {
        material.setVector3("LightPos", this.light.getPosition());
        material.setVector3("LightDir", this.light.getDirection());
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
        ShadowUtil.updateFrustumPoints(camera, Math.max(camera.getFrustumNear(), 0.001f), f10, 1.0f, this.points);
        this.shadowCam.setFrustumPerspective(this.light.getSpotOuterAngle() * 57.295776f * 2.0f, 1.0f, 1.0f, this.light.getSpotRange());
        this.shadowCam.getRotation().lookAt(this.light.getDirection(), this.shadowCam.getUp(this.tempVec));
        this.shadowCam.setLocation(this.light.getPosition());
        this.shadowCam.update();
        this.shadowCam.updateViewProjection();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.zFarOverride, "zFarOverride", 0.0f);
        capsule.write(this.light, "light", (Savable) null);
        capsule.write(this.fadeInfo, "fadeInfo", (Savable) null);
        capsule.write(this.fadeLength, "fadeLength", 0.0f);
    }

    public SpotLightShadowRenderer(AssetManager assetManager, int i10) {
        super(assetManager, i10, 1);
        this.tempCams = new Camera[1];
        this.points = new Vector3f[8];
        this.tempVec = new Vector3f();
        init(i10);
    }
}
