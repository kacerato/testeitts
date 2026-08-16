package com.ardor3d.renderer;

import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Vector3;

public class StereoCamera extends Camera {
    private double _aperture;
    private double _eyeSeparation;
    private double _focalDistance;
    private final Camera _leftCamera;
    private final Camera _rightCamera;
    private boolean _sideBySideMode;

    public StereoCamera() {
        this(100, 100);
    }

    public double getAperture() {
        return this._aperture;
    }

    public double getEyeSeparation() {
        return this._eyeSeparation;
    }

    public double getFocalDistance() {
        return this._focalDistance;
    }

    public Camera getLeftCamera() {
        return this._leftCamera;
    }

    public Camera getRightCamera() {
        return this._rightCamera;
    }

    public boolean isSideBySideMode() {
        return this._sideBySideMode;
    }

    @Override
    public void resize(int i10, int i11) {
        super.resize(i10, i11);
        this._leftCamera.resize(i10, i11);
        this._rightCamera.resize(i10, i11);
    }

    public void setAperture(double d10) {
        this._aperture = d10;
    }

    public void setEyeSeparation(double d10) {
        this._eyeSeparation = d10;
    }

    public void setFocalDistance(double d10) {
        this._focalDistance = d10;
    }

    public void setSideBySideMode(boolean z10) {
        this._sideBySideMode = z10;
        setupLeftRightCameras();
    }

    public void setupLeftRightCameras() {
        if (this._sideBySideMode) {
            this._leftCamera.setViewPort(0.0d, 0.5d, 0.0d, 1.0d);
            this._rightCamera.setViewPort(0.5d, 1.0d, 0.0d, 1.0d);
        } else {
            this._leftCamera.setViewPort(0.0d, 1.0d, 0.0d, 1.0d);
            this._rightCamera.setViewPort(0.0d, 1.0d, 0.0d, 1.0d);
        }
        double width = (getWidth() / getHeight()) / (this._sideBySideMode ? 2.0d : 1.0d);
        double tan = MathUtils.tan(this._aperture / 2.0d) * getFrustumNear();
        double d10 = -tan;
        double frustumNear = ((this._eyeSeparation * 0.5d) * getFrustumNear()) / this._focalDistance;
        double d11 = (-width) * tan;
        double d12 = width * tan;
        this._leftCamera.setFrustum(getFrustumNear(), getFrustumFar(), d11 + frustumNear, d12 + frustumNear, tan, d10);
        this._rightCamera.setFrustum(getFrustumNear(), getFrustumFar(), d11 - frustumNear, d12 - frustumNear, tan, d10);
    }

    public void switchToLeftCamera(Renderer renderer) {
        this._leftCamera.update();
        this._leftCamera.apply(renderer);
    }

    public void switchToRightCamera(Renderer renderer) {
        this._rightCamera.update();
        this._rightCamera.apply(renderer);
    }

    public void updateLeftRightCameraFrames() {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        fetchTempInstance.set(getDirection()).crossLocal(getUp()).multiplyLocal(this._eyeSeparation / 2.0d);
        this._leftCamera.setFrame(getLocation().subtract(fetchTempInstance, fetchTempInstance2), getLeft(), getUp(), getDirection());
        this._rightCamera.setFrame(getLocation().add(fetchTempInstance, fetchTempInstance2), getLeft(), getUp(), getDirection());
        Vector3.releaseTempInstance(fetchTempInstance2);
        Vector3.releaseTempInstance(fetchTempInstance);
    }

    public StereoCamera(int i10, int i11) {
        super(i10, i11);
        this._sideBySideMode = false;
        this._focalDistance = 100.0d;
        this._eyeSeparation = 100.0d / 30.0d;
        this._aperture = 0.7853981633974483d;
        this._leftCamera = new Camera(i10, i11);
        this._rightCamera = new Camera(i10, i11);
    }

    public StereoCamera(Camera camera) {
        super(camera);
        this._sideBySideMode = false;
        this._focalDistance = 100.0d;
        this._eyeSeparation = 100.0d / 30.0d;
        this._aperture = 0.7853981633974483d;
        this._leftCamera = new Camera(camera);
        this._rightCamera = new Camera(camera);
    }
}
