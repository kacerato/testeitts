package com.ardor3d.input.control;

import com.ardor3d.framework.Canvas;
import com.ardor3d.input.MouseState;
import com.ardor3d.input.logical.InputTrigger;
import com.ardor3d.input.logical.LogicalLayer;
import com.ardor3d.input.logical.MouseWheelMovedCondition;
import com.ardor3d.input.logical.TriggerAction;
import com.ardor3d.input.logical.TriggerConditions;
import com.ardor3d.input.logical.TwoInputStates;
import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.renderer.Camera;
import com.ardor3d.scenegraph.Spatial;
import w2.I;
import w2.J;

public class OrbitCamControl {
    public static final double ABSOLUTE_MAXASCENT = 1.5699236621688994d;
    protected double _baseDistance;
    protected Vector3 _camPosition;
    protected Camera _camera;
    protected boolean _dirty;
    protected boolean _invertedWheel;
    protected boolean _invertedX;
    protected boolean _invertedY;
    protected Vector3 _lookAtPoint;
    protected Spatial _lookAtSpatial;
    protected double _maxAscent;
    protected double _maxZoomDistance;
    protected double _minAscent;
    protected double _minZoomDistance;
    protected InputTrigger _mouseTrigger;
    protected Vector3 _sphereCoords;
    protected TargetType _targetType;
    protected Vector3 _worldUpVec;
    protected double _xSpeed;
    protected double _ySpeed;
    protected double _zoomSpeed;

    public enum TargetType {
        Point,
        Spatial
    }

    public OrbitCamControl(Camera camera, ReadOnlyVector3 readOnlyVector3) {
        this._worldUpVec = new Vector3(Vector3.UNIT_Y);
        this._sphereCoords = new Vector3();
        this._camPosition = new Vector3();
        Vector3 vector3 = new Vector3();
        this._lookAtPoint = vector3;
        this._lookAtSpatial = null;
        this._invertedX = false;
        this._invertedY = false;
        this._invertedWheel = true;
        this._zoomSpeed = 0.01d;
        this._baseDistance = 15.0d;
        this._minZoomDistance = 1.0d;
        this._maxZoomDistance = 100.0d;
        this._minAscent = -1.5699236621688994d;
        this._maxAscent = 1.5699236621688994d;
        this._xSpeed = 0.01d;
        this._ySpeed = 0.01d;
        this._dirty = true;
        this._camera = camera;
        this._targetType = TargetType.Point;
        vector3.set(readOnlyVector3);
    }

    public double getBaseDistance() {
        return this._baseDistance;
    }

    public Camera getCamera() {
        return this._camera;
    }

    public Vector3 getLookAtPoint() {
        return this._lookAtPoint;
    }

    public Spatial getLookAtSpatial() {
        return this._lookAtSpatial;
    }

    public double getMaxAscent() {
        return this._maxAscent;
    }

    public double getMaxZoomDistance() {
        return this._maxZoomDistance;
    }

    public double getMinAscent() {
        return this._minAscent;
    }

    public double getMinZoomDistance() {
        return this._minZoomDistance;
    }

    public TargetType getTargetType() {
        return this._targetType;
    }

    public ReadOnlyVector3 getWorldUpVec() {
        return this._worldUpVec;
    }

    public double getXSpeed() {
        return this._xSpeed;
    }

    public double getYSpeed() {
        return this._ySpeed;
    }

    public double getZoomSpeed() {
        return this._zoomSpeed;
    }

    public boolean isInvertedWheel() {
        return this._invertedWheel;
    }

    public boolean isInvertedX() {
        return this._invertedX;
    }

    public boolean isInvertedY() {
        return this._invertedY;
    }

    public void makeDirty() {
        this._dirty = true;
    }

    public void move(double d10, double d11) {
        if (this._invertedX) {
            d10 = -d10;
        }
        if (this._invertedY) {
            d11 = -d11;
        }
        Vector3 vector3 = this._sphereCoords;
        vector3.setY(MathUtils.moduloPositive(vector3.getY() - d10, 6.283185307179586d));
        Vector3 vector32 = this._sphereCoords;
        vector32.setZ(MathUtils.clamp(vector32.getZ() + d11, this._minAscent, this._maxAscent));
        makeDirty();
    }

    public void setBaseDistance(double d10) {
        this._baseDistance = d10;
        zoom(0.0d);
    }

    public void setCamera(Camera camera) {
        this._camera = camera;
    }

    public void setInvertedWheel(boolean z10) {
        this._invertedWheel = z10;
    }

    public void setInvertedX(boolean z10) {
        this._invertedX = z10;
    }

    public void setInvertedY(boolean z10) {
        this._invertedY = z10;
    }

    public void setLookAtPoint(Vector3 vector3) {
        this._dirty = !vector3.equals(this._lookAtPoint);
        this._lookAtPoint = vector3;
        this._targetType = TargetType.Point;
    }

    public void setLookAtSpatial(Spatial spatial) {
        this._dirty = spatial != this._lookAtSpatial;
        this._lookAtSpatial = spatial;
        this._targetType = TargetType.Spatial;
    }

    public void setMaxAscent(double d10) {
        this._maxAscent = Math.min(d10, 1.5699236621688994d);
        move(0.0d, 0.0d);
    }

