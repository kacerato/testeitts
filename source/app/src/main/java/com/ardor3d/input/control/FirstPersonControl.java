package com.ardor3d.input.control;

import com.ardor3d.framework.Canvas;
import com.ardor3d.input.Key;
import com.ardor3d.input.KeyboardState;
import com.ardor3d.input.MouseState;
import com.ardor3d.input.logical.InputTrigger;
import com.ardor3d.input.logical.LogicalLayer;
import com.ardor3d.input.logical.TriggerAction;
import com.ardor3d.input.logical.TriggerConditions;
import com.ardor3d.input.logical.TwoInputStates;
import com.ardor3d.math.Matrix3;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.renderer.Camera;
import w2.I;
import w2.J;

public class FirstPersonControl {
    private double _keyRotateSpeed;
    private InputTrigger _keyTrigger;
    private double _mouseRotateSpeed;
    private InputTrigger _mouseTrigger;
    private double _moveSpeed;
    private final Vector3 _upAxis;
    private final Matrix3 _workerMatrix;
    private final Vector3 _workerStoreA;

    public FirstPersonControl(ReadOnlyVector3 readOnlyVector3) {
        Vector3 vector3 = new Vector3();
        this._upAxis = vector3;
        this._mouseRotateSpeed = 0.005d;
        this._moveSpeed = 50.0d;
        this._keyRotateSpeed = 2.25d;
        this._workerMatrix = new Matrix3();
        this._workerStoreA = new Vector3();
        vector3.set(readOnlyVector3);
    }

    public static void removeTriggers(LogicalLayer logicalLayer, FirstPersonControl firstPersonControl) {
        InputTrigger inputTrigger = firstPersonControl._mouseTrigger;
        if (inputTrigger != null) {
            logicalLayer.deregisterTrigger(inputTrigger);
        }
        InputTrigger inputTrigger2 = firstPersonControl._keyTrigger;
        if (inputTrigger2 != null) {
            logicalLayer.deregisterTrigger(inputTrigger2);
        }
    }

    public static FirstPersonControl setupTriggers(LogicalLayer logicalLayer, ReadOnlyVector3 readOnlyVector3, boolean z10) {
        FirstPersonControl firstPersonControl = new FirstPersonControl(readOnlyVector3);
        firstPersonControl.setupKeyboardTriggers(logicalLayer);
        firstPersonControl.setupMouseTriggers(logicalLayer, z10);
        return firstPersonControl;
    }

    public double getKeyRotateSpeed() {
        return this._keyRotateSpeed;
    }

    public InputTrigger getKeyTrigger() {
        return this._keyTrigger;
    }

    public double getMouseRotateSpeed() {
        return this._mouseRotateSpeed;
    }

    public InputTrigger getMouseTrigger() {
        return this._mouseTrigger;
    }

    public double getMoveSpeed() {
        return this._moveSpeed;
    }

    public ReadOnlyVector3 getUpAxis() {
        return this._upAxis;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean, int] */
    public void move(Camera camera, KeyboardState keyboardState, double d10) {
        ?? isDown = keyboardState.isDown(Key.W);
        int i10 = isDown;
        if (keyboardState.isDown(Key.S)) {
            i10 = isDown - 1;
        }
        ?? isDown2 = keyboardState.isDown(Key.A);
        int i11 = isDown2;
        if (keyboardState.isDown(Key.D)) {
            i11 = isDown2 - 1;
        }
        if (i10 != 0 || i11 != 0) {
            Vector3 zero = this._workerStoreA.zero();
            if (i10 == 1) {
                zero.addLocal(camera.getDirection());
            } else if (i10 == -1) {
                zero.subtractLocal(camera.getDirection());
            }
            if (i11 == 1) {
                zero.addLocal(camera.getLeft());
            } else if (i11 == -1) {
                zero.subtractLocal(camera.getLeft());
            }
            zero.normalizeLocal().multiplyLocal(this._moveSpeed * d10).addLocal(camera.getLocation());
            camera.setLocation(zero);
        }
        int i12 = keyboardState.isDown(Key.UP) ? -1 : 0;
        if (keyboardState.isDown(Key.DOWN)) {
            i12++;
        }
        ?? isDown3 = keyboardState.isDown(Key.LEFT);
        int i13 = isDown3;
        if (keyboardState.isDown(Key.RIGHT)) {
            i13 = isDown3 - 1;
        }
        if (i13 == 0 && i12 == 0) {
            return;
        }
        double d11 = this._keyRotateSpeed;
        double d12 = this._mouseRotateSpeed;
        rotate(camera, i13 * (d11 / d12) * d10, i12 * (d11 / d12) * d10);
    }

