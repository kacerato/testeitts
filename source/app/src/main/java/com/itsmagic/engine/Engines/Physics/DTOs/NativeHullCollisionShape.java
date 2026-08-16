package com.itsmagic.engine.Engines.Physics.DTOs;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.jme3.bullet.collision.shapes.HullCollisionShape;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import p000if.C13702E;

public class NativeHullCollisionShape extends HullCollisionShape implements Cloneable {

    public NativeFloatBuffer f81430b;

    static {
        System.loadLibrary("bulletjme");
    }

    public NativeHullCollisionShape() {
    }

    private void createShape() {
        NativeFloatBuffer nativeFloatBuffer = this.f81430b;
        if (nativeFloatBuffer == null) {
            return;
        }
        long nativeAllocationPointer = nativeFloatBuffer.getNativeAllocationPointer();
        C13702E.H(nativeAllocationPointer != 0, "native point allocation must exist");
        int capacity = this.f81430b.capacity();
        C13702E.H(capacity % 3 == 0, "points capacity must be a multiple of 3");
        for (int i10 = 0; i10 < capacity; i10++) {
            float f10 = this.f81430b.get(i10);
            if (!Float.isFinite(f10)) {
                throw new IllegalArgumentException("illegal coordinate: " + f10);
            }
        }
        long nativeCreateShape = nativeCreateShape(nativeAllocationPointer, capacity / 3);
        C13702E.H(nativeCreateShape != 0, "failed to create hull collision shape");
        setNativeId(nativeCreateShape);
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    private static native long nativeCreateShape(long allocationPointer, int numVertices);

    public NativeHullCollisionShape clone() {
        try {
            return (NativeHullCollisionShape) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override
    public float aabbVolume() {
        NativeFloatBuffer nativeFloatBuffer = this.f81430b;
        if (nativeFloatBuffer == null || nativeFloatBuffer.capacity() == 0) {
            return 0.0f;
        }
        Vector3f vector3f = new Vector3f(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        Vector3f vector3f2 = new Vector3f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        int capacity = this.f81430b.capacity();
        for (int i10 = 0; i10 < capacity; i10 += 3) {
            float f10 = this.f81430b.get(i10);
            float f11 = this.f81430b.get(i10 + 1);
            float f12 = this.f81430b.get(i10 + 2);
            if (f10 < vector3f2.f81611x) {
                vector3f2.f81611x = f10;
            }
            if (f11 < vector3f2.f81612y) {
                vector3f2.f81612y = f11;
            }
            if (f12 < vector3f2.f81613z) {
                vector3f2.f81613z = f12;
            }
            if (f10 > vector3f.f81611x) {
                vector3f.f81611x = f10;
            }
            if (f11 > vector3f.f81612y) {
                vector3f.f81612y = f11;
            }
            if (f12 > vector3f.f81613z) {
                vector3f.f81613z = f12;
            }
        }
        return (vector3f.f81611x - vector3f2.f81611x) * (vector3f.f81612y - vector3f2.f81612y) * (vector3f.f81613z - vector3f2.f81613z);
    }

    public NativeFloatBuffer b() {
        return this.f81430b;
    }

    @Override
    public void cloneFields(Cloner cloner, Object original) {
        NativeHullCollisionShape nativeHullCollisionShape = (NativeHullCollisionShape) original;
        this.scale = (Vector3f) cloner.clone(this.scale);
        this.f81430b = (NativeFloatBuffer) cloner.clone(nativeHullCollisionShape.f81430b);
        unassignNativeObject();
        if (this.f81430b != null) {
            createShape();
            copyShapeProperties(nativeHullCollisionShape);
        }
    }

    @Override
    public int countMeshVertices() {
        NativeFloatBuffer nativeFloatBuffer = this.f81430b;
        if (nativeFloatBuffer != null) {
            return nativeFloatBuffer.capacity() / 3;
        }
        return 0;
    }

    @Override
    public Vector3f getHalfExtents(Vector3f storeResult) {
        if (storeResult == null) {
            storeResult = new Vector3f();
        }
        storeResult.zero();
        NativeFloatBuffer nativeFloatBuffer = this.f81430b;
        if (nativeFloatBuffer == null) {
            return storeResult;
        }
        int capacity = nativeFloatBuffer.capacity();
        for (int i10 = 0; i10 < capacity; i10 += 3) {
            float abs = Math.abs(this.f81430b.get(i10));
            float abs2 = Math.abs(this.f81430b.get(i10 + 1));
            float abs3 = Math.abs(this.f81430b.get(i10 + 2));
            if (abs > storeResult.f81611x) {
                storeResult.f81611x = abs;
            }
            if (abs2 > storeResult.f81612y) {
                storeResult.f81612y = abs2;
            }
            if (abs3 > storeResult.f81613z) {
                storeResult.f81613z = abs3;
            }
        }
        return storeResult;
    }

    public NativeHullCollisionShape(NativeFloatBuffer points) {
        C13702E.t(points, "points");
        C13702E.H(points.capacity() > 0, "points must not be empty");
        C13702E.H(points.capacity() % 3 == 0, "points capacity must be a multiple of 3");
        C13702E.H(points.getPrecision() == NativeFloatBuffer.b.FLOAT32, "points must use FLOAT32 precision");
        this.f81430b = points;
        createShape();
    }
}
