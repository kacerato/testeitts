package com.ardor3d.scenegraph.extension;

import com.ardor3d.math.Matrix3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.renderer.Camera;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.IOException;

public class CameraNode extends Node {
    private static final long serialVersionUID = 1;
    private Camera _camera;

    public CameraNode() {
    }

    public Camera getCamera() {
        return this._camera;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._camera = (Camera) inputCapsule.readSavable("camera", null);
    }

    public void setCamera(Camera camera) {
        this._camera = camera;
    }

    public void updateFromCamera() {
        ReadOnlyVector3 left = this._camera.getLeft();
        ReadOnlyVector3 up = this._camera.getUp();
        ReadOnlyVector3 direction = this._camera.getDirection();
        ReadOnlyVector3 location = this._camera.getLocation();
        Matrix3 fetchTempInstance = Matrix3.fetchTempInstance();
        fetchTempInstance.fromAxes(left, up, direction);
        setRotation(fetchTempInstance);
        setTranslation(location);
        Matrix3.releaseTempInstance(fetchTempInstance);
    }

    @Override
    public void updateWorldTransform(boolean z10) {
        super.updateWorldTransform(z10);
        if (this._camera != null) {
            this._camera.setFrame(getWorldTranslation(), getWorldRotation());
        }
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._camera, "camera", (Savable) null);
    }

    public CameraNode(String str, Camera camera) {
        super(str);
        this._camera = camera;
    }
}
