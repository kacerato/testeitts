package com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.DataSystem;

import E9.e;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;

public final class NativeVoxelChunkBuilder {
    static {
        System.loadLibrary("native-voxel-chunk");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Vertex a(e faceBuffer, int atlasSideCount) {
        NativeFloatBuffer nativeFloatBuffer;
        NativeIntBuffer nativeIntBuffer;
        NativeFloatBuffer nativeFloatBuffer2;
        if (faceBuffer == null) {
            return null;
        }
        int e10 = faceBuffer.e();
        boolean z10 = false;
        if (e10 <= 0) {
            Vertex vertex = new Vertex();
            vertex.q2(new NativeFloatBuffer(0));
            vertex.m2(new NativeFloatBuffer(0));
            vertex.i2(new NativeIntBuffer(0));
            vertex.F(false, true);
            return vertex;
        }
        NativeFloatBuffer nativeFloatBuffer3 = new NativeFloatBuffer(e10 * 12);
        NativeFloatBuffer nativeFloatBuffer4 = new NativeFloatBuffer(e10 * 8);
        NativeIntBuffer nativeIntBuffer2 = new NativeIntBuffer(e10 * 6);
        try {
            try {
                z10 = nativeBuildChunk(NativeIntBuffer.getCriticalDirectCppPointer(faceBuffer.g(), 0L), NativeIntBuffer.getCriticalDirectCppPointer(faceBuffer.d(), 0L), NativeIntBuffer.getCriticalDirectCppPointer(faceBuffer.f(), 0L), NativeIntBuffer.getCriticalDirectCppPointer(faceBuffer.h(), 0L), e10, atlasSideCount, NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer3, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer4, 0L), NativeIntBuffer.getCriticalDirectCppPointer(nativeIntBuffer2, 0L));
                if (!z10) {
                    if (!z10) {
                        nativeIntBuffer2.destroyImmediate();
                        nativeFloatBuffer4.destroyImmediate();
                        nativeFloatBuffer3.destroyImmediate();
                    }
                    return null;
                }
                try {
                    Vertex vertex2 = new Vertex();
                    nativeFloatBuffer2 = nativeFloatBuffer3;
                    try {
                        vertex2.q2(nativeFloatBuffer2);
                        nativeFloatBuffer = nativeFloatBuffer4;
                        try {
                            vertex2.m2(nativeFloatBuffer);
                            nativeIntBuffer = nativeIntBuffer2;
                            try {
                                vertex2.i2(nativeIntBuffer);
                                vertex2.F(true, true);
                                return vertex2;
                            } catch (Throwable th2) {
                                th = th2;
                                if (!z10) {
                                    nativeIntBuffer.destroyImmediate();
                                    nativeFloatBuffer.destroyImmediate();
                                    nativeFloatBuffer2.destroyImmediate();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            nativeIntBuffer = nativeIntBuffer2;
                            if (!z10) {
                            }
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        nativeFloatBuffer = nativeFloatBuffer4;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    nativeFloatBuffer = nativeFloatBuffer4;
                    nativeIntBuffer = nativeIntBuffer2;
                    nativeFloatBuffer2 = nativeFloatBuffer3;
                }
            } catch (Throwable th6) {
                th = th6;
                nativeFloatBuffer = nativeFloatBuffer4;
                nativeIntBuffer = nativeIntBuffer2;
                nativeFloatBuffer2 = nativeFloatBuffer3;
                z10 = false;
            }
        } catch (Throwable th7) {
            th = th7;
            nativeFloatBuffer = nativeFloatBuffer4;
            nativeIntBuffer = nativeIntBuffer2;
            nativeFloatBuffer2 = nativeFloatBuffer3;
        }
    }

    private static native boolean nativeBuildChunk(long positionsXYZPointer, long blockTypesPointer, long facesPointer, long textureIndicesPointer, int faceCount, int atlasSideCount, long outVerticesPointer, long outUVsPointer, long outTrianglesPointer);
}
