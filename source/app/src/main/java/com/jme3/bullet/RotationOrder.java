package com.jme3.bullet;

import com.jme3.math.Matrix3f;
import com.jme3.math.Vector3f;
import p000if.C13702E;

public enum RotationOrder {
    XYZ,
    XZY,
    YXZ,
    YZX,
    ZXY,
    ZYX;

    private static native boolean matrixToEuler(int i10, Matrix3f matrix3f, Vector3f vector3f);

    public Vector3f matrixToEuler(Matrix3f matrix3f, Vector3f vector3f) {
        C13702E.t(matrix3f, "rot matrix");
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        matrixToEuler(ordinal(), matrix3f, vector3f);
        return vector3f;
    }
}
