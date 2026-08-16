package com.jme3.shadow;

import com.jme3.asset.AssetManager;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.light.PointLight;
import com.jme3.material.Material;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.queue.GeometryList;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Spatial;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.Iterator;

public class PointLightShadowRenderer extends AbstractShadowRenderer {
    public static final int CAM_NUMBER = 6;
    protected final Vector3f X_NEG;
    protected final Vector3f Y_NEG;
    protected final Vector3f Z_NEG;
    protected Geometry[] frustums;
    protected PointLight light;
    protected Camera[] shadowCams;

    public PointLightShadowRenderer() {
        this.frustums = null;
        this.X_NEG = Vector3f.UNIT_X.mult(-1.0f);
        this.Y_NEG = Vector3f.UNIT_Y.mult(-1.0f);
        this.Z_NEG = Vector3f.UNIT_Z.mult(-1.0f);
    }

    private void init(int i10) {
        this.shadowCams = new Camera[6];
        int i11 = 0;
        while (true) {
            Camera[] cameraArr = this.shadowCams;
            if (i11 >= cameraArr.length) {
                return;
            }
            cameraArr[i11] = new Camera(i10, i10);
            i11++;
        }
    }

    @Override
    public boolean checkCulling(Camera camera) {
        if (this.light == null) {
            return false;
        }
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
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.light = (PointLight) cloner.clone(this.light);
        init((int) this.shadowMapSize);
        this.frustums = null;
        super.cloneFields(cloner, obj);
    }

    @Override
    public void doDisplayFrustumDebug(int i10) {
        if (this.frustums == null) {
            this.frustums = new Geometry[6];
            Vector3f[] vector3fArr = new Vector3f[8];
            for (int i11 = 0; i11 < 8; i11++) {
                vector3fArr[i11] = new Vector3f();
            }
            for (int i12 = 0; i12 < 6; i12++) {
                ShadowUtil.updateFrustumPoints2(this.shadowCams[i12], vector3fArr);
                this.frustums[i12] = createFrustum(vector3fArr, i12);
            }
        }
        Geometry geometry = this.frustums[i10];
        if (geometry.getParent() == null) {
            getSceneForDebug().attachChild(geometry);
        }
    }

    public PointLight getLight() {
        return this.light;
    }

    @Override
    public GeometryList getOccludersToRender(int i10, GeometryList geometryList) {
        Iterator<Spatial> it = this.viewPort.getScenes().iterator();
        while (it.hasNext()) {
            ShadowUtil.getGeometriesInCamFrustum(it.next(), this.shadowCams[i10], RenderQueue.ShadowMode.Cast, geometryList);
        }
        return geometryList;
    }

    @Override
    public void getReceivers(GeometryList geometryList) {
        geometryList.clear();
        Iterator<Spatial> it = this.viewPort.getScenes().iterator();
        while (it.hasNext()) {
            ShadowUtil.getLitGeometriesInViewPort(it.next(), this.viewPort.getCamera(), this.shadowCams, RenderQueue.ShadowMode.Receive, geometryList);
        }
    }

    @Override
    public Camera getShadowCam(int i10) {
        return this.shadowCams[i10];
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
        this.light = (PointLight) jmeImporter.getCapsule(this).readSavable("light", null);
        init((int) this.shadowMapSize);
    }

    public void setLight(PointLight pointLight) {
        this.light = pointLight;
    }

    @Override
    public void setMaterialParameters(Material material) {
        PointLight pointLight = this.light;
        material.setVector3("LightPos", pointLight == null ? new Vector3f() : pointLight.getPosition());
    }

    @Override
    public void updateShadowCams(Camera camera) {
        if (this.light == null) {
            AbstractShadowRenderer.logger.warning("The light can't be null for a " + getClass().getName());
            return;
        }
        this.shadowCams[0].setAxes(this.X_NEG, this.Z_NEG, this.Y_NEG);
        Camera camera2 = this.shadowCams[1];
        Vector3f vector3f = this.X_NEG;
        Vector3f vector3f2 = Vector3f.UNIT_Z;
        Vector3f vector3f3 = Vector3f.UNIT_Y;
        camera2.setAxes(vector3f, vector3f2, vector3f3);
        this.shadowCams[2].setAxes(this.X_NEG, vector3f3, this.Z_NEG);
        Camera camera3 = this.shadowCams[3];
        Vector3f vector3f4 = Vector3f.UNIT_X;
        camera3.setAxes(vector3f4, vector3f3, vector3f2);
        this.shadowCams[4].setAxes(vector3f2, vector3f3, this.X_NEG);
        this.shadowCams[5].setAxes(this.Z_NEG, vector3f3, vector3f4);
        for (Camera camera4 : this.shadowCams) {
            camera4.setFrustumPerspective(90.0f, 1.0f, 0.1f, this.light.getRadius());
            camera4.setLocation(this.light.getPosition());
            camera4.update();
            camera4.updateViewProjection();
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.light, "light", (Savable) null);
    }

    public PointLightShadowRenderer(AssetManager assetManager, int i10) {
        super(assetManager, i10, 6);
        this.frustums = null;
        this.X_NEG = Vector3f.UNIT_X.mult(-1.0f);
        this.Y_NEG = Vector3f.UNIT_Y.mult(-1.0f);
        this.Z_NEG = Vector3f.UNIT_Z.mult(-1.0f);
        init(i10);
    }
}
