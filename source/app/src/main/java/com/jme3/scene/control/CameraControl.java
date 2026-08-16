package com.jme3.scene.control;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Spatial;
import com.jme3.util.TempVars;
import java.io.IOException;

public class CameraControl extends AbstractControl {
    private static final String CAMERA_NAME = "camera";
    private static final String CONTROL_DIR_NAME = "controlDir";
    private Camera camera;
    private ControlDirection controlDir;

    public enum ControlDirection {
        CameraToSpatial,
        SpatialToCamera
    }

    public CameraControl() {
        this.controlDir = ControlDirection.SpatialToCamera;
    }

    @Override
    public void controlRender(RenderManager renderManager, ViewPort viewPort) {
    }

    @Override
    public void controlUpdate(float f10) {
        if (this.spatial == null || this.camera == null) {
            return;
        }
        int ordinal = this.controlDir.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                return;
            }
            this.camera.setLocation(this.spatial.getWorldTranslation());
            this.camera.setRotation(this.spatial.getWorldRotation());
            return;
        }
        TempVars tempVars = TempVars.get();
        Vector3f subtractLocal = tempVars.vect1.set(this.camera.getLocation()).subtractLocal(this.spatial.getWorldTranslation());
        Spatial spatial = this.spatial;
        spatial.setLocalTranslation(subtractLocal.addLocal(spatial.getLocalTranslation()));
        Quaternion subtractLocal2 = tempVars.quat1.set(this.camera.getRotation()).subtractLocal(this.spatial.getWorldRotation());
        Spatial spatial2 = this.spatial;
        spatial2.setLocalRotation(subtractLocal2.addLocal(spatial2.getLocalRotation()));
        tempVars.release();
    }

    public Camera getCamera() {
        return this.camera;
    }

    public ControlDirection getControlDir() {
        return this.controlDir;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.controlDir = (ControlDirection) capsule.readEnum(CONTROL_DIR_NAME, ControlDirection.class, ControlDirection.SpatialToCamera);
        this.camera = (Camera) capsule.readSavable("camera", null);
    }

    public void setCamera(Camera camera) {
        this.camera = camera;
    }

    public void setControlDir(ControlDirection controlDirection) {
        this.controlDir = controlDirection;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.controlDir, CONTROL_DIR_NAME, ControlDirection.SpatialToCamera);
        capsule.write(this.camera, "camera", (Savable) null);
    }

    public CameraControl(Camera camera) {
        this.controlDir = ControlDirection.SpatialToCamera;
        this.camera = camera;
    }

    public CameraControl(Camera camera, ControlDirection controlDirection) {
        ControlDirection controlDirection2 = ControlDirection.SpatialToCamera;
        this.camera = camera;
        this.controlDir = controlDirection;
    }
}
