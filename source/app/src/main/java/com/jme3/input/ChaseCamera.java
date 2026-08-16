package com.jme3.input;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.input.controls.ActionListener;
import com.jme3.input.controls.AnalogListener;
import com.jme3.input.controls.MouseAxisTrigger;
import com.jme3.input.controls.MouseButtonTrigger;
import com.jme3.input.controls.Trigger;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.Control;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;

public class ChaseCamera implements ActionListener, AnalogListener, Control, JmeCloneable {

    @Deprecated
    public static final String ChaseCamDown = "ChaseCamDown";

    @Deprecated
    public static final String ChaseCamMoveLeft = "ChaseCamMoveLeft";

    @Deprecated
    public static final String ChaseCamMoveRight = "ChaseCamMoveRight";

    @Deprecated
    public static final String ChaseCamToggleRotate = "ChaseCamToggleRotate";

    @Deprecated
    public static final String ChaseCamUp = "ChaseCamUp";

    @Deprecated
    public static final String ChaseCamZoomIn = "ChaseCamZoomIn";

    @Deprecated
    public static final String ChaseCamZoomOut = "ChaseCamZoomOut";
    protected Camera cam;
    protected boolean canRotate;
    protected boolean chasing;
    protected float chasingSensitivity;
    protected float distance;
    protected float distanceLerpFactor;
    protected boolean dragToRotate;
    protected boolean enabled;
    protected boolean hideCursorOnRotate;
    protected Vector3f initialUpVec;
    protected InputManager inputManager;
    protected boolean invertXaxis;
    protected boolean invertYaxis;
    protected boolean leftClickRotate;
    protected Vector3f lookAtOffset;
    protected float maxDistance;
    protected float maxVerticalRotation;
    protected float minDistance;
    protected float minVerticalRotation;
    protected float offsetDistance;
    protected final Vector3f pos;
    protected Vector3f prevPos;
    protected float previousTargetRotation;
    protected boolean rightClickRotate;
    protected boolean rotating;
    protected float rotation;
    protected float rotationLerpFactor;
    protected float rotationSensitivity;
    protected float rotationSpeed;
    protected boolean smoothMotion;
    protected Spatial target;
    protected final Vector3f targetDir;
    protected float targetDistance;
    protected Vector3f targetLocation;
    protected boolean targetMoves;
    protected float targetRotation;
    protected float targetVRotation;
    protected Vector3f temp;
    protected boolean trailing;
    protected boolean trailingEnabled;
    protected float trailingLerpFactor;
    protected float trailingRotationInertia;
    protected float trailingSensitivity;
    protected boolean vRotating;
    protected float vRotation;
    protected float vRotationLerpFactor;
    protected boolean veryCloseRotation;
    protected float zoomSensitivity;
    protected boolean zoomin;
    protected boolean zooming;

    public ChaseCamera(Camera camera, Spatial spatial) {
        this(camera);
        spatial.addControl(this);
    }

    public void cleanupWithInput(InputManager inputManager) {
        inputManager.deleteMapping("ChaseCamToggleRotate");
        inputManager.deleteMapping("ChaseCamDown");
        inputManager.deleteMapping("ChaseCamUp");
        inputManager.deleteMapping("ChaseCamMoveLeft");
        inputManager.deleteMapping("ChaseCamMoveRight");
        inputManager.deleteMapping("ChaseCamZoomIn");
        inputManager.deleteMapping("ChaseCamZoomOut");
        inputManager.removeListener(this);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.target = (Spatial) cloner.clone(this.target);
        computePosition();
        this.prevPos = new Vector3f(this.target.getWorldTranslation());
        this.cam.setLocation(this.pos);
    }

    @Override
    @Deprecated
    public Control cloneForSpatial(Spatial spatial) {
        throw new UnsupportedOperationException();
    }

    public void computePosition() {
        float sin = this.distance * FastMath.sin(1.5707964f - this.vRotation);
        this.pos.set(FastMath.cos(this.rotation) * sin, this.distance * FastMath.sin(this.vRotation), sin * FastMath.sin(this.rotation));
        this.pos.addLocal(this.target.getWorldTranslation());
    }

