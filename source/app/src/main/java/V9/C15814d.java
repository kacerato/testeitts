package v9;

import JAVARuntime.Runnable;
import android.opengl.Matrix;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Chunk.ChunkRenderableLayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Layer.TerrainLayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Native.ChunkCollisionSurface;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Native.ChunkSurface;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Physics.DTOs.NativeHeightfieldCollisionShape;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import m.C14165a;
import x9.C16061a;
import z9.C16278e;
import z9.C16281h;
import z9.C16282i;

public class C15814d {

    public static final float f121316W = 2.0f;

    public static final float f121317X = 0.9f;

    public static final float f121318Y = 1.1f;

    public static final float f121319Z = 1.5f;

    public static final ThreadLocal<f> f121320a0 = new a();

    public static final ThreadLocal<Vector3> f121321b0 = new b();

    public boolean f121323B;

    public float f121325D;

    public float f121326E;

    public boolean f121331J;

    public boolean f121332K;

    public volatile boolean f121338Q;

    public boolean f121339R;

    public volatile C15814d f121341T;

    public C16278e f121342U;

    public C16278e f121343V;

    public final int f121344a;

    public final int f121345b;

    public final int f121346c;

    public final int f121347d;

    public final int f121348e;

    public int f121359p;

    public boolean f121360q;

    public volatile boolean f121361r;

    public volatile Terrain f121362s;

    public C15811a f121363t;

    public C15811a f121364u;

    public ChunkCollisionSurface f121365v;

    public int f121366w;

    public final List<ChunkSurface> f121349f = new SteppedArrayList();

    public final List<Integer> f121350g = new SteppedArrayList();

    public final List<Boolean> f121351h = new SteppedArrayList();

    public final List<C15813c> f121352i = new SteppedArrayList();

    public final List<List<ChunkRenderableLayer>> f121353j = new SteppedArrayList();

    public final List<ChunkRenderableLayer> f121354k = new SteppedArrayList();

    public final List<ChunkSurface> f121355l = new SteppedArrayList();

    public final List<FilamentVertexBuffer> f121356m = new SteppedArrayList();

    public final List<Rb.d> f121357n = new SteppedArrayList();

    public final Object f121358o = new Object();

    public final AtomicBoolean f121367x = new AtomicBoolean();

    public float f121368y = -99999.0f;

    public float f121369z = 999999.0f;

    public boolean f121322A = false;

    public boolean f121324C = true;

    public float f121327F = -1.0f;

    public float f121328G = -1.0f;

    public final float[] f121329H = new float[16];

    public final Transform f121330I = new Transform();

    public volatile int f121333L = -1;

    public volatile int f121334M = -1;

    public volatile int f121335N = -1;

    public volatile int f121336O = 0;

    public final int[] f121337P = new int[16];

    public final AtomicBoolean f121340S = new AtomicBoolean();

    public class a extends ThreadLocal<f> {
        @Override
        public f initialValue() {
            return new f();
        }
    }

