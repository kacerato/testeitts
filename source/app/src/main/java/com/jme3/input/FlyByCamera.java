package com.jme3.input;

import com.jme3.collision.MotionAllowedListener;
import com.jme3.input.controls.ActionListener;
import com.jme3.input.controls.AnalogListener;
import com.jme3.input.controls.KeyTrigger;
import com.jme3.input.controls.MouseAxisTrigger;
import com.jme3.input.controls.MouseButtonTrigger;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;

public class FlyByCamera implements AnalogListener, ActionListener {
    private static final String[] mappings = {CameraInput.FLYCAM_LEFT, CameraInput.FLYCAM_RIGHT, CameraInput.FLYCAM_UP, CameraInput.FLYCAM_DOWN, CameraInput.FLYCAM_STRAFELEFT, CameraInput.FLYCAM_STRAFERIGHT, CameraInput.FLYCAM_FORWARD, CameraInput.FLYCAM_BACKWARD, CameraInput.FLYCAM_ZOOMIN, CameraInput.FLYCAM_ZOOMOUT, CameraInput.FLYCAM_ROTATEDRAG, CameraInput.FLYCAM_RISE, CameraInput.FLYCAM_LOWER, CameraInput.FLYCAM_INVERTY};
    protected Camera cam;
    protected InputManager inputManager;
    protected Vector3f initialUpVec = new Vector3f();
    protected float rotationSpeed = 1.0f;
    protected float moveSpeed = 3.0f;
    protected float zoomSpeed = 1.0f;
    protected MotionAllowedListener motionAllowed = null;
    protected boolean enabled = true;
    protected boolean dragToRotate = false;
    protected boolean canRotate = false;
    protected boolean invertY = false;
    private final Matrix3f tempMat = new Matrix3f();
    private final Quaternion tempQuat = new Quaternion();
    private final Vector3f tempUp = new Vector3f();
    private final Vector3f tempLeft = new Vector3f();
    private final Vector3f tempDir = new Vector3f();
    private final Vector3f tempVel = new Vector3f();
    private final Vector3f tempPos = new Vector3f();

    public FlyByCamera(Camera camera) {
        this.cam = camera;
        camera.getUp(this.initialUpVec);
    }

    public float getMoveSpeed() {
        return this.moveSpeed;
    }

    public float getRotationSpeed() {
        return this.rotationSpeed;
    }

    public float getZoomSpeed() {
        return this.zoomSpeed;
    }

