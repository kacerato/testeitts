package com.itsmagic.engine.Engines.Physics.DTOs;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.jme3.bullet.collision.shapes.infos.IndexedMesh;
import com.jme3.util.BufferUtils;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import p000if.C13702E;

public class NativeIndexedMesh extends IndexedMesh implements JmeCloneable {

    public static final int f81431d = 3;

    public static final int f81432e = 3;

    public static final int f81433f = 0;

    public static final int f81434g = 1;

    public static final int f81435h = 2;

    public NativeFloatBuffer f81436b;

    public NativeIntBuffer f81437c;

    static {
        System.loadLibrary("native-indexed-mesh");
    }

    public NativeIndexedMesh() {
    }

    private static native boolean nativeBuildCleanMesh(long sourcePositionsPointer, int sourcePositionCapacity, long sourceIndicesPointer, int sourceIndexCapacity, long cleanedPositionsPointer, int cleanedPositionCapacity, long cleanedIndicesPointer, int cleanedIndexCapacity, int cleanMode);

    private static native int[] nativePlanCleanMesh(long sourcePositionsPointer, int sourcePositionCapacity, long sourceIndicesPointer, int sourceIndexCapacity);

    public final void a(NativeFloatBuffer sourcePositions, NativeIntBuffer sourceIndices, boolean skipOptimization) {
        NativeFloatBuffer nativeFloatBuffer;
        long j10;
        if (skipOptimization) {
            this.f81436b = sourcePositions;
            this.f81437c = sourceIndices;
            return;
        }
        long criticalDirectCppPointer = sourcePositions.getCriticalDirectCppPointer();
        long criticalDirectCppPointer2 = sourceIndices.getCriticalDirectCppPointer();
        int[] nativePlanCleanMesh = nativePlanCleanMesh(criticalDirectCppPointer, sourcePositions.capacity(), criticalDirectCppPointer2, sourceIndices.capacity());
        C13702E.H(nativePlanCleanMesh != null && nativePlanCleanMesh.length == 3, "native mesh cleaning plan is invalid");
        int i10 = nativePlanCleanMesh[0];
        int i11 = nativePlanCleanMesh[1];
        int i12 = nativePlanCleanMesh[2];
        C13702E.H(i12 > 0, "mesh has no valid triangles after cleaning");
        C13702E.H(i11 > 0, "mesh has no valid vertices after cleaning");
        if (i10 == 0) {
            this.f81436b = sourcePositions;
            this.f81437c = sourceIndices;
            return;
        }
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(i12);
        if (i10 == 2) {
            NativeFloatBuffer nativeFloatBuffer2 = new NativeFloatBuffer(i11);
            nativeFloatBuffer = nativeFloatBuffer2;
            j10 = nativeFloatBuffer2.getCriticalDirectCppPointer();
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("Unknown native mesh cleaning mode: " + i10);
            }
            nativeFloatBuffer = sourcePositions;
            j10 = 0;
        }
        NativeFloatBuffer nativeFloatBuffer3 = nativeFloatBuffer;
        C13702E.H(nativeBuildCleanMesh(criticalDirectCppPointer, sourcePositions.capacity(), criticalDirectCppPointer2, sourceIndices.capacity(), j10, i11, nativeIntBuffer.getCriticalDirectCppPointer(), i12, i10), "native mesh cleaning failed");
        nativeFloatBuffer3.position(0);
        nativeIntBuffer.position(0);
        this.f81436b = nativeFloatBuffer3;
        this.f81437c = nativeIntBuffer;
    }

    public NativeIntBuffer b() {
        return this.f81437c;
    }

    public NativeIntBuffer c() {
        return b();
    }

    @Override
    public void cloneFields(Cloner cloner, Object original) {
        NativeIndexedMesh nativeIndexedMesh = (NativeIndexedMesh) original;
        NativeFloatBuffer nativeFloatBuffer = nativeIndexedMesh.f81436b;
        this.f81436b = nativeFloatBuffer != null ? nativeFloatBuffer.m1250clone() : null;
        NativeIntBuffer nativeIntBuffer = nativeIndexedMesh.f81437c;
        NativeIntBuffer m1251clone = nativeIntBuffer != null ? nativeIntBuffer.m1251clone() : null;
        this.f81437c = m1251clone;
        if (this.f81436b != null && m1251clone != null) {
            g();
        } else {
            this.vertexPositions = null;
            this.indices = null;
        }
    }

    @Override
    public IntBuffer copyIndices() {
        NativeIntBuffer nativeIntBuffer = this.f81437c;
        if (nativeIntBuffer == null) {
            return null;
        }
        IntBuffer createIntBuffer = BufferUtils.createIntBuffer(nativeIntBuffer.capacity());
        for (int i10 = 0; i10 < this.f81437c.capacity(); i10++) {
            createIntBuffer.put(this.f81437c.get(i10));
        }
        createIntBuffer.rewind();
        return createIntBuffer;
    }

    @Override
    public FloatBuffer copyVertexPositions() {
        NativeFloatBuffer nativeFloatBuffer = this.f81436b;
        if (nativeFloatBuffer == null) {
            return null;
        }
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(nativeFloatBuffer.capacity());
        for (int i10 = 0; i10 < this.f81436b.capacity(); i10++) {
            createFloatBuffer.put(this.f81436b.get(i10));
        }
        createFloatBuffer.rewind();
        return createFloatBuffer;
    }

    @Override
    public int countTriangles() {
        NativeIntBuffer nativeIntBuffer = this.f81437c;
        if (nativeIntBuffer != null) {
            return nativeIntBuffer.capacity() / 3;
        }
        return 0;
    }

    @Override
    public int countVertices() {
        NativeFloatBuffer nativeFloatBuffer = this.f81436b;
        if (nativeFloatBuffer != null) {
            return nativeFloatBuffer.capacity() / 3;
        }
        return 0;
    }

    public NativeFloatBuffer d() {
        return e();
    }

    public NativeFloatBuffer e() {
        return this.f81436b;
    }

    public final void g() {
        NativeFloatBuffer nativeFloatBuffer = this.f81436b;
        if (nativeFloatBuffer == null || this.f81437c == null) {
            return;
        }
        int capacity = nativeFloatBuffer.capacity() / 3;
        int capacity2 = this.f81437c.capacity() / 3;
        this.numVertices = capacity;
        this.numTriangles = capacity2;
        this.vertexStride = 12;
        this.indexStride = 12;
        long nativeAllocationPointer = this.f81436b.getNativeAllocationPointer();
        long nativeAllocationPointer2 = this.f81437c.getNativeAllocationPointer();
        C13702E.H(nativeAllocationPointer != 0, "native vertex position allocation must exist");
        C13702E.H(nativeAllocationPointer2 != 0, "native index allocation must exist");
        super.createMeshFromIntPointers(nativeAllocationPointer2, nativeAllocationPointer);
        this.vertexPositions = null;
        this.indices = null;
    }

    @Override
    public NativeIndexedMesh jmeClone() {
        try {
            return (NativeIndexedMesh) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public NativeIndexedMesh(NativeFloatBuffer positionBuffer, NativeIntBuffer indexBuffer) {
        C13702E.t(positionBuffer, "positionBuffer");
        C13702E.t(indexBuffer, "indexBuffer");
        C13702E.H(positionBuffer.capacity() > 0, "positionBuffer must not be empty");
        C13702E.H(indexBuffer.capacity() > 0, "indexBuffer must not be empty");
        C13702E.H(positionBuffer.capacity() % 3 == 0, "positionBuffer capacity must be a multiple of 3");
        C13702E.H(indexBuffer.capacity() % 3 == 0, "indexBuffer capacity must be a multiple of 3");
        a(positionBuffer, indexBuffer, false);
        g();
    }

    public NativeIndexedMesh(NativeFloatBuffer positionBuffer, NativeIntBuffer indexBuffer, boolean skipOptimization) {
        C13702E.t(positionBuffer, "positionBuffer");
        C13702E.t(indexBuffer, "indexBuffer");
        C13702E.H(positionBuffer.capacity() > 0, "positionBuffer must not be empty");
        C13702E.H(indexBuffer.capacity() > 0, "indexBuffer must not be empty");
        C13702E.H(positionBuffer.capacity() % 3 == 0, "positionBuffer capacity must be a multiple of 3");
        C13702E.H(indexBuffer.capacity() % 3 == 0, "indexBuffer capacity must be a multiple of 3");
        a(positionBuffer, indexBuffer, skipOptimization);
        g();
    }
}
