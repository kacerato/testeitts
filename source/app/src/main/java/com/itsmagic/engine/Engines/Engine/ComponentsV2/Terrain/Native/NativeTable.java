package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Native;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;

public final class NativeTable {
    static {
        System.loadLibrary("native-table");
    }

    public static void a(NativeFloatBuffer source, int sourceResolution, NativeFloatBuffer target, int targetResolution) {
        if (source == null) {
            throw new NullPointerException("source can't be null");
        }
        if (target == null) {
            throw new NullPointerException("target can't be null");
        }
        if (sourceResolution <= 0) {
            throw new IllegalArgumentException("sourceResolution can't be <= 0");
        }
        if (targetResolution <= 0) {
            throw new IllegalArgumentException("targetResolution can't be <= 0");
        }
        if (source.capacity() < sourceResolution * sourceResolution) {
            throw new IllegalArgumentException("source capacity is smaller than sourceResolution * sourceResolution");
        }
        if (target.capacity() < targetResolution * targetResolution) {
            throw new IllegalArgumentException("target capacity is smaller than targetResolution * targetResolution");
        }
        nativeTransferHeightsBilinear(source.getPointerCritical(), sourceResolution, target.getPointerCritical(), targetResolution);
        target.position(0);
    }

    private static native void nativeTransferHeightsBilinear(long sourcePointer, int sourceResolution, long targetPointer, int targetResolution);
}
