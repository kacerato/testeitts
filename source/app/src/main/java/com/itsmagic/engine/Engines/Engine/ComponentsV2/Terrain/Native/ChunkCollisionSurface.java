package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Native;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;

public class ChunkCollisionSurface {

    public final int f76851a;

    public final NativeFloatBuffer f76852b;

    public volatile boolean f76853c = false;

    static {
        System.loadLibrary("native-chunk-collision-surface");
    }

    public ChunkCollisionSurface(int resolution) {
        if (resolution < 2) {
            throw new IllegalArgumentException("resolution can't be < 2");
        }
        this.f76851a = resolution;
        this.f76852b = new NativeFloatBuffer(resolution * resolution);
    }

    private static native boolean nativeBuildFromTables(long tablePointer, long levelTablePointer, int tableResolution, int startX, int startY, int sourceResolution, boolean levelingEnabled, int resolution, long heightfieldDataPointer);

    public synchronized void a() {
        this.f76853c = true;
    }

    public NativeFloatBuffer b() {
        return this.f76852b;
    }

    public int c() {
        return this.f76851a;
    }

    public int d() {
        int i10 = this.f76851a;
        return (i10 - 1) * (i10 - 1) * 2;
    }

    public synchronized boolean e(NativeFloatBuffer tableBuffer, NativeFloatBuffer levelTableBuffer, int tableResolution, int startX, int startY, int sourceResolution, boolean levelingEnabled) {
        try {
            if (tableBuffer == null) {
                throw new NullPointerException("tableBuffer can't be null");
            }
            if (tableResolution <= 0) {
                throw new IllegalArgumentException("tableResolution can't be <= 0");
            }
            if (sourceResolution <= 0) {
                throw new IllegalArgumentException("sourceResolution can't be <= 0");
            }
            if (this.f76853c) {
                return false;
            }
            return nativeBuildFromTables(tableBuffer.getPointerCritical(), levelTableBuffer != null ? levelTableBuffer.getPointerCritical() : 0L, tableResolution, startX, startY, sourceResolution, levelingEnabled, this.f76851a, this.f76852b.getPointerCritical());
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