    public float getChasingSensitivity() {
        return this.chasingSensitivity;
    }

    public float getDistanceToTarget() {
        return this.distance;
    }

    public boolean getDownRotateOnCloseViewOnly() {
        return this.veryCloseRotation;
    }

    public float getHorizontalRotation() {
        return this.rotation;
    }

    public Vector3f getLookAtOffset() {
        return this.lookAtOffset;
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

    public float getRotationSensitivity() {
        return this.rotationSensitivity;
    }

    public float getRotationSpeed() {
        return this.rotationSpeed;
    }

    public float getTrailingRotationInertia() {
        return this.trailingRotationInertia;
    }

    public float getTrailingSensitivity() {
        return this.trailingSensitivity;
    }

    public Vector3f getUpVector() {
        return this.initialUpVec;
    }

    public float getVerticalRotation() {
        return this.vRotation;
    }

    public float getZoomSensitivity() {
        return this.zoomSensitivity;
    }

    public boolean isDragToRotate() {
        return this.dragToRotate;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isHideCursorOnRotate() {
        return this.hideCursorOnRotate;
    }

    public boolean isSmoothMotion() {
        return this.smoothMotion;
    }

    public boolean isTrailingEnabled() {
        return this.trailingEnabled;
    }

    @Override
    public Object jmeClone() {
        ChaseCamera chaseCamera = new ChaseCamera(this.cam, this.inputManager);
        chaseCamera.target = this.target;
        chaseCamera.setMaxDistance(getMaxDistance());
        chaseCamera.setMinDistance(getMinDistance());
        return chaseCamera;
    }

    @Override
    public void onAction(String str, boolean z10, float f10) {
        if (this.dragToRotate && str.equals("ChaseCamToggleRotate") && this.enabled) {
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
        if (str.equals("ChaseCamMoveLeft")) {
            rotateCamera(-f10);
            return;
        }
        if (str.equals("ChaseCamMoveRight")) {
            rotateCamera(f10);
            return;
        }
        if (str.equals("ChaseCamUp")) {
            vRotateCamera(f10);
            return;
        }
        if (str.equals("ChaseCamDown")) {
            vRotateCamera(-f10);
            return;
        }
        if (str.equals("ChaseCamZoomIn")) {
            zoomCamera(-f10);
            if (!this.zoomin) {
                this.distanceLerpFactor = 0.0f;
            }
            this.zoomin = true;
            return;
        }
        if (str.equals("ChaseCamZoomOut")) {
            zoomCamera(f10);
            if (this.zoomin) {
                this.distanceLerpFactor = 0.0f;
            }
            this.zoomin = false;
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.maxDistance = capsule.readFloat("maxDistance", 40.0f);
        this.minDistance = capsule.readFloat("minDistance", 1.0f);
    }

    public final void registerWithInput(InputManager inputManager) {
        String[] strArr = {"ChaseCamToggleRotate", "ChaseCamDown", "ChaseCamUp", "ChaseCamMoveLeft", "ChaseCamMoveRight", "ChaseCamZoomIn", "ChaseCamZoomOut"};
        this.inputManager = inputManager;
        if (this.invertYaxis) {
            inputManager.addMapping("ChaseCamDown", new MouseAxisTrigger(1, false));
            inputManager.addMapping("ChaseCamUp", new MouseAxisTrigger(1, true));
        } else {
            inputManager.addMapping("ChaseCamDown", new MouseAxisTrigger(1, true));
            inputManager.addMapping("ChaseCamUp", new MouseAxisTrigger(1, false));
        }
        inputManager.addMapping("ChaseCamZoomIn", new MouseAxisTrigger(2, false));
        inputManager.addMapping("ChaseCamZoomOut", new MouseAxisTrigger(2, true));
        if (this.invertXaxis) {
            inputManager.addMapping("ChaseCamMoveLeft", new MouseAxisTrigger(0, false));
            inputManager.addMapping("ChaseCamMoveRight", new MouseAxisTrigger(0, true));
        } else {
            inputManager.addMapping("ChaseCamMoveLeft", new MouseAxisTrigger(0, true));
            inputManager.addMapping("ChaseCamMoveRight", new MouseAxisTrigger(0, false));
        }
        inputManager.addMapping("ChaseCamToggleRotate", new MouseButtonTrigger(0));
        inputManager.addMapping("ChaseCamToggleRotate", new MouseButtonTrigger(1));
        inputManager.addListener(this, strArr);
    }

    @Override
    public void render(RenderManager renderManager, ViewPort viewPort) {
    }

    public void rotateCamera(float f10) {
        if (this.canRotate && this.enabled) {
            this.rotating = true;
            this.targetRotation += f10 * this.rotationSpeed;
        }
    }

    public void setChasingSensitivity(float f10) {
        this.chasingSensitivity = f10;
    }

    public void setDefaultDistance(float f10) {
        this.distance = f10;
        this.targetDistance = f10;
    }

    public void setDefaultHorizontalRotation(float f10) {
        this.rotation = f10;
        this.targetRotation = f10;
    }

    public void setDefaultVerticalRotation(float f10) {
        this.vRotation = f10;
        this.targetVRotation = f10;
    }

    public void setDownRotateOnCloseViewOnly(boolean z10) {
        this.veryCloseRotation = z10;
    }

    public void setDragToRotate(boolean z10) {
        this.dragToRotate = z10;
        this.canRotate = !z10;
        this.inputManager.setCursorVisible(z10);
    }

    public void setEnabled(boolean z10) {
        this.enabled = z10;
        if (z10) {
            this.canRotate = !this.dragToRotate;
        } else {
            this.canRotate = false;
        }
    }

    public void setHideCursorOnRotate(boolean z10) {
        this.hideCursorOnRotate = z10;
    }

    public void setInvertHorizontalAxis(boolean z10) {
        this.invertXaxis = z10;
        this.inputManager.deleteMapping("ChaseCamMoveLeft");
        this.inputManager.deleteMapping("ChaseCamMoveRight");
        if (z10) {
            this.inputManager.addMapping("ChaseCamMoveLeft", new MouseAxisTrigger(0, false));
            this.inputManager.addMapping("ChaseCamMoveRight", new MouseAxisTrigger(0, true));
        } else {
            this.inputManager.addMapping("ChaseCamMoveLeft", new MouseAxisTrigger(0, true));
            this.inputManager.addMapping("ChaseCamMoveRight", new MouseAxisTrigger(0, false));
        }
        this.inputManager.addListener(this, "ChaseCamMoveLeft", "ChaseCamMoveRight");
    }

    public void setInvertVerticalAxis(boolean z10) {
        this.invertYaxis = z10;
        this.inputManager.deleteMapping("ChaseCamDown");
        this.inputManager.deleteMapping("ChaseCamUp");
        if (z10) {
            this.inputManager.addMapping("ChaseCamDown", new MouseAxisTrigger(1, false));
            this.inputManager.addMapping("ChaseCamUp", new MouseAxisTrigger(1, true));
        } else {
            this.inputManager.addMapping("ChaseCamDown", new MouseAxisTrigger(1, true));
            this.inputManager.addMapping("ChaseCamUp", new MouseAxisTrigger(1, false));
        }
        this.inputManager.addListener(this, "ChaseCamDown", "ChaseCamUp");
    }

    public void setLookAtOffset(Vector3f vector3f) {
        this.lookAtOffset = vector3f;
    }

    public void setMaxDistance(float f10) {
        this.maxDistance = f10;
        float f11 = this.distance;
        if (f10 < f11) {
            zoomCamera(f10 - f11);
        }
    }

    public void setMaxVerticalRotation(float f10) {
        this.maxVerticalRotation = f10;
    }

    public void setMinDistance(float f10) {
        this.minDistance = f10;
        float f11 = this.distance;
        if (f10 > f11) {
            zoomCamera(f11 - f10);
        }
    }

    public void setMinVerticalRotation(float f10) {
        this.minVerticalRotation = f10;
    }

    public void setRotationSensitivity(float f10) {
        this.rotationSensitivity = f10;
    }

    public void setRotationSpeed(float f10) {
        this.rotationSpeed = f10;
    }

    public void setSmoothMotion(boolean z10) {
        this.smoothMotion = z10;
    }

    @Override
    public void setSpatial(Spatial spatial) {
        this.target = spatial;
        if (spatial == null) {
            return;
        }
        computePosition();
        this.prevPos = new Vector3f(this.target.getWorldTranslation());
        this.cam.setLocation(this.pos);
    }

    public void setToggleRotationTrigger(Trigger... triggerArr) {
        this.inputManager.deleteMapping("ChaseCamToggleRotate");
        this.inputManager.addMapping("ChaseCamToggleRotate", triggerArr);
        this.inputManager.addListener(this, "ChaseCamToggleRotate");
    }

    public void setTrailingEnabled(boolean z10) {
        this.trailingEnabled = z10;
    }

    public void setTrailingRotationInertia(float f10) {
        this.trailingRotationInertia = f10;
    }

    public void setTrailingSensitivity(float f10) {
        this.trailingSensitivity = f10;
    }

    public void setUpVector(Vector3f vector3f) {
        this.initialUpVec = vector3f;
    }

    public void setZoomInTrigger(Trigger... triggerArr) {
        this.inputManager.deleteMapping("ChaseCamZoomIn");
        this.inputManager.addMapping("ChaseCamZoomIn", triggerArr);
        this.inputManager.addListener(this, "ChaseCamZoomIn");
    }

    public void setZoomOutTrigger(Trigger... triggerArr) {
        this.inputManager.deleteMapping("ChaseCamZoomOut");
        this.inputManager.addMapping("ChaseCamZoomOut", triggerArr);
        this.inputManager.addListener(this, "ChaseCamZoomOut");
    }

    public void setZoomSensitivity(float f10) {
        this.zoomSensitivity = f10;
    }

    @Override
    public void update(float f10) {
        updateCamera(f10);
    }

    public void updateCamera(float f10) {
        if (this.enabled) {
            this.targetLocation.set(this.target.getWorldTranslation()).addLocal(this.lookAtOffset);
            if (this.smoothMotion) {
                this.targetDir.set(this.targetLocation).subtractLocal(this.prevPos);
                if (this.offsetDistance < this.targetDir.length()) {
                    this.chasing = true;
                    if (this.trailingEnabled) {
                        this.trailing = true;
                    }
                    this.targetMoves = true;
                } else {
                    if (this.targetMoves && !this.canRotate) {
                        float f11 = this.targetRotation;
                        float f12 = this.rotation;
                        float f13 = f11 - f12;
                        float f14 = this.trailingRotationInertia;
                        if (f13 > f14) {
                            this.targetRotation = f12 + f14;
                        } else if (f11 - f12 < (-f14)) {
                            this.targetRotation = f12 - f14;
                        }
                    }
                    this.targetMoves = false;
                }
                if (this.canRotate) {
                    this.trailingLerpFactor = 0.0f;
                    this.trailing = false;
                }
                if (this.trailingEnabled && this.trailing) {
                    if (this.targetMoves) {
                        Vector3f normalizeLocal = this.targetDir.negate().normalizeLocal();
                        Vector3f vector3f = Vector3f.UNIT_X;
                        normalizeLocal.f81612y = 0.0f;
                        if (this.targetDir.f81613z > 0.0f) {
                            this.targetRotation = 6.2831855f - FastMath.acos(normalizeLocal.dot(vector3f));
                        } else {
                            this.targetRotation = FastMath.acos(normalizeLocal.dot(vector3f));
                        }
                        float f15 = this.targetRotation;
                        float f16 = this.rotation;
                        if (f15 - f16 > 3.1415927f || f15 - f16 < -3.1415927f) {
                            this.targetRotation = f15 - 6.2831855f;
                        }
                        float f17 = this.targetRotation;
                        float f18 = this.previousTargetRotation;
                        if (f17 != f18 && FastMath.abs(f17 - f18) > 0.3926991f) {
                            this.trailingLerpFactor = 0.0f;
                        }
                        this.previousTargetRotation = this.targetRotation;
                    }
                    float min = Math.min(this.trailingLerpFactor + (f10 * f10 * this.trailingSensitivity), 1.0f);
                    this.trailingLerpFactor = min;
                    float interpolateLinear = FastMath.interpolateLinear(min, this.rotation, this.targetRotation);
                    this.rotation = interpolateLinear;
                    float f19 = this.targetRotation;
                    if (f19 + 0.01f >= interpolateLinear && f19 - 0.01f <= interpolateLinear) {
                        this.trailing = false;
                        this.trailingLerpFactor = 0.0f;
                    }
                }
                if (this.chasing) {
                    this.distance = this.temp.set(this.targetLocation).subtractLocal(this.cam.getLocation()).length();
                    float min2 = Math.min(this.distanceLerpFactor + (f10 * f10 * this.chasingSensitivity * 0.05f), 1.0f);
                    this.distanceLerpFactor = min2;
                    float interpolateLinear2 = FastMath.interpolateLinear(min2, this.distance, this.targetDistance);
                    this.distance = interpolateLinear2;
                    float f20 = this.targetDistance;
                    if (f20 + 0.01f >= interpolateLinear2 && f20 - 0.01f <= interpolateLinear2) {
                        this.distanceLerpFactor = 0.0f;
                        this.chasing = false;
                    }
                }
                if (this.zooming) {
                    float min3 = Math.min(this.distanceLerpFactor + (f10 * f10 * this.zoomSensitivity), 1.0f);
                    this.distanceLerpFactor = min3;
                    float interpolateLinear3 = FastMath.interpolateLinear(min3, this.distance, this.targetDistance);
                    this.distance = interpolateLinear3;
                    float f21 = this.targetDistance;
                    if (f21 + 0.1f >= interpolateLinear3 && f21 - 0.1f <= interpolateLinear3) {
                        this.zooming = false;
                        this.distanceLerpFactor = 0.0f;
                    }
                }
                if (this.rotating) {
                    float min4 = Math.min(this.rotationLerpFactor + (f10 * f10 * this.rotationSensitivity), 1.0f);
                    this.rotationLerpFactor = min4;
                    float interpolateLinear4 = FastMath.interpolateLinear(min4, this.rotation, this.targetRotation);
                    this.rotation = interpolateLinear4;
                    float f22 = this.targetRotation;
                    if (f22 + 0.01f >= interpolateLinear4 && f22 - 0.01f <= interpolateLinear4) {
                        this.rotating = false;
                        this.rotationLerpFactor = 0.0f;
                    }
                }
                if (this.vRotating) {
                    float min5 = Math.min(this.vRotationLerpFactor + (f10 * f10 * this.rotationSensitivity), 1.0f);
                    this.vRotationLerpFactor = min5;
                    float interpolateLinear5 = FastMath.interpolateLinear(min5, this.vRotation, this.targetVRotation);
                    this.vRotation = interpolateLinear5;
                    float f23 = this.targetVRotation;
                    if (f23 + 0.01f >= interpolateLinear5 && f23 - 0.01f <= interpolateLinear5) {
                        this.vRotating = false;
                        this.vRotationLerpFactor = 0.0f;
                    }
                }
                computePosition();
                this.cam.setLocation(this.pos.addLocal(this.lookAtOffset));
            } else {
                this.vRotation = this.targetVRotation;
                this.rotation = this.targetRotation;
                this.distance = this.targetDistance;
                computePosition();
                this.cam.setLocation(this.pos.addLocal(this.lookAtOffset));
            }
            this.prevPos.set(this.targetLocation);
            this.cam.lookAt(this.targetLocation, this.initialUpVec);
        }
    }

    public void vRotateCamera(float f10) {
        if (this.canRotate && this.enabled) {
            this.vRotating = true;
            float f11 = this.targetVRotation;
            float f12 = (f10 * this.rotationSpeed) + f11;
            this.targetVRotation = f12;
            if (f12 > this.maxVerticalRotation) {
                this.targetVRotation = f11;
            }
            if (!this.veryCloseRotation) {
                if (this.targetVRotation < this.minVerticalRotation) {
                    this.targetVRotation = f11;
                    return;
                }
                return;
            }
            float f13 = this.targetVRotation;
            float f14 = this.minVerticalRotation;
            if (f13 < f14 && this.targetDistance > this.minDistance + 1.0f) {
                this.targetVRotation = f14;
            } else if (f13 < -1.5707964f) {
                this.targetVRotation = f11;
            }
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        throw new UnsupportedOperationException("remove ChaseCamera before saving");
    }

    public void zoomCamera(float f10) {
        if (this.enabled) {
            this.zooming = true;
            float f11 = this.targetDistance + (f10 * this.zoomSensitivity);
            this.targetDistance = f11;
            float f12 = this.maxDistance;
            if (f11 > f12) {
                this.targetDistance = f12;
            }
            float f13 = this.targetDistance;
            float f14 = this.minDistance;
            if (f13 < f14) {
                this.targetDistance = f14;
            }
            if (this.veryCloseRotation) {
                float f15 = this.targetVRotation;
                float f16 = this.minVerticalRotation;
                if (f15 >= f16 || this.targetDistance <= f14 + 1.0f) {
                    return;
                }
                this.targetVRotation = f16;
            }
        }
    }

    public ChaseCamera(Camera camera) {
        this.target = null;
        this.minVerticalRotation = 0.0f;
        this.maxVerticalRotation = 1.5707964f;
        this.minDistance = 1.0f;
        this.maxDistance = 40.0f;
        this.distance = 20.0f;
        this.rotationSpeed = 1.0f;
        this.rotation = 0.0f;
        this.trailingRotationInertia = 0.05f;
        this.zoomSensitivity = 2.0f;
        this.rotationSensitivity = 5.0f;
        this.chasingSensitivity = 5.0f;
        this.trailingSensitivity = 0.5f;
        this.vRotation = 0.5235988f;
        this.smoothMotion = false;
        this.trailingEnabled = true;
        this.rotationLerpFactor = 0.0f;
        this.trailingLerpFactor = 0.0f;
        this.rotating = false;
        this.vRotating = false;
        this.targetRotation = 0.0f;
        this.targetVRotation = 0.5235988f;
        this.vRotationLerpFactor = 0.0f;
        this.targetDistance = 20.0f;
        this.distanceLerpFactor = 0.0f;
        this.zooming = false;
        this.trailing = false;
        this.chasing = false;
        this.veryCloseRotation = true;
        this.offsetDistance = 0.002f;
        this.targetMoves = false;
        this.enabled = true;
        this.cam = null;
        this.targetDir = new Vector3f();
        this.pos = new Vector3f();
        this.targetLocation = new Vector3f(0.0f, 0.0f, 0.0f);
        this.dragToRotate = true;
        this.lookAtOffset = new Vector3f(0.0f, 0.0f, 0.0f);
        this.leftClickRotate = true;
        this.rightClickRotate = true;
        this.temp = new Vector3f(0.0f, 0.0f, 0.0f);
        this.invertYaxis = false;
        this.invertXaxis = false;
        this.hideCursorOnRotate = true;
        this.cam = camera;
        this.initialUpVec = camera.getUp().m1292clone();
    }

    public ChaseCamera(Camera camera, InputManager inputManager) {
        this(camera);
        registerWithInput(inputManager);
    }

    public ChaseCamera(Camera camera, Spatial spatial, InputManager inputManager) {
        this(camera, spatial);
        registerWithInput(inputManager);
    }
}
