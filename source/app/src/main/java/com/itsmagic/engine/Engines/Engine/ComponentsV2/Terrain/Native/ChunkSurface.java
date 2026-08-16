package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Native;

import Jb.g;
import Rb.d;
import com.google.android.filament.Box;
import com.google.android.filament.VertexBuffer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import java.util.concurrent.atomic.AtomicInteger;
import z9.C16279f;
import z9.C16282i;

public class ChunkSurface {

    public static final AtomicInteger f76854m;

    public static final int f76855n = 0;

    public static final int f76856o = 2;

    public final int f76857a;

    public final boolean f76858b;

    public final long f76859c;

    public final NativeFloatBuffer f76860d;

    public final NativeFloatBuffer f76861e;

    public final NativeFloatBuffer f76862f;

    public final C16282i.b f76863g;

    public volatile FilamentVertexBuffer f76864h;

    public volatile Box f76865i;

    public volatile int f76866j = 0;

    public volatile boolean f76867k = false;

    public boolean f76868l;

    public class a implements C16279f.b {

        public final int f76869a;

        public final int f76870b;

        public final NativeFloatBuffer f76871c;

        public final NativeShortBuffer f76872d;

        public final NativeFloatBuffer f76873e;

        public class RunnableC1258a implements Runnable {

            public final FilamentVertexBuffer f76875b;

            public RunnableC1258a(final FilamentVertexBuffer val$uploadedVertexBuffer) {
                this.f76875b = val$uploadedVertexBuffer;
            }

