package com.itsmagic.engine.Engines.Engine.ComponentsV2.SoftBody;

import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class VertexDeduplicator {

    public final Vertex f76589a;

    public long f76590b;

    public NativeFloatBuffer f76591c;

    public NativeIntBuffer f76592d;

    static {
        System.loadLibrary("native-vertex-deduplicator");
    }

    public VertexDeduplicator(Vertex originalVertex) {
        if (originalVertex == null) {
            throw new NullPointerException("originalVertex can't be null");
        }
        this.f76589a = originalVertex;
        NativeFloatBuffer i12 = originalVertex.i1();
        NativeIntBuffer V02 = originalVertex.V0();
        if (i12 == null || V02 == null) {
            throw new IllegalArgumentException("Vertex must have vertices and triangles");
        }
        long nativeCreate = nativeCreate(NativeFloatBuffer.getCriticalDirectCppPointer(i12, 0L), NativeIntBuffer.getCriticalDirectCppPointer(V02, 0L), 1.0E-6f);
        this.f76590b = nativeCreate;
        if (nativeCreate == 0) {
            throw new RuntimeException("Failed to create native VertexDeduplicator");
        }
    }

    private static native long nativeCreate(long verticesPointer, long trianglesPointer, float epsilon);

    private static native void nativeDestroy(long pointer);

    private static native void nativeFillOriginalIndexes(long pointer, int newIndex, int[] outOriginalIndexes);

    private static native void nativeFillTriangles(long pointer, int[] outTriangles);

    private static native void nativeFillVertices(long pointer, float[] outVertices);

    private static native int nativeGetOriginalIndexesCount(long pointer, int newIndex);

    private static native int nativeGetTrianglesCount(long pointer);

    private static native int nativeGetVerticesCount(long pointer);

    public void a() {
        try {
            NativeFloatBuffer nativeFloatBuffer = this.f76591c;
            if (nativeFloatBuffer != null) {
                try {
                    nativeFloatBuffer.destroyImmediate();
                    this.f76591c = null;
                } catch (Throwable th2) {
                    this.f76591c = null;
                    throw th2;
                }
            }
            NativeIntBuffer nativeIntBuffer = this.f76592d;
            if (nativeIntBuffer != null) {
                try {
                    nativeIntBuffer.destroyImmediate();
                    this.f76592d = null;
                } catch (Throwable th3) {
                    this.f76592d = null;
                    throw th3;
                }
            }
            long j10 = this.f76590b;
            if (j10 != 0) {
                nativeDestroy(j10);
                this.f76590b = 0L;
            }
        } catch (Throwable th4) {
            long j11 = this.f76590b;
            if (j11 != 0) {
                nativeDestroy(j11);
                this.f76590b = 0L;
            }
            throw th4;
        }
    }

    public List<Integer> b(int newIndex) {
        int nativeGetOriginalIndexesCount = nativeGetOriginalIndexesCount(this.f76590b, newIndex);
        if (nativeGetOriginalIndexesCount <= 0) {
            return null;
        }
        int[] iArr = new int[nativeGetOriginalIndexesCount];
        nativeFillOriginalIndexes(this.f76590b, newIndex, iArr);
        SteppedArrayList steppedArrayList = new SteppedArrayList(nativeGetOriginalIndexesCount);
        for (int i10 = 0; i10 < nativeGetOriginalIndexesCount; i10++) {
            steppedArrayList.add(Integer.valueOf(iArr[i10]));
        }
        return steppedArrayList;
    }

    public Vertex c() {
        return this.f76589a;
    }

    public NativeIntBuffer d() {
        if (this.f76592d == null) {
            int nativeGetTrianglesCount = nativeGetTrianglesCount(this.f76590b);
            if (nativeGetTrianglesCount <= 0) {
                throw new IllegalStateException("Native deduplicator returned no triangles");
            }
            int[] iArr = new int[nativeGetTrianglesCount];
            nativeFillTriangles(this.f76590b, iArr);
            this.f76592d = new NativeIntBuffer(iArr);
        }
        return this.f76592d;
    }

    public NativeFloatBuffer e() {
        if (this.f76591c == null) {
            int nativeGetVerticesCount = nativeGetVerticesCount(this.f76590b);
            if (nativeGetVerticesCount <= 0) {
                throw new IllegalStateException("Native deduplicator returned no vertices");
            }
            float[] fArr = new float[nativeGetVerticesCount * 3];
            nativeFillVertices(this.f76590b, fArr);
            this.f76591c = new NativeFloatBuffer(fArr);
        }
        return this.f76591c;
    }

    public int f() {
        return nativeGetVerticesCount(this.f76590b);
    }
}