    public void setMaxZoomDistance(double d10) {
        this._maxZoomDistance = d10;
        zoom(0.0d);
    }

    public void setMinAscent(double d10) {
        this._minAscent = Math.max(d10, -1.5699236621688994d);
        move(0.0d, 0.0d);
    }

    public void setMinZoomDistance(double d10) {
        this._minZoomDistance = d10;
        zoom(0.0d);
    }

    public void setSphereCoords(ReadOnlyVector3 readOnlyVector3) {
        this._sphereCoords.set(readOnlyVector3);
        makeDirty();
    }

    public void setWorldUpVec(ReadOnlyVector3 readOnlyVector3) {
        this._worldUpVec.set(readOnlyVector3);
        this._dirty = true;
    }

    public void setXSpeed(double d10) {
        this._xSpeed = d10;
    }

    public void setYSpeed(double d10) {
        this._ySpeed = d10;
    }

    public void setZoomSpeed(double d10) {
        this._zoomSpeed = d10;
    }

    public void setupMouseTriggers(LogicalLayer logicalLayer, boolean z10) {
        I t10 = J.t(TriggerConditions.leftButtonDown(), J.t(TriggerConditions.rightButtonDown(), TriggerConditions.middleButtonDown()));
        MouseWheelMovedCondition mouseWheelMovedCondition = new MouseWheelMovedCondition();
        I e10 = J.e(TriggerConditions.mouseMoved(), t10);
        TriggerAction triggerAction = new TriggerAction() {
            private boolean firstPing = true;

            @Override
            public void perform(Canvas canvas, TwoInputStates twoInputStates, double d10) {
                MouseState mouseState = twoInputStates.getCurrent().getMouseState();
                if (mouseState.getDx() != 0 || mouseState.getDy() != 0) {
                    if (this.firstPing) {
                        this.firstPing = false;
                    } else {
                        OrbitCamControl orbitCamControl = OrbitCamControl.this;
                        orbitCamControl.move(orbitCamControl._xSpeed * mouseState.getDx(), OrbitCamControl.this._ySpeed * mouseState.getDy());
                    }
                }
                if (mouseState.getDwheel() != 0) {
                    OrbitCamControl orbitCamControl2 = OrbitCamControl.this;
                    orbitCamControl2.zoom(orbitCamControl2._zoomSpeed * mouseState.getDwheel());
                }
            }
        };
        if (!z10) {
            e10 = TriggerConditions.mouseMoved();
        }
        InputTrigger inputTrigger = new InputTrigger(J.t(mouseWheelMovedCondition, e10), triggerAction);
        this._mouseTrigger = inputTrigger;
        logicalLayer.registerTrigger(inputTrigger);
    }

    public void update(double d10) {
        updateTargetPos();
        if (this._dirty) {
            if (this._worldUpVec.getY() == 1.0d) {
                MathUtils.sphericalToCartesian(this._sphereCoords, this._camPosition);
            } else if (this._worldUpVec.getZ() == 1.0d) {
                MathUtils.sphericalToCartesianZ(this._sphereCoords, this._camPosition);
            }
            this._camera.setLocation(this._camPosition.addLocal(this._lookAtPoint));
            this._camera.lookAt(this._lookAtPoint, this._worldUpVec);
            this._dirty = false;
        }
    }

    public void updateTargetPos() {
        if (this._targetType == TargetType.Spatial) {
            double x10 = this._lookAtPoint.getX();
            double y10 = this._lookAtPoint.getY();
            double z10 = this._lookAtPoint.getZ();
            this._lookAtSpatial.getWorldTransform().applyForward(Vector3.ZERO, this._lookAtPoint);
            if (x10 == this._lookAtPoint.getX() && y10 == this._lookAtPoint.getY() && z10 == this._lookAtPoint.getZ()) {
                return;
            }
            makeDirty();
        }
    }

    public void zoom(double d10) {
        double d11 = (this._invertedWheel ? -1 : 1) * d10 * this._baseDistance;
        Vector3 vector3 = this._sphereCoords;
        vector3.setX(MathUtils.clamp(vector3.getX() + d11, this._minZoomDistance, this._maxZoomDistance));
        makeDirty();
    }

    public void setSphereCoords(double d10, double d11, double d12) {
        this._sphereCoords.set(d10, d11, d12);
        makeDirty();
    }

    public OrbitCamControl(Camera camera, Spatial spatial) {
        this._worldUpVec = new Vector3(Vector3.UNIT_Y);
        this._sphereCoords = new Vector3();
        this._camPosition = new Vector3();
        this._lookAtPoint = new Vector3();
        this._lookAtSpatial = null;
        this._invertedX = false;
        this._invertedY = false;
        this._invertedWheel = true;
        this._zoomSpeed = 0.01d;
        this._baseDistance = 15.0d;
        this._minZoomDistance = 1.0d;
        this._maxZoomDistance = 100.0d;
        this._minAscent = -1.5699236621688994d;
        this._maxAscent = 1.5699236621688994d;
        this._xSpeed = 0.01d;
        this._ySpeed = 0.01d;
        this._dirty = true;
        this._camera = camera;
        this._targetType = TargetType.Spatial;
        this._lookAtSpatial = spatial;
    }
}
