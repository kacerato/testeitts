package com.threed.jpct;

import androidx.constraintlayout.core.motion.utils.TypedValues;

public class CollisionEvent {
    public static final int ALGORITHM_ELLIPSOID = 2;
    public static final int ALGORITHM_RAY = 0;
    public static final int ALGORITHM_SPHERE = 1;
    public static final int TYPE_SOURCE = 1;
    public static final int TYPE_TARGET = 0;
    private static final long serialVersionUID = 1;
    private int algorithm;
    private SimpleVector contact;
    private int[] ids = null;
    private Object3D obj;
    private Object3D source;
    private Object3D[] targets;
    private int type;
    private static final String[] TYPES = {TypedValues.AttributesType.S_TARGET, "source"};
    private static final String[] ALGOS = {"ray-polygon", "sphere-polygon", "ellipsoid-polygon"};

    public CollisionEvent(Object3D object3D, Object3D object3D2, int i10, int i11, Object3D[] object3DArr, SimpleVector simpleVector) {
        this.obj = object3D;
        this.type = i10;
        this.algorithm = i11;
        this.source = object3D2;
        this.targets = object3DArr;
        this.contact = simpleVector;
    }

    public int getAlgorithm() {
        return this.algorithm;
    }

    public SimpleVector getFirstContact() {
        if (this.type == 1) {
            return null;
        }
        return this.contact;
    }

    public Object3D getObject() {
        return this.obj;
    }

    public int[] getPolygonIDs() {
        if (this.type == 1) {
            return null;
        }
        return this.ids;
    }

    public Object3D getSource() {
        return this.type == 1 ? this.obj : this.source;
    }

    public Object3D[] getTargets() {
        return this.targets;
    }

    public int getType() {
        return this.type;
    }

    public void setPolygonIDs(int[] iArr, int i10) {
        if (iArr != null) {
            int[] iArr2 = new int[i10];
            this.ids = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, i10);
        }
    }

    public String toString() {
        return "Object: " + this.obj.getName() + "/" + TYPES[this.type] + "/" + ALGOS[this.algorithm];
    }
}