            @Override
            public void run() {
                synchronized (ChunkSurface.this) {
                    try {
                        if (!ChunkSurface.this.f76867k) {
                            a aVar = a.this;
                            if (aVar.f76869a == ChunkSurface.this.f76866j) {
                                ChunkSurface.this.f76864h = this.f76875b;
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                ChunkSurface.this.n();
            }
        }

        public a(final int val$requestId, final int val$vertexCount, final NativeFloatBuffer val$uvBuffer, final NativeShortBuffer val$tangentBuffer, final NativeFloatBuffer val$boundsBuffer) {
            this.f76869a = val$requestId;
            this.f76870b = val$vertexCount;
            this.f76871c = val$uvBuffer;
            this.f76872d = val$tangentBuffer;
            this.f76873e = val$boundsBuffer;
        }

        @Override
        public boolean a() {
            synchronized (ChunkSurface.this) {
                boolean z10 = false;
                if (!ChunkSurface.this.f76867k && this.f76869a == ChunkSurface.this.f76866j) {
                    try {
                    } catch (RuntimeException e10) {
                        e10.printStackTrace();
                    }
                    synchronized (ChunkSurface.this) {
                        try {
                            if (!ChunkSurface.this.f76867k && this.f76869a == ChunkSurface.this.f76866j) {
                                FilamentVertexBuffer filamentVertexBuffer = ChunkSurface.this.f76864h;
                                if (filamentVertexBuffer == null) {
                                    VertexBuffer.b c10 = new VertexBuffer.b().h(this.f76870b).c(4);
                                    VertexBuffer.c cVar = VertexBuffer.c.POSITION;
                                    VertexBuffer.a aVar = VertexBuffer.a.FLOAT3;
                                    VertexBuffer.b b10 = c10.b(cVar, 0, aVar, 0, 12).b(VertexBuffer.c.UV0, 1, VertexBuffer.a.FLOAT2, 0, 8);
                                    VertexBuffer.c cVar2 = VertexBuffer.c.TANGENTS;
                                    filamentVertexBuffer = new FilamentVertexBuffer(b10.b(cVar2, 2, VertexBuffer.a.SHORT4, 0, 8).f(cVar2).b(com.itsmagic.engine.Engines.Engine.Vertex.a.f80006a.f80009b, 3, aVar, 0, 24).b(com.itsmagic.engine.Engines.Engine.Vertex.a.f80007b.f80009b, 3, aVar, 12, 24));
                                }
                                filamentVertexBuffer.m(0, ChunkSurface.this.f76860d);
                                filamentVertexBuffer.m(1, this.f76871c);
                                filamentVertexBuffer.o(2, this.f76872d);
                                filamentVertexBuffer.n(3, this.f76873e, new RunnableC1258a(filamentVertexBuffer));
                                try {
                                    z10 = true;
                                    if (!z10) {
                                        ChunkSurface.this.n();
                                    }
                                    return true;
                                } catch (Throwable th2) {
                                    th = th2;
                                    z10 = true;
                                    throw th;
                                }
                            }
                            ChunkSurface.this.n();
                            return false;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                }
                ChunkSurface.this.D();
                return false;
            }
        }
    }

    static {
        System.loadLibrary("native-chunk-surface");
        System.loadLibrary("native-brush-surface");
        f76854m = new AtomicInteger();
    }

    public ChunkSurface(int resolution, boolean bordersEnabled, C16282i.b topologyEntry) {
        if (resolution < 2) {
            throw new IllegalArgumentException("resolution can't be < 2");
        }
        if (topologyEntry == null) {
            throw new NullPointerException("topologyEntry can't be null");
        }
        if (topologyEntry.q() != resolution || topologyEntry.w() != bordersEnabled) {
            throw new IllegalArgumentException("topologyEntry mismatch");
        }
        this.f76857a = resolution;
        this.f76858b = bordersEnabled;
        this.f76863g = topologyEntry;
        long nativeTryCreate = nativeTryCreate(resolution, bordersEnabled);
        this.f76859c = nativeTryCreate;
        if (nativeTryCreate == 0) {
            throw new RuntimeException("Failed to create native terrain chunk surface");
        }
        int i10 = (resolution * resolution) + (bordersEnabled ? resolution * 8 : 0);
        this.f76860d = new NativeFloatBuffer(i10 * 3);
        this.f76861e = new NativeFloatBuffer(6);
        this.f76862f = new NativeFloatBuffer(i10 * 6);
    }

    private static native void nativeBuild(long pointer, long heightBufferPointer, int sourceResolution, long verticesPointer, long uvsPointer, long trianglesPointer, long boundsPointer);

    private static native void nativeBuildBrush(long tablePointer, long brushPointer, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float brushStartX, float brushStartY, float brushSize, int brushWidth, int brushHeight, float brushIntensity, float levelHeight, int viewMode, int resolution, long verticesPointer, long uvsPointer);

    private static native void nativeBuildFromTables(long pointer, long tablePointer, long levelTablePointer, int tableResolution, int startX, int startY, int sourceResolution, boolean levelingEnabled, long verticesPointer, long uvsPointer, long trianglesPointer, long boundsPointer);

    private static native void nativeCalculateBounds(long verticesPointer, int vertexCount, long boundsPointer);

    private static native void nativeDeleteBuffer(long pointer);

    private static native void nativeFixSkirtTangents(long pointer, long tangentBufferPointer);

    private static native long nativeTryCreate(int resolution, boolean bordersEnabled);

    public boolean A() {
        return this.f76858b;
    }

    public boolean B() {
        return (this.f76867k || this.f76864h == null || r() == null || o() == null) ? false : true;
    }

    public final void C(int uploadSlot) {
        if (uploadSlot == 2) {
            synchronized (this) {
                D();
            }
        }
    }

    public final void D() {
        if (this.f76868l) {
            this.f76868l = false;
            f76854m.decrementAndGet();
        }
    }

    public void E() {
        this.f76863g.y();
    }

    public final int F() {
        AtomicInteger atomicInteger;
        int i10;
        synchronized (this) {
            try {
                if (this.f76867k) {
                    return 0;
                }
                if (this.f76868l) {
                    return 0;
                }
                do {
                    atomicInteger = f76854m;
                    i10 = atomicInteger.get();
                    if (i10 >= 20) {
                        return 0;
                    }
                } while (!atomicInteger.compareAndSet(i10, i10 + 1));
                synchronized (this) {
                    try {
                        if (this.f76867k) {
                            atomicInteger.decrementAndGet();
                            return 0;
                        }
                        if (this.f76868l) {
                            atomicInteger.decrementAndGet();
                            return 0;
                        }
                        this.f76868l = true;
                        return 2;
                    } finally {
                    }
                }
            } finally {
            }
        }
    }

    public synchronized boolean G(NativeFloatBuffer heightBuffer, int sourceResolution) {
        if (heightBuffer == null) {
            throw new NullPointerException("heightBuffer can't be null");
        }
        if (sourceResolution <= 0) {
            throw new IllegalArgumentException("sourceResolution can't be <= 0");
        }
        if (this.f76867k) {
            return false;
        }
        int F10 = F();
        if (F10 == 0) {
            return false;
        }
        try {
            nativeBuild(this.f76859c, heightBuffer.getPointerCritical(), sourceResolution, this.f76860d.getPointerCritical(), this.f76863g.u().getPointerCritical(), this.f76863g.s().getPointerCritical(), this.f76861e.getPointerCritical());
            return K(F10);
        } catch (RuntimeException e10) {
            C(F10);
            throw e10;
        }
    }

    public final void H(Box box, int vertexCount) {
        float[] a10 = box.a();
        float[] b10 = box.b();
        this.f76862f.position(0);
        for (int i10 = 0; i10 < vertexCount; i10++) {
            this.f76862f.put(a10[0] - b10[0]);
            this.f76862f.put(a10[1] - b10[1]);
            this.f76862f.put(a10[2] - b10[2]);
            this.f76862f.put(a10[0] + b10[0]);
            this.f76862f.put(a10[1] + b10[1]);
            this.f76862f.put(a10[2] + b10[2]);
        }
        this.f76862f.position(0);
    }

    public synchronized boolean I(NativeFloatBuffer tableBuffer, NativeFloatBuffer brushBuffer, int terrainResolution, int startX, int startY, int endX, int endY, float terrainWidth, float terrainMaxHeight, float brushStartX, float brushStartY, float brushSize, int brushWidth, int brushHeight, float brushIntensity, float levelHeight, int viewMode) {
        int i10;
        if (tableBuffer == null) {
            throw new NullPointerException("tableBuffer can't be null");
        }
        if (brushBuffer == null) {
            throw new NullPointerException("brushBuffer can't be null");
        }
        if (terrainResolution <= 0) {
            throw new IllegalArgumentException("terrainResolution can't be <= 0");
        }
        if (this.f76867k) {
            return false;
        }
        int F10 = F();
        if (F10 == 0) {
            return false;
        }
        try {
            try {
                nativeBuildBrush(tableBuffer.getPointerCritical(), brushBuffer.getPointerCritical(), terrainResolution, startX, startY, endX, endY, terrainWidth, terrainMaxHeight, brushStartX, brushStartY, brushSize, brushWidth, brushHeight, brushIntensity, levelHeight, viewMode, this.f76857a, this.f76860d.getPointerCritical(), this.f76863g.u().getPointerCritical());
                nativeCalculateBounds(this.f76860d.getPointerCritical(), y(), this.f76861e.getPointerCritical());
                i10 = F10;
            } catch (RuntimeException e10) {
                e = e10;
                i10 = F10;
            }
            try {
                return K(i10);
            } catch (RuntimeException e11) {
                e = e11;
                C(i10);
                throw e;
            }
        } catch (RuntimeException e12) {
            e = e12;
            i10 = F10;
        }
    }

    public synchronized boolean J(NativeFloatBuffer tableBuffer, NativeFloatBuffer levelTableBuffer, int tableResolution, int startX, int startY, int sourceResolution, boolean levelingEnabled) {
        int i10;
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
            if (this.f76867k) {
                return false;
            }
            int F10 = F();
            if (F10 == 0) {
                return false;
            }
            try {
                try {
                    nativeBuildFromTables(this.f76859c, tableBuffer.getPointerCritical(), levelTableBuffer != null ? levelTableBuffer.getPointerCritical() : 0L, tableResolution, startX, startY, sourceResolution, levelingEnabled, this.f76860d.getPointerCritical(), this.f76863g.u().getPointerCritical(), this.f76863g.s().getPointerCritical(), this.f76861e.getPointerCritical());
                    i10 = F10;
                    try {
                        return K(i10);
                    } catch (RuntimeException e10) {
                        e = e10;
                        C(i10);
                        throw e;
                    }
                } catch (RuntimeException e11) {
                    e = e11;
                    i10 = F10;
                }
            } catch (RuntimeException e12) {
                e = e12;
                i10 = F10;
            }
        } finally {
        }
    }

    public final boolean K(int uploadSlot) {
        int y10 = y();
        NativeFloatBuffer u10 = this.f76863g.u();
        NativeShortBuffer i10 = i(y10);
        Box h10 = h();
        H(h10, y10);
        synchronized (this) {
            try {
                if (this.f76867k) {
                    if (uploadSlot == 2) {
                        D();
                    }
                    return false;
                }
                this.f76865i = h10;
                int i11 = this.f76866j + 1;
                this.f76866j = i11;
                m(i11, y10, u10, i10, this.f76862f);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final Box h() {
        float f10 = this.f76861e.get(0);
        float f11 = this.f76861e.get(1);
        float f12 = this.f76861e.get(2);
        float f13 = this.f76861e.get(3);
        float f14 = this.f76861e.get(4);
        float f15 = this.f76861e.get(5);
        return new Box(new float[]{(f10 + f13) * 0.5f, (f11 + f14) * 0.5f, (f12 + f15) * 0.5f}, new float[]{(f13 - f10) * 0.5f, (f14 - f11) * 0.5f, (f15 - f12) * 0.5f});
    }

    public final NativeShortBuffer i(int vertexCount) {
        if (vertexCount <= 0) {
            return null;
        }
        NativeShortBuffer b10 = new g(this.f76860d, this.f76863g.u(), null, this.f76863g.s()).b();
        if (b10 != null && this.f76858b) {
            nativeFixSkirtTangents(this.f76859c, b10.getPointerCritical());
        }
        return b10;
    }

    public synchronized void j() {
        if (this.f76867k) {
            return;
        }
        this.f76867k = true;
        this.f76866j++;
        D();
        l();
        this.f76865i = null;
        this.f76863g.x();
        nativeDeleteBuffer(this.f76859c);
    }

    public synchronized void k() {
        if (this.f76867k) {
            return;
        }
        this.f76866j++;
        D();
        l();
        this.f76865i = null;
    }

    public final void l() {
        this.f76864h = null;
    }

    public final void m(final int requestId, final int vertexCount, final NativeFloatBuffer uvBuffer, final NativeShortBuffer tangentBuffer, final NativeFloatBuffer boundsBuffer) {
        C16279f.d(new a(requestId, vertexCount, uvBuffer, tangentBuffer, boundsBuffer));
    }

    public final void n() {
        synchronized (this) {
            D();
        }
    }

    public Box o() {
        Box box = this.f76865i;
        if (box != null) {
            return box;
        }
        Box h10 = h();
        this.f76865i = h10;
        return h10;
    }

    public float p() {
        return 1.0f / this.f76857a;
    }

    public d q() {
        return this.f76863g.o();
    }

    public d r() {
        return this.f76863g.p();
    }

    public int s() {
        return this.f76857a;
    }

    public int t(int idx) {
        return this.f76863g.r(idx);
    }

    public NativeIntBuffer u() {
        return this.f76863g.s();
    }

    public int v() {
        return this.f76863g.t();
    }

    public FilamentVertexBuffer w() {
        return this.f76864h;
    }

    public NativeFloatBuffer x() {
        return this.f76860d;
    }

    public int y() {
        NativeFloatBuffer nativeFloatBuffer = this.f76860d;
        if (nativeFloatBuffer == null) {
            return 0;
        }
        return nativeFloatBuffer.capacity() / 3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000b, code lost:
    
        if (r1.f76868l != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean z() {
        boolean z10;
        if (!this.f76867k) {
            if (this.f76864h == null) {
            }
            z10 = true;
        }
        z10 = false;
        return z10;
    }
}
