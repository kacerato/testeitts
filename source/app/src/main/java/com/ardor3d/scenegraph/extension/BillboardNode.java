package com.ardor3d.scenegraph.extension;

import com.ardor3d.math.Matrix3;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.renderer.Camera;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.scenegraph.event.DirtyType;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import ga.m;
import java.io.IOException;

public class BillboardNode extends Node {
    private static final long serialVersionUID = 1;
    private BillboardAlignment _alignment;
    private double _lastTime;
    private final Vector3 _left;
    private final Vector3 _look;
    private final Matrix3 _orient;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$scenegraph$extension$BillboardNode$BillboardAlignment;

        static {
            int[] iArr = new int[BillboardAlignment.values().length];
            $SwitchMap$com$ardor3d$scenegraph$extension$BillboardNode$BillboardAlignment = iArr;
            try {
                iArr[BillboardAlignment.ScreenAligned.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$extension$BillboardNode$BillboardAlignment[BillboardAlignment.CameraAligned.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$extension$BillboardNode$BillboardAlignment[BillboardAlignment.AxialY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$extension$BillboardNode$BillboardAlignment[BillboardAlignment.AxialZ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum BillboardAlignment {
        ScreenAligned,
        CameraAligned,
        AxialY,
        AxialZ
    }

    public BillboardNode() {
        this._orient = new Matrix3(Matrix3.IDENTITY);
        ReadOnlyVector3 readOnlyVector3 = Vector3.ZERO;
        this._look = new Vector3(readOnlyVector3);
        this._left = new Vector3(readOnlyVector3);
    }

    private void rotateAxial(Vector3 vector3) {
        this._look.set(Camera.getCurrentCamera().getLocation()).subtractLocal(this._worldTransform.getTranslation());
        Matrix3 matrix3 = Matrix3.fetchTempInstance().set(this._worldTransform.getMatrix());
        matrix3.applyPost(this._look, this._left);
        this._left.divideLocal(this._worldTransform.getScale());
        double x10 = (this._left.getX() * this._left.getX()) + (this._left.getZ() * this._left.getZ());
        if (x10 < 2.220446049250313E-16d) {
            return;
        }
        double sqrt = 1.0d / Math.sqrt(x10);
        if (vector3.getY() == 1.0d) {
            Vector3 vector32 = this._left;
            vector32.setX(vector32.getX() * sqrt);
            this._left.setY(0.0d);
            Vector3 vector33 = this._left;
            vector33.setZ(vector33.getZ() * sqrt);
            this._orient.setValue(0, 0, this._left.getZ());
            this._orient.setValue(0, 1, 0.0d);
            this._orient.setValue(0, 2, this._left.getX());
            this._orient.setValue(1, 0, 0.0d);
            this._orient.setValue(1, 1, 1.0d);
            this._orient.setValue(1, 2, 0.0d);
            this._orient.setValue(2, 0, -this._left.getX());
            this._orient.setValue(2, 1, 0.0d);
            this._orient.setValue(2, 2, this._left.getZ());
        } else if (vector3.getZ() == 1.0d) {
            Vector3 vector34 = this._left;
            vector34.setX(vector34.getX() * sqrt);
            Vector3 vector35 = this._left;
            vector35.setY(vector35.getY() * sqrt);
            this._left.setZ(0.0d);
            this._orient.setValue(0, 0, this._left.getY());
            this._orient.setValue(0, 1, this._left.getX());
            this._orient.setValue(0, 2, 0.0d);
            this._orient.setValue(1, 0, -this._left.getY());
            this._orient.setValue(1, 1, this._left.getX());
            this._orient.setValue(1, 2, 0.0d);
            this._orient.setValue(2, 0, 0.0d);
            this._orient.setValue(2, 1, 0.0d);
            this._orient.setValue(2, 2, 1.0d);
        }
        matrix3.multiplyLocal(this._orient);
        this._worldTransform.setRotation(matrix3);
        Matrix3.releaseTempInstance(matrix3);
    }

    private void rotateCameraAligned() {
        this._look.set(Camera.getCurrentCamera().getLocation()).subtractLocal(this._worldTransform.getTranslation());
        Vector3 vector3 = this._left;
        vector3.set(this._look.getX(), 0.0d, this._look.getZ());
        if (vector3.equals(Vector3.ZERO)) {
            return;
        }
        this._look.normalizeLocal();
        vector3.normalizeLocal();
        double dot = this._look.dot(vector3);
        this._orient.setValue(0, 0, vector3.getZ());
        this._orient.setValue(0, 1, vector3.getX() * (-this._look.getY()));
        this._orient.setValue(0, 2, vector3.getX() * dot);
        this._orient.setValue(1, 0, 0.0d);
        this._orient.setValue(1, 1, dot);
        this._orient.setValue(1, 2, this._look.getY());
        this._orient.setValue(2, 0, -vector3.getX());
        this._orient.setValue(2, 1, vector3.getZ() * (-this._look.getY()));
        this._orient.setValue(2, 2, vector3.getZ() * dot);
        Matrix3 multiplyLocal = Matrix3.fetchTempInstance().set(this._worldTransform.getMatrix()).multiplyLocal(this._orient);
        this._worldTransform.setRotation(multiplyLocal);
        Matrix3.releaseTempInstance(multiplyLocal);
    }

    private void rotateScreenAligned() {
        Camera currentCamera = Camera.getCurrentCamera();
        this._look.set(currentCamera.getDirection()).negateLocal();
        this._left.set(currentCamera.getLeft()).negateLocal();
        this._orient.fromAxes(this._left, currentCamera.getUp(), this._look);
        this._worldTransform.setRotation(this._orient);
    }

    @Override
    public void draw(Renderer renderer) {
        rotateBillboard();
        super.draw(renderer);
    }

    public BillboardAlignment getAlignment() {
        return this._alignment;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._orient.set((Matrix3) inputCapsule.readSavable("orient", new Matrix3(Matrix3.IDENTITY)));
        Vector3 vector3 = this._look;
        ReadOnlyVector3 readOnlyVector3 = Vector3.ZERO;
        vector3.set((Vector3) inputCapsule.readSavable("look", new Vector3(readOnlyVector3)));
        this._left.set((Vector3) inputCapsule.readSavable(m.f88234c, new Vector3(readOnlyVector3)));
        this._alignment = (BillboardAlignment) inputCapsule.readEnum("alignment", BillboardAlignment.class, BillboardAlignment.ScreenAligned);
    }

    public void rotateBillboard() {
        updateWorldTransform(false);
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$scenegraph$extension$BillboardNode$BillboardAlignment[this._alignment.ordinal()];
        if (i10 == 1) {
            rotateScreenAligned();
        } else if (i10 == 2) {
            rotateCameraAligned();
        } else if (i10 == 3) {
            rotateAxial(new Vector3(Vector3.UNIT_Y));
        } else if (i10 == 4) {
            rotateAxial(new Vector3(Vector3.UNIT_Z));
        }
        if (this._children == null) {
            return;
        }
        propagateDirtyDown(DirtyType.Transform);
        int numberOfChildren = getNumberOfChildren();
        for (int i11 = 0; i11 < numberOfChildren; i11++) {
            Spatial child = getChild(i11);
            if (child != null) {
                child.updateGeometricState(this._lastTime, false);
            }
        }
    }

    public void setAlignment(BillboardAlignment billboardAlignment) {
        this._alignment = billboardAlignment;
    }

    @Override
    public void updateWorldTransform(boolean z10) {
        this._lastTime = 0.0d;
        super.updateWorldTransform(z10);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._orient, "orient", new Matrix3());
        Vector3 vector3 = this._look;
        ReadOnlyVector3 readOnlyVector3 = Vector3.ZERO;
        outputCapsule.write(vector3, "look", new Vector3(readOnlyVector3));
        outputCapsule.write(this._left, m.f88234c, new Vector3(readOnlyVector3));
        outputCapsule.write(this._alignment, "alignment", BillboardAlignment.ScreenAligned);
    }

    public BillboardNode(String str) {
        super(str);
        this._orient = new Matrix3(Matrix3.IDENTITY);
        ReadOnlyVector3 readOnlyVector3 = Vector3.ZERO;
        this._look = new Vector3(readOnlyVector3);
        this._left = new Vector3(readOnlyVector3);
        this._alignment = BillboardAlignment.ScreenAligned;
    }
}
