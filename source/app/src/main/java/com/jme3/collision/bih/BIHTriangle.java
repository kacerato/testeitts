package com.jme3.collision.bih;

import com.jme3.math.Vector3f;

public final class BIHTriangle {
    static final boolean $assertionsDisabled = false;
    private final Vector3f center;
    private final Vector3f pointA;
    private final Vector3f pointB;
    private final Vector3f pointC;

    public BIHTriangle(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        Vector3f vector3f4 = new Vector3f();
        this.pointA = vector3f4;
        Vector3f vector3f5 = new Vector3f();
        this.pointB = vector3f5;
        Vector3f vector3f6 = new Vector3f();
        this.pointC = vector3f6;
        Vector3f vector3f7 = new Vector3f();
        this.center = vector3f7;
        vector3f4.set(vector3f);
        vector3f5.set(vector3f2);
        vector3f6.set(vector3f3);
        vector3f7.set(vector3f4);
        vector3f7.addLocal(vector3f5).addLocal(vector3f6).multLocal(0.33333334f);
    }

    public Vector3f get1() {
        return this.pointA;
    }

    public Vector3f get2() {
        return this.pointB;
    }

    public Vector3f get3() {
        return this.pointC;
    }

    public Vector3f getCenter() {
        return this.center;
    }

    public float getExtreme(int i10, boolean z10) {
        float f10;
        float f11;
        float f12;
        if (i10 == 0) {
            f10 = this.pointA.f81611x;
            f11 = this.pointB.f81611x;
            f12 = this.pointC.f81611x;
        } else if (i10 == 1) {
            f10 = this.pointA.f81612y;
            f11 = this.pointB.f81612y;
            f12 = this.pointC.f81612y;
        } else {
            if (i10 != 2) {
                return 0.0f;
            }
            f10 = this.pointA.f81613z;
            f11 = this.pointB.f81613z;
            f12 = this.pointC.f81613z;
        }
        return z10 ? f10 < f11 ? f10 < f12 ? f10 : f12 : f11 < f12 ? f11 : f12 : f10 > f11 ? f10 > f12 ? f10 : f12 : f11 > f12 ? f11 : f12;
    }

    public Vector3f getNormal() {
        Vector3f vector3f = new Vector3f(this.pointB);
        Vector3f subtractLocal = vector3f.subtractLocal(this.pointA);
        Vector3f vector3f2 = this.pointC;
        float f10 = vector3f2.f81611x;
        Vector3f vector3f3 = this.pointA;
        subtractLocal.crossLocal(f10 - vector3f3.f81611x, vector3f2.f81612y - vector3f3.f81612y, vector3f2.f81613z - vector3f3.f81613z);
        vector3f.normalizeLocal();
        return vector3f;
    }
}
