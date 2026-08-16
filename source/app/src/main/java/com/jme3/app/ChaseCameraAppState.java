package com.jme3.app;

import com.jme3.app.state.AbstractAppState;
import com.jme3.app.state.AppStateManager;
import com.jme3.input.InputManager;
import com.jme3.input.controls.ActionListener;
import com.jme3.input.controls.AnalogListener;
import com.jme3.input.controls.MouseAxisTrigger;
import com.jme3.input.controls.MouseButtonTrigger;
import com.jme3.input.controls.Trigger;
import com.jme3.math.FastMath;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.scene.CameraNode;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.CameraControl;
import com.jme3.util.TempVars;

public class ChaseCameraAppState extends AbstractAppState implements ActionListener, AnalogListener {
    protected boolean canRotate;
    protected InputManager inputManager;
    protected Spatial spatial;
    protected Node target;
    protected boolean invertYaxis = false;
    protected boolean invertXaxis = false;
    protected boolean hideCursorOnRotate = true;
    protected boolean dragToRotate = true;
    protected float rotationSpeed = 1.0f;
    protected float zoomSpeed = 2.0f;
    protected float minDistance = 1.0f;
    protected float maxDistance = 40.0f;
    protected float distance = 20.0f;
    protected float maxVerticalRotation = 1.4f;
    protected float verticalRotation = 0.0f;
    protected float minVerticalRotation = 0.0f;
    protected float horizontalRotation = 0.0f;
    protected Vector3f upVector = new Vector3f();
    protected Vector3f leftVector = new Vector3f();
    protected Trigger[] zoomOutTrigger = {new MouseAxisTrigger(2, true)};
    protected Trigger[] zoomInTrigger = {new MouseAxisTrigger(2, false)};
    protected Trigger[] toggleRotateTrigger = {new MouseButtonTrigger(0), new MouseButtonTrigger(1)};
    protected CameraNode camNode = new CameraNode("ChaseCameraNode", new CameraControl());

    private void initHorizontalAxisInput() {
        if (this.invertXaxis) {
            this.inputManager.addMapping("ChaseCamMoveLeft", new MouseAxisTrigger(0, false));
            this.inputManager.addMapping("ChaseCamMoveRight", new MouseAxisTrigger(0, true));
        } else {
            this.inputManager.addMapping("ChaseCamMoveLeft", new MouseAxisTrigger(0, true));
            this.inputManager.addMapping("ChaseCamMoveRight", new MouseAxisTrigger(0, false));
        }
    }

    private void initToggleRotateInput() {
        this.inputManager.addMapping("ChaseCamToggleRotate", this.toggleRotateTrigger);
    }

    private void initVerticalAxisInputs() {
        if (this.invertYaxis) {
            this.inputManager.addMapping("ChaseCamDown", new MouseAxisTrigger(1, false));
            this.inputManager.addMapping("ChaseCamUp", new MouseAxisTrigger(1, true));
        } else {
            this.inputManager.addMapping("ChaseCamDown", new MouseAxisTrigger(1, true));
            this.inputManager.addMapping("ChaseCamUp", new MouseAxisTrigger(1, false));
        }
    }

    private void initZoomInput() {
        this.inputManager.addMapping("ChaseCamZoomIn", this.zoomInTrigger);
        this.inputManager.addMapping("ChaseCamZoomOut", this.zoomOutTrigger);
    }

    public float getMaxDistance() {
        return this.maxDistance;
    }

    public float getMaxVerticalRotation() {
        return this.maxVerticalRotation;
    }

    public float getMinDistance() {
        return this.minDistance;
    }

    public float getMinVerticalRotation() {
        return this.minVerticalRotation;
    }

    public float getRotationSpeed() {
        return this.rotationSpeed;
    }

    public float getZoomSpeed() {
        return this.zoomSpeed;
    }

    @Override
    public void initialize(AppStateManager appStateManager, Application application) {
        super.initialize(appStateManager, application);
        this.inputManager = application.getInputManager();
        this.target = new Node("ChaseCamTarget");
        this.camNode.setCamera(application.getCamera());
        this.camNode.setControlDir(CameraControl.ControlDirection.SpatialToCamera);
        this.target.attachChild(this.camNode);
        this.camNode.setLocalTranslation(0.0f, 0.0f, this.distance);
        this.upVector = application.getCamera().getUp().m1292clone();
        this.leftVector = application.getCamera().getLeft().m1292clone();
        registerWithInput();
        rotateCamera();
    }

    public boolean isDragToRotate() {
        return this.dragToRotate;
    }

    @Override
    public void onAction(String str, boolean z10, float f10) {
        if (isEnabled() && this.dragToRotate && str.equals("ChaseCamToggleRotate") && isEnabled()) {
            if (z10) {
                this.canRotate = true;
                if (this.hideCursorOnRotate) {
                    this.inputManager.setCursorVisible(false);
                    return;
                }
                return;
            }
            this.canRotate = false;
            if (this.hideCursorOnRotate) {
                this.inputManager.setCursorVisible(true);
            }
        }
    }

    @Override
    public void onAnalog(String str, float f10, float f11) {
        if (isEnabled()) {
            if (this.canRotate) {
                if (str.equals("ChaseCamMoveLeft")) {
                    this.horizontalRotation -= this.rotationSpeed * f10;
                    rotateCamera();
                } else if (str.equals("ChaseCamMoveRight")) {
                    this.horizontalRotation += this.rotationSpeed * f10;
                    rotateCamera();
                } else if (str.equals("ChaseCamUp")) {
                    this.verticalRotation += this.rotationSpeed * f10;
                    rotateCamera();
                } else if (str.equals("ChaseCamDown")) {
                    this.verticalRotation -= this.rotationSpeed * f10;
                    rotateCamera();
                }
            }
            if (str.equals("ChaseCamZoomIn")) {
                zoomCamera((-f10) * this.zoomSpeed);
            } else if (str.equals("ChaseCamZoomOut")) {
                zoomCamera(f10 * this.zoomSpeed);
            }
        }
    }

