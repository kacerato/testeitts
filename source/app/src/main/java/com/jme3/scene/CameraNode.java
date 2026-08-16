package com.jme3.scene;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.renderer.Camera;
import com.jme3.scene.control.CameraControl;
import com.jme3.util.clone.Cloner;
import java.io.IOException;

public class CameraNode extends Node {
    private CameraControl camControl;

    public CameraNode() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.camControl = (CameraControl) cloner.clone(this.camControl);
    }

    public Camera getCamera() {
        return this.camControl.getCamera();
    }

    public CameraControl.ControlDirection getControlDir() {
        return this.camControl.getControlDir();
    }

    public boolean isEnabled() {
        return this.camControl.isEnabled();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.camControl = (CameraControl) jmeImporter.getCapsule(this).readSavable("camControl", null);
    }

    public void setCamera(Camera camera) {
        this.camControl.setCamera(camera);
    }

    public void setControlDir(CameraControl.ControlDirection controlDirection) {
        this.camControl.setControlDir(controlDirection);
    }

    public void setEnabled(boolean z10) {
        this.camControl.setEnabled(z10);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.camControl, "camControl", (Savable) null);
    }

    public CameraNode(String str, Camera camera) {
        this(str, new CameraControl(camera));
    }

    public CameraNode(String str, CameraControl cameraControl) {
        super(str);
        addControl(cameraControl);
        this.camControl = cameraControl;
    }
}