    public class b extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            C15814d.this.f121331J = true;
        }
    }

    public class C2068d implements Runnable {
        public C2068d() {
        }

        @Override
        public void run() {
            C15814d.this.f121331J = true;
        }
    }

    public C15814d(int heightMapStartX, int heightMapStartY, int heightMapResolution, int textureMapStartX, int textureMapStartY) {
        this.f121344a = heightMapStartX;
        this.f121345b = heightMapStartY;
        this.f121346c = heightMapResolution;
        this.f121347d = textureMapStartX;
        this.f121348e = textureMapStartY;
    }

    public ChunkSurface A() {
        synchronized (this.f121358o) {
            try {
                if (!this.f121361r && !this.f121360q && !this.f121349f.isEmpty()) {
                    return this.f121349f.get(0);
                }
                return null;
            } finally {
            }
        }
    }

    public float B() {
        return this.f121327F;
    }

    public final ChunkCollisionSurface C() {
        ChunkCollisionSurface D10;
        synchronized (this.f121358o) {
            D10 = D();
        }
        return D10;
    }

    public final ChunkCollisionSurface D() {
        if (this.f121361r || this.f121360q || this.f121324C) {
            return null;
        }
        return this.f121365v;
    }

    public final int E(Terrain terrain) {
        int lodLevels = terrain.getLodLevels();
        if (lodLevels <= 0) {
            return 1;
        }
        return Nc.b.F(1, lodLevels, 16);
    }

    public int F() {
        return this.f121346c;
    }

    public float G(Terrain terrain) {
        if (terrain == null || !terrain.hasLodReferencePosition()) {
            return 0.0f;
        }
        float cachedGlobalPositionX = terrain.getCachedGlobalPositionX() + this.f121325D + (this.f121327F * 0.5f);
        float cachedGlobalPositionY = terrain.getCachedGlobalPositionY();
        float cachedGlobalPositionZ = terrain.getCachedGlobalPositionZ() + this.f121326E + (this.f121327F * 0.5f);
        float lodReferenceX = terrain.getLodReferenceX() - cachedGlobalPositionX;
        float lodReferenceY = terrain.getLodReferenceY() - cachedGlobalPositionY;
        float lodReferenceZ = terrain.getLodReferenceZ() - cachedGlobalPositionZ;
        return (lodReferenceX * lodReferenceX) + (lodReferenceY * lodReferenceY) + (lodReferenceZ * lodReferenceZ);
    }

    public C15814d H() {
        return this.f121341T;
    }

    public float I() {
        return this.f121325D;
    }

    public float J() {
        return this.f121326E;
    }

    public float[] K() {
        return this.f121329H;
    }

    public int L(Terrain terrain) {
        int E10 = E(terrain);
        int i10 = 0;
        for (int i11 = 0; i11 < E10; i11++) {
            int q10 = q(i11) - 1;
            i10 += (q10 * q10 * 2) + (q10 * 8);
        }
        return i10;
    }

    public int M(Terrain terrain) {
        int E10 = E(terrain);
        int i10 = 0;
        for (int i11 = 0; i11 < E10; i11++) {
            int q10 = q(i11);
            i10 += (q10 * q10) + (q10 * 8);
        }
        return i10;
    }

    public boolean N() {
        return this.f121363t != null;
    }

    public final void O(Terrain terrain, int lodLevel) {
        if (lodLevel < 0 || lodLevel >= this.f121352i.size()) {
            return;
        }
        C15813c c15813c = this.f121352i.get(lodLevel);
        if (c15813c != null) {
            c15813c.m(terrain);
        }
        List<ChunkRenderableLayer> list = this.f121353j.get(lodLevel);
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.get(i10).t(terrain);
        }
    }

    public final boolean P() {
        return this.f121324C;
    }

    public boolean Q(int x10, int z10) {
        int i10;
        int i11 = this.f121344a;
        if (x10 < i11) {
            return false;
        }
        int i12 = this.f121346c;
        return x10 < i11 + i12 && z10 >= (i10 = this.f121345b) && z10 < i10 + i12;
    }

    public boolean R(int x10, int z10, C16281h resolutions) {
        int i10;
        int i11 = resolutions.f130786c;
        int i12 = this.f121347d;
        return x10 >= i12 && x10 < i12 + i11 && z10 >= (i10 = this.f121348e) && z10 < i10 + i11;
    }

    public final boolean S(int lodLevel) {
        C15813c c15813c;
        if (!T(lodLevel)) {
            return false;
        }
        synchronized (this.f121358o) {
            try {
                if (V(lodLevel)) {
                    return false;
                }
                if (lodLevel >= this.f121352i.size() || (c15813c = this.f121352i.get(lodLevel)) == null || !c15813c.n() || lodLevel >= this.f121353j.size()) {
                    return false;
                }
                List<ChunkRenderableLayer> list = this.f121353j.get(lodLevel);
                for (int i10 = 0; i10 < list.size(); i10++) {
                    if (!list.get(i10).w()) {
                        return false;
                    }
                }
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean T(int lodLevel) {
        synchronized (this.f121358o) {
            boolean z10 = false;
            if (lodLevel >= 0) {
                try {
                    if (lodLevel < this.f121349f.size()) {
                        ChunkSurface chunkSurface = this.f121349f.get(lodLevel);
                        if (chunkSurface != null && chunkSurface.B()) {
                            z10 = true;
                        }
                        return z10;
                    }
                } finally {
                }
            }
            return false;
        }
    }

    public final boolean U(Terrain terrain) {
        if (terrain == null || !terrain.hasLodReferencePosition() || !terrain.hasLodRenderDistance()) {
            return false;
        }
        float lodRenderDistance = terrain.getLodRenderDistance();
        if (lodRenderDistance <= 0.0f || Float.isInfinite(lodRenderDistance)) {
            return false;
        }
        float f10 = (lodRenderDistance * 1.1f) + (this.f121327F * 1.5f);
        return G(terrain) > f10 * f10;
    }

    public final boolean V(int lod) {
        return lod >= 0 && lod < this.f121351h.size() && this.f121351h.get(lod).booleanValue();
    }

    public void W(Terrain terrain, C16281h resolutions, float terrainWidth, float chunkWidth) {
        this.f121362s = terrain;
        this.f121342U = terrain.getTable();
        this.f121343V = terrain.getLeveledTable();
        n0(terrain, resolutions, terrainWidth, chunkWidth, terrain.maxHeight);
        Y(terrain);
    }

    public void X(Terrain terrain, C16281h resolutions, float terrainWidth, float chunkWidth) {
        this.f121362s = terrain;
        this.f121342U = terrain.getTable();
        this.f121343V = terrain.getLeveledTable();
        n0(terrain, resolutions, terrainWidth, chunkWidth, terrain.maxHeight);
        m0(terrain);
        if (this.f121338Q) {
            k0(terrain);
        } else {
            Y(terrain);
        }
    }

    public final void Y(Terrain terrain) {
        int size;
        ChunkSurface chunkSurface;
        boolean z10;
        boolean z11;
        boolean z12;
        ChunkSurface chunkSurface2;
        boolean z13;
        boolean z14;
        if (this.f121361r) {
            t();
            return;
        }
        w(terrain);
        synchronized (this.f121358o) {
            try {
                size = this.f121349f.size();
                chunkSurface = (this.f121335N < 0 || this.f121335N >= size) ? null : this.f121349f.get(this.f121335N);
                z10 = this.f121335N >= 0 && this.f121335N < size && V(this.f121335N);
            } finally {
            }
        }
        int i10 = this.f121336O;
        boolean z15 = this.f121322A;
        boolean z16 = chunkSurface == null || z10 || (chunkSurface != null && !chunkSurface.z());
        if (this.f121361r) {
            t();
            return;
        }
        if (z15) {
            int i11 = this.f121333L;
            if (i11 < 0 || i11 >= size) {
                i11 = this.f121334M;
            }
            if (i11 < 0 || i11 >= size) {
                i11 = this.f121335N;
            }
            if (i11 < 0 || i11 >= size) {
                i11 = 0;
            }
            this.f121322A = !((i11 < 0 || i11 >= size) ? true : p(terrain, i11));
            synchronized (this.f121358o) {
                try {
                    size = this.f121349f.size();
                    chunkSurface2 = (this.f121335N < 0 || this.f121335N >= size) ? null : this.f121349f.get(this.f121335N);
                    z13 = this.f121335N >= 0 && this.f121335N < size && V(this.f121335N);
                    z14 = (chunkSurface2 == null || chunkSurface2.z()) ? false : true;
                } finally {
                }
            }
            if (chunkSurface2 != null && !z13 && !z14) {
                z16 = false;
            }
            z16 = true;
        }
        if (z16) {
            int i12 = this.f121335N;
            if (i12 < 0 || i12 >= size) {
                i12 = this.f121334M;
            }
            if (i12 < 0 || i12 >= size) {
                i12 = this.f121333L;
            }
            if (i12 < 0 || i12 >= size) {
                i12 = 0;
            }
            boolean p10 = (i12 < 0 || i12 >= size) ? false : p(terrain, i12);
            if (terrain.shouldBuildCollision()) {
                synchronized (this.f121358o) {
                    try {
                        if (this.f121365v != null && !P()) {
                            z12 = false;
                        }
                        z12 = true;
                    } finally {
                    }
                }
                if (z12) {
                    o(terrain);
                }
            }
            if (p10 && i10 == this.f121336O) {
                this.f121323B = true;
                f0(terrain);
            }
        }
        if (terrain.shouldBuildCollision()) {
            synchronized (this.f121358o) {
                try {
                    if (this.f121365v != null && !P()) {
                        z11 = false;
                    }
                    z11 = true;
                } finally {
                }
            }
            if (z11) {
                o(terrain);
            }
        }
        if (this.f121363t == null) {
            this.f121331J = true;
        }
        if (terrain.shouldBuildCollision()) {
            if (this.f121331J) {
                try {
                    ChunkCollisionSurface b10 = b();
                    if (b10 != null) {
                        try {
                            n(terrain, b10);
                            this.f121331J = false;
                            e0();
                        } catch (Throwable th2) {
                            e0();
                            throw th2;
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                } catch (OutOfMemoryError e11) {
                    e11.printStackTrace();
                    System.gc();
                    K8.a.h(15, new c());
                }
            }
            if (this.f121361r) {
                t();
                return;
            }
            synchronized (this.f121367x) {
                try {
                    if (this.f121367x.get()) {
                        C15811a c15811a = this.f121363t;
                        if (c15811a != null) {
                            terrain.removeCollider(c15811a);
                            this.f121363t = null;
                        }
                        terrain.addCollider(this.f121364u);
                        this.f121363t = this.f121364u;
                        this.f121364u = null;
                        this.f121367x.set(false);
                    }
                } finally {
                }
            }
        }
    }

    public ChunkRenderableLayer Z(int i10) {
        return this.f121353j.get(0).get(i10);
    }

    public int a0() {
        if (this.f121353j.isEmpty()) {
            return 0;
        }
        return this.f121353j.get(0).size();
    }

    public final ChunkCollisionSurface b() {
        synchronized (this.f121358o) {
            try {
                if (!this.f121361r && !this.f121360q) {
                    ChunkCollisionSurface D10 = D();
                    if (D10 != null) {
                        this.f121359p++;
                    }
                    return D10;
                }
                return null;
            } finally {
            }
        }
    }

    public void b0() {
        this.f121340S.set(false);
    }

    public final boolean c() {
        synchronized (this.f121358o) {
            try {
                if (!this.f121361r && !this.f121360q) {
                    this.f121359p++;
                    return true;
                }
                return false;
            } finally {
            }
        }
    }

    public void c0(Terrain terrain) {
        this.f121361r = true;
        this.f121362s = null;
        this.f121340S.set(false);
        this.f121341T = null;
        synchronized (this.f121358o) {
            for (int i10 = 0; i10 < this.f121352i.size(); i10++) {
                try {
                    C15813c c15813c = this.f121352i.get(i10);
                    if (c15813c != null) {
                        c15813c.o(terrain);
                    }
                    List<ChunkRenderableLayer> list = this.f121353j.get(i10);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        list.get(i11).y(terrain);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        t();
        synchronized (this.f121367x) {
            this.f121364u = null;
            this.f121367x.set(false);
        }
    }

    public final void d(List<ChunkRenderableLayer> layerMapList, TerrainLayer layer, C16061a data) {
        layerMapList.add(new ChunkRenderableLayer(this.f121347d, this.f121348e, layer, data));
    }

    public final boolean d0() {
        if (!c()) {
            return false;
        }
        try {
            int i10 = this.f121333L;
            boolean z10 = true;
            int i11 = 0;
            while (i11 < 2) {
                int i12 = i11 == 0 ? i10 : this.f121335N;
                if (i12 >= 0 && (i11 <= 0 || i12 != i10)) {
                    synchronized (this.f121358o) {
                        try {
                            if (i12 < this.f121349f.size()) {
                                ChunkSurface chunkSurface = this.f121349f.get(i12);
                                C15813c c15813c = i12 < this.f121352i.size() ? this.f121352i.get(i12) : null;
                                List<ChunkRenderableLayer> list = i12 < this.f121353j.size() ? this.f121353j.get(i12) : null;
                                if (chunkSurface != null) {
                                    if (chunkSurface.B()) {
                                        FilamentVertexBuffer w10 = chunkSurface.w();
                                        Rb.d r10 = chunkSurface.r();
                                        if (w10 != null && r10 != null) {
                                            synchronized (this.f121358o) {
                                                try {
                                                    if (i12 < this.f121356m.size() && i12 < this.f121357n.size()) {
                                                        FilamentVertexBuffer filamentVertexBuffer = this.f121356m.get(i12);
                                                        Rb.d dVar = this.f121357n.get(i12);
                                                        if (w10 != filamentVertexBuffer || r10 != dVar) {
                                                            this.f121356m.set(i12, w10);
                                                            this.f121357n.set(i12, r10);
                                                            if (c15813c != null) {
                                                                c15813c.r(chunkSurface);
                                                            }
                                                            if (list != null) {
                                                                for (int i13 = 0; i13 < list.size(); i13++) {
                                                                    list.get(i13).C(chunkSurface);
                                                                }
                                                            }
                                                        }
                                                    }
                                                } finally {
                                                }
                                            }
                                        }
                                    }
                                    z10 = false;
                                } else {
                                    continue;
                                }
                            }
                        } finally {
                        }
                    }
                }
                i11++;
            }
            e0();
            return z10;
        } catch (Throwable th2) {
            e0();
            throw th2;
        }
    }

    public final void e(C15815e batch, boolean visible) {
        for (int i10 = 0; i10 < this.f121352i.size(); i10++) {
            f(batch, i10, visible);
        }
    }

    public final void e0() {
        synchronized (this.f121358o) {
            try {
                int i10 = this.f121359p;
                if (i10 > 0) {
                    this.f121359p = i10 - 1;
                }
                if (this.f121359p == 0 && this.f121360q) {
                    u();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void f(C15815e batch, int lodLevel, boolean visible) {
        if (batch == null || lodLevel < 0 || lodLevel >= this.f121352i.size()) {
            return;
        }
        C15813c c15813c = this.f121352i.get(lodLevel);
        if (c15813c != null) {
            c15813c.g(batch, visible);
        }
        List<ChunkRenderableLayer> list = this.f121353j.get(lodLevel);
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.get(i10).m(batch, visible);
        }
    }

    public void f0(Terrain terrain) {
        if (terrain == null || this.f121361r || !this.f121340S.compareAndSet(false, true)) {
            return;
        }
        terrain.enqueueRenderState(this);
    }

    public void g() {
        for (int i10 = 0; i10 < this.f121353j.size(); i10++) {
            List<ChunkRenderableLayer> list = this.f121353j.get(i10);
            for (int i11 = 0; i11 < list.size(); i11++) {
                list.get(i11).z();
            }
        }
        f0(this.f121362s);
    }

    public final void g0(int lodLevel, boolean force) {
        if (lodLevel < 0) {
            lodLevel = 0;
        }
        if (force || this.f121335N != lodLevel) {
            this.f121335N = lodLevel;
            this.f121336O++;
        }
    }

    public void h(Terrain terrain) {
        synchronized (this.f121358o) {
            this.f121324C = true;
        }
        this.f121331J = true;
    }

    public final int h0(Terrain terrain, int lodCount) {
        if (terrain.getLodLevels() <= 0 || lodCount <= 1 || !terrain.hasLodReferencePosition()) {
            return 0;
        }
        float cachedGlobalPositionX = terrain.getCachedGlobalPositionX() + this.f121325D + (this.f121327F * 0.5f);
        float cachedGlobalPositionY = terrain.getCachedGlobalPositionY();
        float cachedGlobalPositionZ = terrain.getCachedGlobalPositionZ() + this.f121326E + (this.f121327F * 0.5f);
        float lodReferenceX = terrain.getLodReferenceX() - cachedGlobalPositionX;
        float lodReferenceY = terrain.getLodReferenceY() - cachedGlobalPositionY;
        float lodReferenceZ = terrain.getLodReferenceZ() - cachedGlobalPositionZ;
        float f10 = (lodReferenceX * lodReferenceX) + (lodReferenceY * lodReferenceY) + (lodReferenceZ * lodReferenceZ);
        float f11 = this.f121327F * 1.5f;
        float width = terrain.getWidth() * 0.7f;
        if (terrain.hasLodRenderDistance()) {
            float lodRenderDistance = terrain.getLodRenderDistance();
            if (lodRenderDistance > 0.0f && !Float.isInfinite(lodRenderDistance)) {
                width = Math.min(width, lodRenderDistance * 0.9f);
            }
        }
        if (width <= f11) {
            width = f11 + 0.001f;
        }
        float f12 = f11 * f11;
        float f13 = width * width;
        if (f13 <= f12 || f10 <= f12) {
            return 0;
        }
        if (f10 >= f13) {
            return lodCount - 1;
        }
        int i10 = lodCount - 1;
        return Nc.b.F(1, ((int) Nc.b.w0(((f10 - f12) / (f13 - f12)) * i10)) + 1, i10);
    }

    public void i(Terrain terrain) {
        synchronized (this.f121358o) {
            for (int i10 = 0; i10 < this.f121349f.size() && i10 < this.f121351h.size(); i10++) {
                try {
                    if (this.f121349f.get(i10) != null) {
                        this.f121351h.set(i10, Boolean.TRUE);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        this.f121322A = true;
        h(terrain);
        f0(terrain);
    }

    public void i0(C15814d next) {
        this.f121341T = next;
    }

    public void j(TerrainLayer layer) {
        for (int i10 = 0; i10 < this.f121353j.size(); i10++) {
            ChunkRenderableLayer y10 = y(this.f121353j.get(i10), layer);
            if (y10 != null) {
                y10.z();
            }
        }
        f0(this.f121362s);
    }

    public final boolean j0(Terrain terrain) {
        for (int i10 = 0; i10 < this.f121352i.size(); i10++) {
            s(terrain, i10);
        }
        this.f121355l.clear();
        synchronized (this.f121358o) {
            try {
                if (this.f121359p > 0) {
                    return false;
                }
                for (int i11 = 0; i11 < this.f121349f.size(); i11++) {
                    ChunkSurface chunkSurface = this.f121349f.get(i11);
                    if (chunkSurface != null) {
                        this.f121355l.add(chunkSurface);
                        this.f121349f.set(i11, null);
                    }
                    this.f121350g.set(i11, 0);
                    if (i11 < this.f121351h.size()) {
                        this.f121351h.set(i11, Boolean.FALSE);
                    }
                    this.f121356m.set(i11, null);
                    this.f121357n.set(i11, null);
                }
                for (int i12 = 0; i12 < this.f121355l.size(); i12++) {
                    this.f121355l.get(i12).j();
                }
                this.f121355l.clear();
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void k() {
        g();
    }

    public final void k0(Terrain terrain) {
        boolean z10;
        if (terrain.shouldBuildCollision()) {
            synchronized (this.f121358o) {
                try {
                    if (this.f121365v != null && !P()) {
                        z10 = false;
                    }
                    z10 = true;
                } finally {
                }
            }
            if (z10) {
                o(terrain);
            }
            if (this.f121363t == null) {
                this.f121331J = true;
            }
            if (this.f121331J) {
                try {
                    ChunkCollisionSurface b10 = b();
                    if (b10 != null) {
                        try {
                            n(terrain, b10);
                            this.f121331J = false;
                            e0();
                        } catch (Throwable th2) {
                            e0();
                            throw th2;
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                } catch (OutOfMemoryError e11) {
                    e11.printStackTrace();
                    System.gc();
                    K8.a.h(15, new C2068d());
                }
            }
            if (this.f121361r) {
                t();
                return;
            }
            synchronized (this.f121367x) {
                try {
                    if (this.f121367x.get()) {
                        C15811a c15811a = this.f121363t;
                        if (c15811a != null) {
                            terrain.removeCollider(c15811a);
                            this.f121363t = null;
                        }
                        terrain.addCollider(this.f121364u);
                        this.f121363t = this.f121364u;
                        this.f121364u = null;
                        this.f121367x.set(false);
                    }
                } finally {
                }
            }
        }
    }

    public void l(Terrain terrain) {
        this.f121327F = 0.0f;
        n0(terrain, terrain.f77027L8, terrain.width, 0.0f, terrain.maxHeight);
    }

    public final void l0(Terrain terrain, C16281h resolutions, ChunkSurface chunkSurface, List<ChunkRenderableLayer> layerMapList, int lodLevel, boolean allowSceneAttach) {
        int layerStructureRevision = terrain.getLayerStructureRevision();
        if (lodLevel >= 0) {
            int[] iArr = this.f121337P;
            if (lodLevel < iArr.length && iArr[lodLevel] != layerStructureRevision) {
                for (int i10 = 0; i10 < terrain.layersCount(); i10++) {
                    TerrainLayer layerAt = terrain.layerAt(i10);
                    C16061a layerDataFor = terrain.layerDataFor(layerAt);
                    ChunkRenderableLayer y10 = y(layerMapList, layerAt);
                    if (y10 != null && !y10.u(layerDataFor)) {
                        layerMapList.remove(y10);
                        y10.t(terrain);
                        y10 = null;
                    }
                    if (y10 == null) {
                        d(layerMapList, layerAt, layerDataFor);
                    }
                }
                for (int i11 = 0; i11 < layerMapList.size(); i11++) {
                    ChunkRenderableLayer chunkRenderableLayer = layerMapList.get(i11);
                    int i12 = 0;
                    while (true) {
                        if (i12 >= terrain.layersCount()) {
                            this.f121354k.add(chunkRenderableLayer);
                            break;
                        } else if (chunkRenderableLayer.v(terrain.layerAt(i12))) {
                            break;
                        } else {
                            i12++;
                        }
                    }
                }
                if (!this.f121354k.isEmpty()) {
                    for (int i13 = 0; i13 < this.f121354k.size(); i13++) {
                        ChunkRenderableLayer chunkRenderableLayer2 = this.f121354k.get(i13);
                        layerMapList.remove(chunkRenderableLayer2);
                        chunkRenderableLayer2.t(terrain);
                    }
                    this.f121354k.clear();
                }
                this.f121337P[lodLevel] = layerStructureRevision;
            }
        }
        if (chunkSurface != null) {
            for (int i14 = 0; i14 < layerMapList.size(); i14++) {
                layerMapList.get(i14).B(terrain, resolutions, chunkSurface, this.f121329H, this, i14, layerMapList, allowSceneAttach);
            }
        }
    }

    public boolean m(Terrain terrain, C16281h resolutions, float terrainWidth, float chunkWidth, C15815e visibilityBatch) {
        int size;
        boolean z10;
        if (this.f121361r) {
            return false;
        }
        this.f121362s = terrain;
        this.f121342U = terrain.getTable();
        this.f121343V = terrain.getLeveledTable();
        n0(terrain, resolutions, terrainWidth, chunkWidth, terrain.maxHeight);
        w(terrain);
        if (this.f121339R && !this.f121338Q) {
            this.f121339R = false;
        }
        if (this.f121332K) {
            this.f121332K = false;
            for (int i10 = 0; i10 < this.f121352i.size(); i10++) {
                C15813c c15813c = this.f121352i.get(i10);
                if (c15813c != null) {
                    c15813c.h(this.f121329H);
                }
                List<ChunkRenderableLayer> list = this.f121353j.get(i10);
                for (int i11 = 0; i11 < list.size(); i11++) {
                    list.get(i11).n(this.f121329H);
                }
            }
        }
        synchronized (this.f121358o) {
            size = this.f121349f.size();
        }
        if (size == 0) {
            return !this.f121338Q;
        }
        if (this.f121338Q) {
            if (!this.f121339R) {
                e(visibilityBatch, false);
                this.f121339R = true;
                return true;
            }
            this.f121339R = false;
            if (!j0(terrain)) {
                this.f121339R = true;
                return true;
            }
            this.f121333L = -1;
            this.f121334M = -1;
            this.f121335N = -1;
            return false;
        }
        int i12 = this.f121334M;
        if (i12 < 0 || i12 >= size) {
            return false;
        }
        if (this.f121333L < 0 || this.f121333L >= size) {
            this.f121333L = x();
        }
        if (this.f121333L != i12 && T(i12)) {
            o0(terrain, resolutions, i12, false);
            if (S(i12)) {
                int i13 = this.f121333L;
                o0(terrain, resolutions, i12, true);
                this.f121333L = i12;
                if (i13 >= 0 && i13 < size) {
                    f(visibilityBatch, i13, false);
                }
                f(visibilityBatch, this.f121333L, true);
                z10 = true;
                if (this.f121333L >= 0 || this.f121333L >= size) {
                    return true;
                }
                if (!z10) {
                    o0(terrain, resolutions, this.f121333L, false);
                    if (S(this.f121333L)) {
                        o0(terrain, resolutions, this.f121333L, true);
                        f(visibilityBatch, this.f121333L, true);
                    }
                }
                if (this.f121323B && d0()) {
                    this.f121323B = false;
                }
                return !S(this.f121333L) || this.f121323B;
            }
        }
        z10 = false;
        if (this.f121333L >= 0) {
        }
        return true;
    }

    public final void m0(Terrain terrain) {
        int size;
        w(terrain);
        synchronized (this.f121358o) {
            size = this.f121349f.size();
        }
        if (size == 0) {
            if (this.f121334M == -1 && this.f121335N == -1) {
                return;
            }
            this.f121334M = -1;
            this.f121335N = -1;
            f0(terrain);
            return;
        }
        boolean U10 = U(terrain);
        if (this.f121338Q != U10) {
            this.f121338Q = U10;
            f0(terrain);
        }
        if (U10) {
            return;
        }
        int h02 = h0(terrain, size);
        if (this.f121334M != h02) {
            this.f121334M = h02;
            f0(terrain);
        }
        g0(h02, false);
    }

    public final void n(Terrain terrain, ChunkCollisionSurface colliderSurface) {
        int d10;
        if (colliderSurface == null || (d10 = colliderSurface.d()) <= 0) {
            return;
        }
        if (d10 > 2097150) {
            J4.d.E1();
            J4.d.M1("Terrain collider have more than 2097150 triangles which is not supported");
            return;
        }
        if (this.f121361r) {
            return;
        }
        int c10 = colliderSurface.c();
        NativeFloatBuffer b10 = colliderSurface.b();
        if (b10 == null) {
            return;
        }
        float f10 = this.f121327F / (c10 - 1);
        NativeHeightfieldCollisionShape nativeHeightfieldCollisionShape = new NativeHeightfieldCollisionShape(c10, c10, b10, new Vector3f(f10, terrain.maxHeight, f10), true);
        Transform m1289clone = this.f121330I.m1289clone();
        float f11 = this.f121325D;
        float f12 = this.f121327F;
        m1289clone.setTranslation(new Vector3f(f11 + (f12 * 0.5f), 0.0f, this.f121326E + (f12 * 0.5f)));
        synchronized (this.f121367x) {
            try {
                if (this.f121361r) {
                    return;
                }
                this.f121367x.set(true);
                this.f121364u = new C15811a(nativeHeightfieldCollisionShape, m1289clone);
            } finally {
            }
        }
    }

    public final void n0(Terrain terrain, C16281h resolutions, float terrainWidth, float chunkWidth, float terrainMaxHeight) {
        if (this.f121327F == chunkWidth && this.f121328G == terrainMaxHeight) {
            return;
        }
        this.f121327F = chunkWidth;
        this.f121328G = terrainMaxHeight;
        float f10 = this.f121344a;
        int i10 = resolutions.f130784a;
        this.f121325D = (f10 / i10) * terrainWidth;
        this.f121326E = (this.f121345b / i10) * terrainWidth;
        synchronized (this.f121329H) {
            Matrix.setIdentityM(this.f121329H, 0);
            Matrix.translateM(this.f121329H, 0, terrain.getCachedGlobalPositionX() + this.f121325D, 0.0f, terrain.getCachedGlobalPositionZ() + this.f121326E);
            Nc.c.p(this.f121329H, chunkWidth, terrainMaxHeight, chunkWidth);
        }
        this.f121330I.setTranslation(new Vector3f(this.f121325D, 0.0f, this.f121326E));
        this.f121330I.setScale(new Vector3f(1.0f, 1.0f, 1.0f));
        this.f121332K = true;
        this.f121331J = true;
        f0(terrain);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0047 A[Catch: all -> 0x004d, Exception -> 0x004f, TryCatch #0 {Exception -> 0x004f, blocks: (B:18:0x0036, B:20:0x003a, B:23:0x003f, B:25:0x0047, B:27:0x0053, B:29:0x006b, B:30:0x006d, B:38:0x0074), top: B:17:0x0036, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006b A[Catch: all -> 0x004d, Exception -> 0x004f, TryCatch #0 {Exception -> 0x004f, blocks: (B:18:0x0036, B:20:0x003a, B:23:0x003f, B:25:0x0047, B:27:0x0053, B:29:0x006b, B:30:0x006d, B:38:0x0074), top: B:17:0x0036, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean o(Terrain terrain) {
        ChunkCollisionSurface chunkCollisionSurface;
        C16278e c16278e;
        boolean e10;
        synchronized (this.f121358o) {
            try {
                if (!this.f121361r && !this.f121360q) {
                    int q10 = q(0);
                    ChunkCollisionSurface chunkCollisionSurface2 = this.f121365v;
                    try {
                        try {
                            if (chunkCollisionSurface2 != null) {
                                if (this.f121366w != q10) {
                                }
                                chunkCollisionSurface = chunkCollisionSurface2;
                                this.f121359p++;
                                if (!this.f121361r && (c16278e = this.f121342U) != null) {
                                    NativeFloatBuffer c10 = c16278e.c();
                                    C16278e c16278e2 = this.f121343V;
                                    e10 = chunkCollisionSurface.e(c10, c16278e2 == null ? c16278e2.c() : null, this.f121342U.g(), this.f121344a, this.f121345b, this.f121346c + 1, C14165a.a());
                                    if (e10) {
                                        synchronized (this.f121358o) {
                                            this.f121324C = false;
                                        }
                                    }
                                    return e10;
                                }
                                e0();
                                return false;
                            }
                            if (!this.f121361r) {
                                NativeFloatBuffer c102 = c16278e.c();
                                C16278e c16278e22 = this.f121343V;
                                e10 = chunkCollisionSurface.e(c102, c16278e22 == null ? c16278e22.c() : null, this.f121342U.g(), this.f121344a, this.f121345b, this.f121346c + 1, C14165a.a());
                                if (e10) {
                                }
                                return e10;
                            }
                            e0();
                            return false;
                        } catch (Exception e11) {
                            e11.printStackTrace();
                            e0();
                            return false;
                        }
                    } finally {
                        e0();
                    }
                    if (chunkCollisionSurface2 != null) {
                        chunkCollisionSurface2.a();
                    }
                    chunkCollisionSurface2 = new ChunkCollisionSurface(q10);
                    this.f121365v = chunkCollisionSurface2;
                    this.f121366w = q10;
                    chunkCollisionSurface = chunkCollisionSurface2;
                    this.f121359p++;
                }
                return false;
            } finally {
            }
        }
    }

    public final void o0(Terrain terrain, C16281h resolutions, int lodLevel, boolean allowSceneAttach) {
        if (c()) {
            try {
                synchronized (this.f121358o) {
                    if (lodLevel >= 0) {
                        if (lodLevel < this.f121349f.size()) {
                            ChunkSurface chunkSurface = this.f121349f.get(lodLevel);
                            C15813c c15813c = this.f121352i.get(lodLevel);
                            List<ChunkRenderableLayer> list = this.f121353j.get(lodLevel);
                            if (chunkSurface != null && c15813c != null) {
                                c15813c.q(terrain, resolutions, chunkSurface, this.f121329H, this, allowSceneAttach);
                            }
                            l0(terrain, resolutions, chunkSurface, list, lodLevel, allowSceneAttach);
                            e0();
                            return;
                        }
                    }
                    e0();
                }
            } catch (Throwable th2) {
                e0();
                throw th2;
            }
        }
    }

    public final boolean p(Terrain terrain, int lod) {
        C16278e c16278e;
        synchronized (this.f121358o) {
            try {
                if (!this.f121361r && !this.f121360q && lod >= 0 && lod < this.f121349f.size()) {
                    int q10 = q(lod);
                    ChunkSurface chunkSurface = this.f121349f.get(lod);
                    int intValue = this.f121350g.get(lod).intValue();
                    if (chunkSurface == null || intValue != q10) {
                        if (chunkSurface != null) {
                            chunkSurface.j();
                        }
                        C16282i.b d10 = terrain.getSurfaceTopologyCache().d(q10, true);
                        try {
                            ChunkSurface chunkSurface2 = new ChunkSurface(q10, true, d10);
                            this.f121349f.set(lod, chunkSurface2);
                            this.f121350g.set(lod, Integer.valueOf(q10));
                            this.f121356m.set(lod, null);
                            this.f121357n.set(lod, null);
                            chunkSurface = chunkSurface2;
                        } catch (RuntimeException e10) {
                            d10.x();
                            throw e10;
                        }
                    }
                    this.f121359p++;
                    try {
                        try {
                            if (!this.f121361r && (c16278e = this.f121342U) != null) {
                                NativeFloatBuffer c10 = c16278e.c();
                                C16278e c16278e2 = this.f121343V;
                                if (chunkSurface.J(c10, c16278e2 != null ? c16278e2.c() : null, this.f121342U.g(), this.f121344a, this.f121345b, this.f121346c + 1, C14165a.a())) {
                                    chunkSurface.E();
                                    synchronized (this.f121358o) {
                                        try {
                                            if (lod < this.f121351h.size()) {
                                                this.f121351h.set(lod, Boolean.FALSE);
                                            }
                                        } finally {
                                        }
                                    }
                                    e0();
                                    return true;
                                }
                                synchronized (this.f121358o) {
                                    if (lod >= 0) {
                                        try {
                                            if (lod < this.f121351h.size()) {
                                                this.f121351h.set(lod, Boolean.TRUE);
                                            }
                                        } finally {
                                        }
                                    }
                                }
                                e0();
                                return false;
                            }
                            return false;
                        } catch (Exception e11) {
                            e11.printStackTrace();
                            e0();
                            return false;
                        }
                    } finally {
                        e0();
                    }
                }
                return false;
            } finally {
            }
        }
    }

    public final int q(int lodLevel) {
        int i10 = this.f121346c + 1;
        int i11 = -1;
        int i12 = 0;
        int i13 = -1;
        while (i12 <= lodLevel) {
            int N10 = Nc.b.N(2, (int) Nc.b.w0((float) (i10 / Math.pow(2.0d, i12))));
            if (i13 > 0 && N10 >= i13) {
                N10 = Nc.b.N(2, i13 - 1);
            }
            i13 = N10;
            i12++;
            i11 = i13;
        }
        return i11;
    }

    public void r(Terrain terrain) {
        this.f121361r = true;
        this.f121362s = null;
        for (int i10 = 0; i10 < this.f121353j.size(); i10++) {
            List<ChunkRenderableLayer> list = this.f121353j.get(i10);
            for (int i11 = 0; i11 < list.size(); i11++) {
                list.get(i11).t(terrain);
            }
            list.clear();
        }
        for (int i12 = 0; i12 < this.f121352i.size(); i12++) {
            C15813c c15813c = this.f121352i.get(i12);
            if (c15813c != null) {
                c15813c.m(terrain);
            }
        }
        C15811a c15811a = this.f121363t;
        if (c15811a != null) {
            terrain.removeCollider(c15811a);
            this.f121363t = null;
        }
        t();
        synchronized (this.f121367x) {
            this.f121364u = null;
            this.f121367x.set(false);
        }
    }

    public final void s(Terrain terrain, int lodLevel) {
        if (lodLevel < 0 || lodLevel >= this.f121352i.size()) {
            return;
        }
        C15813c c15813c = this.f121352i.get(lodLevel);
        if (c15813c != null) {
            c15813c.j(terrain);
        }
        List<ChunkRenderableLayer> list = this.f121353j.get(lodLevel);
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.get(i10).q(terrain);
        }
    }

    public void t() {
        synchronized (this.f121358o) {
            try {
                this.f121360q = true;
                if (this.f121359p > 0) {
                    return;
                }
                u();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void u() {
        for (int i10 = 0; i10 < this.f121349f.size(); i10++) {
            ChunkSurface chunkSurface = this.f121349f.get(i10);
            if (chunkSurface != null) {
                chunkSurface.j();
            }
        }
        ChunkCollisionSurface chunkCollisionSurface = this.f121365v;
        if (chunkCollisionSurface != null) {
            chunkCollisionSurface.a();
            this.f121365v = null;
            this.f121366w = 0;
        }
        this.f121349f.clear();
        this.f121350g.clear();
        this.f121351h.clear();
        this.f121324C = true;
        this.f121356m.clear();
        this.f121357n.clear();
        this.f121333L = -1;
        this.f121360q = false;
    }

    public void v(Terrain terrain) {
        for (int i10 = 0; i10 < this.f121352i.size(); i10++) {
            C15813c c15813c = this.f121352i.get(i10);
            if (c15813c != null) {
                c15813c.l(terrain);
            }
            List<ChunkRenderableLayer> list = this.f121353j.get(i10);
            for (int i11 = 0; i11 < list.size(); i11++) {
                list.get(i11).s(terrain);
            }
        }
    }

    public final void w(Terrain terrain) {
        synchronized (this.f121358o) {
            try {
                if (!this.f121361r && !this.f121360q) {
                    int E10 = E(terrain);
                    while (this.f121349f.size() < E10) {
                        this.f121349f.add(null);
                        this.f121350g.add(0);
                        this.f121351h.add(Boolean.FALSE);
                        this.f121352i.add(new C15813c());
                        this.f121353j.add(new SteppedArrayList());
                        this.f121337P[this.f121349f.size() - 1] = 0;
                        this.f121356m.add(null);
                        this.f121357n.add(null);
                    }
                    while (this.f121349f.size() > E10) {
                        int size = this.f121349f.size() - 1;
                        C15813c remove = this.f121352i.remove(size);
                        if (remove != null) {
                            remove.m(terrain);
                        }
                        List<ChunkRenderableLayer> remove2 = this.f121353j.remove(size);
                        for (int i10 = 0; i10 < remove2.size(); i10++) {
                            remove2.get(i10).t(terrain);
                        }
                        remove2.clear();
                        this.f121337P[size] = 0;
                        ChunkSurface remove3 = this.f121349f.remove(size);
                        if (remove3 != null) {
                            remove3.j();
                        }
                        this.f121350g.remove(size);
                        this.f121351h.remove(size);
                        this.f121356m.remove(size);
                        this.f121357n.remove(size);
                    }
                }
            } finally {
            }
        }
    }

    public final int x() {
        synchronized (this.f121358o) {
            for (int i10 = 0; i10 < this.f121349f.size(); i10++) {
                try {
                    if (T(i10)) {
                        return i10;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return 0;
        }
    }

    public final ChunkRenderableLayer y(List<ChunkRenderableLayer> layerMapList, TerrainLayer layer) {
        for (int i10 = 0; i10 < layerMapList.size(); i10++) {
            ChunkRenderableLayer chunkRenderableLayer = layerMapList.get(i10);
            if (chunkRenderableLayer.v(layer)) {
                return chunkRenderableLayer;
            }
        }
        return null;
    }

    public ChunkSurface z() {
        synchronized (this.f121358o) {
            try {
                if (!this.f121361r && !this.f121360q && !this.f121349f.isEmpty()) {
                    int i10 = this.f121333L;
                    if (i10 >= 0 && i10 < this.f121349f.size()) {
                        return this.f121349f.get(i10);
                    }
                    return null;
                }
                return null;
            } finally {
            }
        }
    }
}