    public final void registerWithInput() {
        initVerticalAxisInputs();
        initZoomInput();
        initHorizontalAxisInput();
        initToggleRotateInput();
        this.inputManager.addListener(this, "ChaseCamToggleRotate", "ChaseCamDown", "ChaseCamUp", "ChaseCamMoveLeft", "ChaseCamMoveRight", "ChaseCamZoomIn", "ChaseCamZoomOut");
        this.inputManager.setCursorVisible(this.dragToRotate);
    }

    public void rotateCamera() {
        this.verticalRotation = FastMath.clamp(this.verticalRotation, this.minVerticalRotation, this.maxVerticalRotation);
        TempVars tempVars = TempVars.get();
        Quaternion quaternion = tempVars.quat1;
        Quaternion quaternion2 = tempVars.quat2;
        quaternion.fromAngleNormalAxis(this.verticalRotation, this.leftVector);
        quaternion2.fromAngleNormalAxis(this.horizontalRotation, this.upVector);
        quaternion2.multLocal(quaternion);
        this.target.setLocalRotation(quaternion2);
        tempVars.release();
    }

    public void setDefaultDistance(float f10) {
        this.distance = f10;
    }

    public void setDefaultHorizontalRotation(float f10) {
        this.horizontalRotation = f10;
    }

    public void setDefaultVerticalRotation(float f10) {
        this.verticalRotation = f10;
    }

    public void setDragToRotate(boolean z10) {
        this.dragToRotate = z10;
        this.canRotate = !z10;
        InputManager inputManager = this.inputManager;
        if (inputManager != null) {
            inputManager.setCursorVisible(z10);
        }
    }

    public void setInvertHorizontalAxis(boolean z10) {
        this.invertXaxis = z10;
        InputManager inputManager = this.inputManager;
        if (inputManager != null) {
            inputManager.deleteMapping("ChaseCamMoveLeft");
            this.inputManager.deleteMapping("ChaseCamMoveRight");
            initHorizontalAxisInput();
            this.inputManager.addListener(this, "ChaseCamMoveLeft", "ChaseCamMoveRight");
        }
    }

    public void setInvertVerticalAxis(boolean z10) {
        this.invertYaxis = z10;
        InputManager inputManager = this.inputManager;
        if (inputManager != null) {
            inputManager.deleteMapping("ChaseCamDown");
            this.inputManager.deleteMapping("ChaseCamUp");
            initVerticalAxisInputs();
            this.inputManager.addListener(this, "ChaseCamDown", "ChaseCamUp");
        }
    }

    public void setMaxDistance(float f10) {
        this.maxDistance = f10;
        if (this.initialized) {
            zoomCamera(this.distance);
        }
    }

    public void setMaxVerticalRotation(float f10) {
        this.maxVerticalRotation = f10;
        if (this.initialized) {
            rotateCamera();
        }
    }

    public void setMinDistance(float f10) {
        this.minDistance = f10;
        if (this.initialized) {
            zoomCamera(this.distance);
        }
    }

    public void setMinVerticalRotation(float f10) {
        this.minVerticalRotation = f10;
        if (this.initialized) {
            rotateCamera();
        }
    }

    public void setRotationSpeed(float f10) {
        this.rotationSpeed = f10;
    }

    public void setTarget(Spatial spatial) {
        this.spatial = spatial;
    }

    public void setToggleRotationTrigger(Trigger... triggerArr) {
        this.toggleRotateTrigger = triggerArr;
        InputManager inputManager = this.inputManager;
        if (inputManager != null) {
            inputManager.deleteMapping("ChaseCamToggleRotate");
            initToggleRotateInput();
            this.inputManager.addListener(this, "ChaseCamToggleRotate");
        }
    }

    public void setZoomInTrigger(Trigger... triggerArr) {
        this.zoomInTrigger = triggerArr;
        InputManager inputManager = this.inputManager;
        if (inputManager != null) {
            inputManager.deleteMapping("ChaseCamZoomIn");
            this.inputManager.addMapping("ChaseCamZoomIn", this.zoomInTrigger);
            this.inputManager.addListener(this, "ChaseCamZoomIn");
        }
    }

    public void setZoomOutTrigger(Trigger... triggerArr) {
        this.zoomOutTrigger = triggerArr;
        InputManager inputManager = this.inputManager;
        if (inputManager != null) {
            inputManager.deleteMapping("ChaseCamZoomOut");
            this.inputManager.addMapping("ChaseCamZoomOut", this.zoomOutTrigger);
            this.inputManager.addListener(this, "ChaseCamZoomOut");
        }
    }

    public void setZoomSpeed(float f10) {
        this.zoomSpeed = f10;
    }

    @Override
    public void update(float f10) {
        Spatial spatial = this.spatial;
        if (spatial == null) {
            throw new IllegalArgumentException("The spatial to follow is null, please use the setTarget method");
        }
        this.target.setLocalTranslation(spatial.getWorldTranslation());
        this.camNode.lookAt(this.target.getWorldTranslation(), this.upVector);
        this.target.updateLogicalState(f10);
        this.target.updateGeometricState();
    }

    public void zoomCamera(float f10) {
        this.distance = FastMath.clamp(this.distance + f10, this.minDistance, this.maxDistance);
        this.camNode.setLocalTranslation(new Vector3f(0.0f, 0.0f, this.distance));
    }
}
