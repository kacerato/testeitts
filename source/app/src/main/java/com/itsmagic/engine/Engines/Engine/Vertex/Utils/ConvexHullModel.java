package com.itsmagic.engine.Engines.Engine.Vertex.Utils;

import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Physics.DTOs.NativeHullCollisionShape;
import vhacd4.Vhacd4Hull;

public class ConvexHullModel {

    public final Vertex f79928a;

    public final NativeHullCollisionShape f79929b;

    static {
        System.loadLibrary("native-convex-hull");
    }

    public ConvexHullModel(Vertex originalVertex) {
        this.f79929b = c(originalVertex);
        this.f79928a = a(originalVertex);
    }

    public static Vertex b(Vhacd4Hull hull) {
        if (hull == null) {
            return new Vertex();
        }
        float[] clonePositions = hull.clonePositions();
        if (clonePositions == null || clonePositions.length < 3 || clonePositions.length % 3 != 0) {
            return new Vertex();
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(clonePositions);
        try {
            int capacity = nativeFloatBuffer.capacity() / 3;
            long nativeCountHull = nativeCountHull(NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer, 0L), capacity);
            int f10 = f(nativeCountHull);
            int g10 = g(nativeCountHull);
            if (f10 > 0 && g10 > 0) {
                NativeFloatBuffer nativeFloatBuffer2 = new NativeFloatBuffer(f10 * 3);
                NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(g10);
                nativeBuildHull(NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer, 0L), capacity, NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer2, 0L), NativeIntBuffer.getCriticalDirectCppPointer(nativeIntBuffer, 0L));
                Vertex vertex = new Vertex();
                vertex.q2(nativeFloatBuffer2);
                vertex.i2(nativeIntBuffer);
                return vertex;
            }
            return new Vertex();
        } finally {
            nativeFloatBuffer.destroyImmediate();
        }
    }

    public static int f(long packed) {
        return (int) (packed >>> 32);
    }

    public static int g(long packed) {
        return (int) packed;
    }

    private static native void nativeBuildHull(long allocationPointer, int numVertices, long outVerticesPointer, long outIndicesPointer);

    private static native long nativeCountHull(long allocationPointer, int numVertices);

    public final Vertex a(Vertex originalVertex) {
        NativeFloatBuffer i12 = originalVertex.i1();
        if (i12 == null || i12.capacity() < 3 || i12.capacity() % 3 != 0) {
            return originalVertex.X(false);
        }
        int capacity = i12.capacity() / 3;
        long nativeCountHull = nativeCountHull(NativeFloatBuffer.getCriticalDirectCppPointer(i12, 0L), capacity);
        int f10 = f(nativeCountHull);
        int g10 = g(nativeCountHull);
        if (f10 <= 0 || g10 <= 0) {
            return originalVertex.X(false);
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(f10 * 3);
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(g10);
        nativeBuildHull(NativeFloatBuffer.getCriticalDirectCppPointer(i12, 0L), capacity, NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer, 0L), NativeIntBuffer.getCriticalDirectCppPointer(nativeIntBuffer, 0L));
        Vertex vertex = new Vertex();
        vertex.q2(nativeFloatBuffer);
        vertex.i2(nativeIntBuffer);
        return vertex;
    }

    public final NativeHullCollisionShape c(Vertex originalVertex) {
        NativeFloatBuffer i12 = originalVertex.i1();
        if (i12 != null) {
            return new NativeHullCollisionShape(i12);
        }
        throw new IllegalStateException("originalVertex.getVertices() == null");
    }

    public NativeHullCollisionShape d() {
        return this.f79929b;
    }

    public Vertex e() {
        return this.f79928a;
    }
}