    public boolean isDragToRotate() {
        return this.dragToRotate;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void mapJoystick(Joystick joystick) {
        if (joystick.getAxis("rz") == null || joystick.getAxis("z") == null) {
            joystick.getPovXAxis().assignAxis(CameraInput.FLYCAM_STRAFERIGHT, CameraInput.FLYCAM_STRAFELEFT);
            joystick.getPovYAxis().assignAxis(CameraInput.FLYCAM_FORWARD, CameraInput.FLYCAM_BACKWARD);
            joystick.getXAxis().assignAxis(CameraInput.FLYCAM_RIGHT, CameraInput.FLYCAM_LEFT);
            joystick.getYAxis().assignAxis(CameraInput.FLYCAM_DOWN, CameraInput.FLYCAM_UP);
            return;
        }
        joystick.getXAxis().assignAxis(CameraInput.FLYCAM_STRAFERIGHT, CameraInput.FLYCAM_STRAFELEFT);
        joystick.getYAxis().assignAxis(CameraInput.FLYCAM_BACKWARD, CameraInput.FLYCAM_FORWARD);
        joystick.getAxis("rz").assignAxis(CameraInput.FLYCAM_DOWN, CameraInput.FLYCAM_UP);
        joystick.getAxis("z").assignAxis(CameraInput.FLYCAM_RIGHT, CameraInput.FLYCAM_LEFT);
        joystick.getPovYAxis().assignAxis(CameraInput.FLYCAM_RISE, CameraInput.FLYCAM_LOWER);
        if (joystick.getButton("Button 8") != null) {
            joystick.getButton("Button 8").assignButton(CameraInput.FLYCAM_INVERTY);
        }
    }

    public void moveCamera(float f10, boolean z10) {
        if (z10) {
            this.cam.getLeft(this.tempVel);
        } else {
            this.cam.getDirection(this.tempVel);
        }
        this.tempVel.multLocal(f10 * this.moveSpeed);
        this.tempPos.set(this.cam.getLocation());
        MotionAllowedListener motionAllowedListener = this.motionAllowed;
        if (motionAllowedListener != null) {
            motionAllowedListener.checkMotionAllowed(this.tempPos.m1292clone(), this.tempVel.m1292clone());
        } else {
            this.tempPos.addLocal(this.tempVel);
        }
        this.cam.setLocation(this.tempPos);
    }

    @Override
    public void onAction(String str, boolean z10, float f10) {
        if (this.enabled) {
            if (str.equals(CameraInput.FLYCAM_ROTATEDRAG) && this.dragToRotate) {
                this.canRotate = z10;
                this.inputManager.setCursorVisible(!z10);
            } else {
                if (!str.equals(CameraInput.FLYCAM_INVERTY) || z10) {
                    return;
                }
                this.invertY = !this.invertY;
            }
        }
    }

    @Override
    public void onAnalog(String str, float f10, float f11) {
        if (this.enabled) {
            if (str.equals(CameraInput.FLYCAM_LEFT)) {
                rotateCamera(f10, this.initialUpVec);
                return;
            }
            if (str.equals(CameraInput.FLYCAM_RIGHT)) {
                rotateCamera(-f10, this.initialUpVec);
                return;
            }
            if (str.equals(CameraInput.FLYCAM_UP)) {
                rotateCamera((-f10) * (this.invertY ? -1 : 1), this.cam.getLeft(this.tempLeft));
                return;
            }
            if (str.equals(CameraInput.FLYCAM_DOWN)) {
                rotateCamera(f10 * (this.invertY ? -1 : 1), this.cam.getLeft(this.tempLeft));
                return;
            }
            if (str.equals(CameraInput.FLYCAM_FORWARD)) {
                moveCamera(f10, false);
                return;
            }
            if (str.equals(CameraInput.FLYCAM_BACKWARD)) {
                moveCamera(-f10, false);
                return;
            }
            if (str.equals(CameraInput.FLYCAM_STRAFELEFT)) {
                moveCamera(f10, true);
                return;
            }
            if (str.equals(CameraInput.FLYCAM_STRAFERIGHT)) {
                moveCamera(-f10, true);
                return;
            }
            if (str.equals(CameraInput.FLYCAM_RISE)) {
                riseCamera(f10);
                return;
            }
            if (str.equals(CameraInput.FLYCAM_LOWER)) {
                riseCamera(-f10);
            } else if (str.equals(CameraInput.FLYCAM_ZOOMIN)) {
                zoomCamera(f10);
            } else if (str.equals(CameraInput.FLYCAM_ZOOMOUT)) {
                zoomCamera(-f10);
            }
        }
    }

    public void registerWithInput(InputManager inputManager) {
        this.inputManager = inputManager;
        inputManager.addMapping(CameraInput.FLYCAM_LEFT, new MouseAxisTrigger(0, true), new KeyTrigger(203));
        inputManager.addMapping(CameraInput.FLYCAM_RIGHT, new MouseAxisTrigger(0, false), new KeyTrigger(205));
        inputManager.addMapping(CameraInput.FLYCAM_UP, new MouseAxisTrigger(1, false), new KeyTrigger(200));
        inputManager.addMapping(CameraInput.FLYCAM_DOWN, new MouseAxisTrigger(1, true), new KeyTrigger(208));
        inputManager.addMapping(CameraInput.FLYCAM_ZOOMIN, new MouseAxisTrigger(2, false));
        inputManager.addMapping(CameraInput.FLYCAM_ZOOMOUT, new MouseAxisTrigger(2, true));
        inputManager.addMapping(CameraInput.FLYCAM_ROTATEDRAG, new MouseButtonTrigger(0));
        inputManager.addMapping(CameraInput.FLYCAM_STRAFELEFT, new KeyTrigger(30));
        inputManager.addMapping(CameraInput.FLYCAM_STRAFERIGHT, new KeyTrigger(32));
        inputManager.addMapping(CameraInput.FLYCAM_FORWARD, new KeyTrigger(17));
        inputManager.addMapping(CameraInput.FLYCAM_BACKWARD, new KeyTrigger(31));
        inputManager.addMapping(CameraInput.FLYCAM_RISE, new KeyTrigger(16));
        inputManager.addMapping(CameraInput.FLYCAM_LOWER, new KeyTrigger(44));
        inputManager.addListener(this, mappings);
        inputManager.setCursorVisible(this.dragToRotate || !isEnabled());
        Joystick[] joysticks = inputManager.getJoysticks();
        if (joysticks == null || joysticks.length <= 0) {
            return;
        }
        for (Joystick joystick : joysticks) {
            mapJoystick(joystick);
        }
    }

    public void riseCamera(float f10) {
        this.tempVel.set(this.initialUpVec).multLocal(f10 * this.moveSpeed);
        this.tempPos.set(this.cam.getLocation());
        MotionAllowedListener motionAllowedListener = this.motionAllowed;
        if (motionAllowedListener != null) {
            motionAllowedListener.checkMotionAllowed(this.tempPos.m1292clone(), this.tempVel.m1292clone());
        } else {
            this.tempPos.addLocal(this.tempVel);
        }
        this.cam.setLocation(this.tempPos);
    }

    public void rotateCamera(float f10, Vector3f vector3f) {
        if (!this.dragToRotate || this.canRotate) {
            this.tempMat.fromAngleNormalAxis(this.rotationSpeed * f10, vector3f);
            this.cam.getUp(this.tempUp);
            this.cam.getLeft(this.tempLeft);
            this.cam.getDirection(this.tempDir);
            Matrix3f matrix3f = this.tempMat;
            Vector3f vector3f2 = this.tempUp;
            matrix3f.mult(vector3f2, vector3f2);
            Matrix3f matrix3f2 = this.tempMat;
            Vector3f vector3f3 = this.tempLeft;
            matrix3f2.mult(vector3f3, vector3f3);
            Matrix3f matrix3f3 = this.tempMat;
            Vector3f vector3f4 = this.tempDir;
            matrix3f3.mult(vector3f4, vector3f4);
            this.tempQuat.fromAxes(this.tempLeft, this.tempUp, this.tempDir);
            this.tempQuat.normalizeLocal();
            this.cam.setAxes(this.tempQuat);
        }
    }

    public void setDragToRotate(boolean z10) {
        this.dragToRotate = z10;
        InputManager inputManager = this.inputManager;
        if (inputManager != null) {
            inputManager.setCursorVisible(z10);
        }
    }

    public void setEnabled(boolean z10) {
        InputManager inputManager;
        boolean z11;
        if (this.enabled && !z10 && (inputManager = this.inputManager) != null && (!(z11 = this.dragToRotate) || (z11 && this.canRotate))) {
            inputManager.setCursorVisible(true);
        }
        this.enabled = z10;
    }

    public void setMotionAllowedListener(MotionAllowedListener motionAllowedListener) {
        this.motionAllowed = motionAllowedListener;
    }

    public void setMoveSpeed(float f10) {
        this.moveSpeed = f10;
    }

    public void setRotationSpeed(float f10) {
        this.rotationSpeed = f10;
    }

    public void setUpVector(Vector3f vector3f) {
        this.initialUpVec.set(vector3f);
    }

    public void setZoomSpeed(float f10) {
        this.zoomSpeed = f10;
    }

    public void unregisterInput() {
        if (this.inputManager == null) {
            return;
        }
        for (String str : mappings) {
            if (this.inputManager.hasMapping(str)) {
                this.inputManager.deleteMapping(str);
            }
        }
        this.inputManager.removeListener(this);
        this.inputManager.setCursorVisible(!this.dragToRotate);
        this.inputManager = null;
    }

    public void zoomCamera(float f10) {
        if (!this.cam.isParallelProjection()) {
            float fov = this.cam.getFov() + (f10 * 0.1f * this.zoomSpeed);
            if (fov > 0.01f) {
                this.cam.setFov(fov);
                return;
            }
            return;
        }
        float f11 = (f10 * 0.01f * this.zoomSpeed) + 1.0f;
        if (f11 > 0.0f) {
            float frustumLeft = f11 * this.cam.getFrustumLeft();
            float frustumRight = f11 * this.cam.getFrustumRight();
            float frustumTop = f11 * this.cam.getFrustumTop();
            float frustumBottom = f11 * this.cam.getFrustumBottom();
            this.cam.setFrustum(this.cam.getFrustumNear(), this.cam.getFrustumFar(), frustumLeft, frustumRight, frustumTop, frustumBottom);
        }
    }
}
