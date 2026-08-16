package com.itsmagic.engine.Engines.Physics.DTOs;

import android.os.BatteryManager;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import p000if.C13702E;

public class NativeHeightfieldCollisionShape extends CollisionShape implements Cloneable {

    public static final float f81416n = 0.001f;

    public static final Vector3f f81417o;

    public boolean f81418b;

    public boolean f81419c;

    public boolean f81420d;

    public boolean f81421e;

    public float f81422f;

    public float f81423g;

    public float f81424h;

    public NativeFloatBuffer f81425i;

    public int f81426j;

    public int f81427k;

    public int f81428l;

    public boolean f81429m;

    static {
        System.loadLibrary("bulletjme");
        f81417o = new Vector3f(1.0f, 1.0f, 1.0f);
    }

    public NativeHeightfieldCollisionShape() {
        this.f81418b = true;
        this.f81419c = false;
        this.f81420d = false;
        this.f81421e = false;
        this.f81422f = 1.0f;
        this.f81428l = 1;
    }

    private void createShape() {
        NativeFloatBuffer nativeFloatBuffer = this.f81425i;
        if (nativeFloatBuffer == null) {
            return;
        }
        long nativeAllocationPointer = nativeFloatBuffer.getNativeAllocationPointer();
        C13702E.H(nativeAllocationPointer != 0, "native heightfield allocation must exist");
        long nativeCreateShape = nativeCreateShape(nativeAllocationPointer, this.f81427k, this.f81426j, this.f81422f, this.f81424h, this.f81423g, this.f81428l, this.f81418b, this.f81419c, this.f81420d, this.f81421e);
        C13702E.H(nativeCreateShape != 0, "failed to create heightfield collision shape");
        setNativeId(nativeCreateShape);
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    private static native void finalizeNative(long shapeId);

    public static void freeNativeObject(long shapeId) {
        finalizeNative(shapeId);
    }

    public static void g(NativeFloatBuffer heightfieldData, Vector3f scale) {
        C13702E.t(heightfieldData, "heightfield data");
        C13702E.t(scale, BatteryManager.EXTRA_SCALE);
        C13702E.s(scale, BatteryManager.EXTRA_SCALE);
    }

    private static native long nativeCreateShape(long allocationPointer, int stickWidth, int stickLength, float heightScale, float minHeight, float maxHeight, int upAxis, boolean flipQuadEdges, boolean flipTriangleWinding, boolean useDiamond, boolean useZigzag);

    public NativeHeightfieldCollisionShape clone() {
        try {
            return (NativeHeightfieldCollisionShape) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public final void b(NativeFloatBuffer heightfieldData, Vector3f scale) {
        C13702E.H(heightfieldData.capacity() >= 4, "heightfield data must contain at least 4 samples");
        C13702E.H(heightfieldData.getPrecision() == NativeFloatBuffer.b.FLOAT32, "heightfield data must use FLOAT32 precision");
        int capacity = heightfieldData.capacity();
        int sqrt = (int) FastMath.sqrt(capacity);
        C13702E.H(sqrt * sqrt == capacity, "heightfield data length must be a perfect square");
        this.f81427k = sqrt;
        this.f81426j = sqrt;
        this.f81425i = heightfieldData;
        this.scale.set(scale);
        calculateMinAndMax();
        createShape();
    }

    public NativeFloatBuffer c() {
        return this.f81425i;
    }

    public final void calculateMinAndMax() {
        int countMeshVertices = countMeshVertices();
        C13702E.H(this.f81425i.capacity() >= countMeshVertices, "heightfield data must contain at least stickLength*stickWidth samples");
        float[] minMax = this.f81425i.getMinMax(countMeshVertices, !this.f81429m);
        float max = Math.max(Math.abs(minMax[0]), Math.abs(minMax[1]));
        if (max < 0.001f) {
            max = 0.001f;
        }
        this.f81424h = -max;
        this.f81423g = max;
    }

    @Override
    public void cloneFields(Cloner cloner, Object original) {
        super.cloneFields(cloner, original);
        NativeHeightfieldCollisionShape nativeHeightfieldCollisionShape = (NativeHeightfieldCollisionShape) original;
        NativeFloatBuffer nativeFloatBuffer = (NativeFloatBuffer) cloner.clone(nativeHeightfieldCollisionShape.f81425i);
        this.f81425i = nativeFloatBuffer;
        if (nativeFloatBuffer != null) {
            createShape();
            copyShapeProperties(nativeHeightfieldCollisionShape);
        }
    }

    public int countColumns() {
        C13702E.H(this.f81427k >= 2, "heightStickWidth");
        return this.f81427k;
    }

    public int countMeshVertices() {
        int i10 = this.f81426j * this.f81427k;
        C13702E.H(i10 >= 4, "heightfield data must contain at least 4 samples");
        return i10;
    }

    public int countRows() {
        C13702E.H(this.f81426j >= 2, "heightStickLength");
        return this.f81426j;
    }

    public NativeFloatBuffer d() {
        return this.f81425i;
    }

    public boolean e() {
        return this.f81429m;
    }

    public int upAxis() {
        C13702E.a(this.f81428l, "up axis");
        return this.f81428l;
    }

    public NativeHeightfieldCollisionShape(NativeFloatBuffer heightfieldData) {
        this(heightfieldData, f81417o, false);
    }

    public NativeHeightfieldCollisionShape(NativeFloatBuffer heightfieldData, Vector3f scale) {
        this(heightfieldData, scale, false);
    }

    public NativeHeightfieldCollisionShape(NativeFloatBuffer heightfieldData, Vector3f scale, boolean skipValidations) {
        this.f81418b = true;
        this.f81419c = false;
        this.f81420d = false;
        this.f81421e = false;
        this.f81422f = 1.0f;
        this.f81428l = 1;
        g(heightfieldData, scale);
        this.f81429m = skipValidations;
        b(heightfieldData, scale);
    }

    public NativeHeightfieldCollisionShape(int stickLength, int stickWidth, NativeFloatBuffer heightfieldData, Vector3f scale) {
        this(stickLength, stickWidth, heightfieldData, scale, false);
    }

    public NativeHeightfieldCollisionShape(int stickLength, int stickWidth, NativeFloatBuffer heightfieldData, Vector3f scale, boolean skipValidations) {
        this(stickLength, stickWidth, heightfieldData, scale, 1, true, false, false, false, skipValidations);
    }

    public NativeHeightfieldCollisionShape(int stickLength, int stickWidth, NativeFloatBuffer heightfieldData, Vector3f scale, int upAxis, boolean flipQuadEdges, boolean flipTriangleWinding, boolean useDiamond, boolean useZigzag) {
        this(stickLength, stickWidth, heightfieldData, scale, upAxis, flipQuadEdges, flipTriangleWinding, useDiamond, useZigzag, false);
    }

    public NativeHeightfieldCollisionShape(int stickLength, int stickWidth, NativeFloatBuffer heightfieldData, Vector3f scale, int upAxis, boolean flipQuadEdges, boolean flipTriangleWinding, boolean useDiamond, boolean useZigzag, boolean skipValidations) {
        this.f81418b = true;
        this.f81419c = false;
        this.f81420d = false;
        this.f81421e = false;
        this.f81422f = 1.0f;
        this.f81428l = 1;
        C13702E.i(stickLength, "stick length", 2, Integer.MAX_VALUE);
        C13702E.i(stickWidth, "stick width", 2, Integer.MAX_VALUE);
        C13702E.t(heightfieldData, "heightfield data");
        C13702E.t(scale, BatteryManager.EXTRA_SCALE);
        C13702E.s(scale, BatteryManager.EXTRA_SCALE);
        C13702E.a(upAxis, "up axis");
        C13702E.H(heightfieldData.capacity() > 0, "heightfield data must not be empty");
        C13702E.H(heightfieldData.capacity() >= stickLength * stickWidth, "heightfield data must contain at least stickLength*stickWidth samples");
        C13702E.H(heightfieldData.getPrecision() == NativeFloatBuffer.b.FLOAT32, "heightfield data must use FLOAT32 precision");
        this.f81426j = stickLength;
        this.f81427k = stickWidth;
        this.f81425i = heightfieldData;
        this.f81429m = skipValidations;
        this.scale.set(scale);
        this.f81428l = upAxis;
        this.f81418b = flipQuadEdges;
        this.f81419c = flipTriangleWinding;
        this.f81420d = useDiamond;
        this.f81421e = useZigzag;
        calculateMinAndMax();
        createShape();
    }
}