    public void rotate(Camera camera, double d10, double d11) {
        if (d10 != 0.0d) {
            Matrix3 matrix3 = this._workerMatrix;
            double d12 = this._mouseRotateSpeed * d10;
            ReadOnlyVector3 readOnlyVector3 = this._upAxis;
            if (readOnlyVector3 == null) {
                readOnlyVector3 = camera.getUp();
            }
            matrix3.fromAngleNormalAxis(d12, readOnlyVector3);
            this._workerMatrix.applyPost(camera.getLeft(), this._workerStoreA);
            camera.setLeft(this._workerStoreA);
            this._workerMatrix.applyPost(camera.getDirection(), this._workerStoreA);
            camera.setDirection(this._workerStoreA);
            this._workerMatrix.applyPost(camera.getUp(), this._workerStoreA);
            camera.setUp(this._workerStoreA);
        }
        if (d11 != 0.0d) {
            this._workerMatrix.fromAngleNormalAxis(this._mouseRotateSpeed * d11, camera.getLeft());
            this._workerMatrix.applyPost(camera.getLeft(), this._workerStoreA);
            camera.setLeft(this._workerStoreA);
            this._workerMatrix.applyPost(camera.getDirection(), this._workerStoreA);
            camera.setDirection(this._workerStoreA);
            this._workerMatrix.applyPost(camera.getUp(), this._workerStoreA);
            camera.setUp(this._workerStoreA);
        }
        camera.normalize();
    }

    public void setKeyRotateSpeed(double d10) {
        this._keyRotateSpeed = d10;
    }

    public void setMouseRotateSpeed(double d10) {
        this._mouseRotateSpeed = d10;
    }

    public void setMoveSpeed(double d10) {
        this._moveSpeed = d10;
    }

    public void setUpAxis(ReadOnlyVector3 readOnlyVector3) {
        this._upAxis.set(readOnlyVector3);
    }

    public I<TwoInputStates> setupKeyboardTriggers(LogicalLayer logicalLayer) {
        I<TwoInputStates> i10 = new I<TwoInputStates>() {
            Key[] keys = {Key.W, Key.A, Key.S, Key.D, Key.LEFT, Key.RIGHT, Key.UP, Key.DOWN};

            @Override
            public boolean apply(TwoInputStates twoInputStates) {
                for (Key key : this.keys) {
                    if (twoInputStates.getCurrent() != null && twoInputStates.getCurrent().getKeyboardState().isDown(key)) {
                        return true;
                    }
                }
                return false;
            }
        };
        InputTrigger inputTrigger = new InputTrigger(i10, new TriggerAction() {
            @Override
            public void perform(Canvas canvas, TwoInputStates twoInputStates, double d10) {
                this.move(canvas.getCanvasRenderer().getCamera(), twoInputStates.getCurrent().getKeyboardState(), d10);
            }
        });
        this._keyTrigger = inputTrigger;
        logicalLayer.registerTrigger(inputTrigger);
        return i10;
    }

    public void setupMouseTriggers(LogicalLayer logicalLayer, boolean z10) {
        I e10 = J.e(TriggerConditions.mouseMoved(), J.t(TriggerConditions.leftButtonDown(), J.t(TriggerConditions.rightButtonDown(), TriggerConditions.middleButtonDown())));
        TriggerAction triggerAction = new TriggerAction() {
            private boolean firstPing = true;

            @Override
            public void perform(Canvas canvas, TwoInputStates twoInputStates, double d10) {
                MouseState mouseState = twoInputStates.getCurrent().getMouseState();
                if (mouseState.getDx() == 0 && mouseState.getDy() == 0) {
                    return;
                }
                if (this.firstPing) {
                    this.firstPing = false;
                } else {
                    this.rotate(canvas.getCanvasRenderer().getCamera(), -mouseState.getDx(), -mouseState.getDy());
                }
            }
        };
        if (!z10) {
            e10 = TriggerConditions.mouseMoved();
        }
        InputTrigger inputTrigger = new InputTrigger(e10, triggerAction);
        this._mouseTrigger = inputTrigger;
        logicalLayer.registerTrigger(inputTrigger);
    }
}
