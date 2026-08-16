package m9;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.Core.PooledObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import m9.C14198d;

public final class C14199e {

    public static final float f96786Q = 0.001f;

    public static final float f96787R = 0.05f;

    public static final int f96788S = 8;

    public static final int f96789T = 8;

    public static final int f96790U = 16;

    public static final C14198d[] f96791V = new C14198d[0];

    public int f96792A;

    public boolean f96793B;

    public boolean f96794C;

    public volatile n9.b f96795D;

    public float f96796E;

    public float f96797F;

    public float f96798G;

    public volatile float f96799H;

    public volatile float f96800I;

    public volatile float f96801J;

    public volatile float f96802K;

    public float f96803L;

    public float f96804M;

    public boolean f96805N;

    public boolean f96806O;

    public volatile boolean f96807P;

    public Map<Long, C14198d> f96808a = new HashMap(64);

    public Map<Long, List<C14198d>> f96809b = new HashMap(64);

    public Map<PooledObject, C14198d> f96810c = new HashMap(128);

    public final AtomicReference<PooledObject> f96811d = new AtomicReference<>();

    public final AtomicReference<b> f96812e = new AtomicReference<>();

    public final AtomicReference<d> f96813f = new AtomicReference<>();

    public final AtomicReference<c> f96814g = new AtomicReference<>();

    public final AtomicBoolean f96815h = new AtomicBoolean(true);

    public final AtomicBoolean f96816i = new AtomicBoolean();

    public final AtomicBoolean f96817j = new AtomicBoolean();

    public final AtomicInteger f96818k = new AtomicInteger();

    public final AtomicInteger f96819l = new AtomicInteger();

    public ArrayDeque<C14198d> f96820m = new ArrayDeque<>();

    public int f96821n = 1;

    public final Set<C14198d> f96822o = new HashSet();

    public final Set<C14198d> f96823p = new HashSet();

    public final j f96824q = new j();

    public final Qb.b f96825r = new Qb.b();

    public volatile C14198d[] f96826s;

    public volatile d f96827t;

    public volatile b f96828u;

    public C14198d[] f96829v;

    public int f96830w;

    public FilamentScene f96831x;

    public List<C14197c> f96832y;

    public float f96833z;

    public static final class b {

        public final C14198d[] f96834a;

        public final C14198d[] f96835b;

        public int f96836c;

        public int f96837d;

        public static int b(b bVar) {
            int i10 = bVar.f96837d;
            bVar.f96837d = i10 + 1;
            return i10;
        }

        public static int e(b bVar) {
            int i10 = bVar.f96836c;
            bVar.f96836c = i10 + 1;
            return i10;
        }

        public b(C14198d[] dirtyChunks, C14198d[] removedChunks) {
            this.f96834a = dirtyChunks == null ? C14199e.f96791V : dirtyChunks;
            this.f96835b = removedChunks == null ? C14199e.f96791V : removedChunks;
        }
    }

    public static final class c {

        public final int f96838a;

        public final C14198d[] f96839b;

        public c(int revision, C14198d[] chunks) {
            this.f96838a = revision;
            this.f96839b = chunks;
        }
    }

    public static final class d {

        public final List<C14197c> f96840a;

        public final FilamentScene f96841b;

        public final boolean f96842c;

        public final boolean f96843d;

        public final float f96844e;

        public final Map<Long, C14198d> f96845f;

        public final Map<Long, List<C14198d>> f96846g;

        public final Map<PooledObject, C14198d> f96847h;

        public final C14198d[] f96848i;

        public FilamentScene f96849j;

        public C14198d[] f96850k;

        public int f96851l;

        public int f96852m;

        public static int f(d dVar) {
            int i10 = dVar.f96851l;
            dVar.f96851l = i10 + 1;
            return i10;
        }

        public static int h(d dVar) {
            int i10 = dVar.f96852m;
            dVar.f96852m = i10 + 1;
            return i10;
        }

        public d(List<C14197c> materialObjects, FilamentScene scene, boolean castShadow, boolean receiveShadow, float chunkSize, Map<Long, C14198d> chunks, Map<Long, List<C14198d>> chunksByCell, Map<PooledObject, C14198d> chunkByObject, C14198d[] snapshot) {
            this.f96850k = C14199e.f96791V;
            this.f96840a = materialObjects;
            this.f96841b = scene;
            this.f96842c = castShadow;
            this.f96843d = receiveShadow;
            this.f96844e = chunkSize;
            this.f96845f = chunks;
            this.f96846g = chunksByCell;
            this.f96847h = chunkByObject;
            this.f96848i = snapshot;
        }
    }

    public C14199e() {
        C14198d[] c14198dArr = f96791V;
        this.f96826s = c14198dArr;
        this.f96829v = c14198dArr;
        this.f96832y = new SteppedArrayList(0);
        this.f96833z = 1.0f;
        this.f96792A = 1;
        this.f96799H = 0.5f;
        this.f96800I = 0.5f;
        this.f96802K = 1.0f;
    }

    public static long k(PooledObject obj, float targetChunkSize) {
        return (((int) Math.floor(obj.k() / targetChunkSize)) & 4294967295L) ^ (((int) Math.floor(obj.i() / targetChunkSize)) << 32);
    }

    public void A(PooledObject obj) {
        y(obj, 3);
    }

    public void B(PooledObject obj) {
        y(obj, 2);
    }

    public final void C() {
        this.f96826s = (C14198d[]) this.f96808a.values().toArray(f96791V);
    }

    public final void D(C14198d chunk) {
        List<C14198d> list;
        if (chunk == null || (list = this.f96809b.get(Long.valueOf(chunk.f96769b))) == null) {
            return;
        }
        list.remove(chunk);
        if (list.isEmpty()) {
            this.f96809b.remove(Long.valueOf(chunk.f96769b));
        }
    }

    public void E() {
        this.f96819l.incrementAndGet();
        this.f96816i.set(true);
    }

    public final void F() {
        this.f96820m.clear();
        this.f96829v = f96791V;
        this.f96830w = 0;
        int i10 = this.f96821n + 1;
        this.f96821n = i10;
        if (i10 == 0) {
            this.f96821n = 1;
        }
    }

    public final void G(C14198d chunk) {
        chunk.k(this.f96831x, this.f96795D);
    }

    public void H() {
        if (this.f96807P && this.f96831x != null && this.f96795D != null && this.f96795D.g() && this.f96795D.h()) {
            c andSet = this.f96814g.getAndSet(null);
            if (andSet != null) {
                if (andSet.f96838a == this.f96819l.get()) {
                    F();
                    this.f96829v = andSet.f96839b;
                    this.f96830w = 0;
                } else {
                    this.f96816i.set(true);
                }
            }
            int i10 = 0;
            while (!this.f96820m.isEmpty() && i10 < 8) {
                C14198d pollFirst = this.f96820m.pollFirst();
                pollFirst.f96779l = 0;
                if (!pollFirst.f96770c.isEmpty()) {
                    G(pollFirst);
                    this.f96815h.set(true);
                    i10++;
                }
            }
            while (i10 < 8) {
                int i11 = this.f96830w;
                C14198d[] c14198dArr = this.f96829v;
                if (i11 >= c14198dArr.length) {
                    break;
                }
                this.f96830w = i11 + 1;
                C14198d c14198d = c14198dArr[i11];
                if (c14198d != null && !c14198d.f96770c.isEmpty()) {
                    G(c14198d);
                    this.f96815h.set(true);
                    i10++;
                }
            }
            if (this.f96830w >= this.f96829v.length) {
                this.f96829v = f96791V;
                this.f96830w = 0;
            }
        }
    }

    public final void b(PooledObject obj) {
        C14198d c14198d = this.f96810c.get(obj);
        if (c14198d != null) {
            this.f96822o.add(c14198d);
            return;
        }
        C14198d p10 = p(obj);
        if (p10 == null || p10.f96770c.contains(obj)) {
            return;
        }
        p10.f96770c.add(obj);
        this.f96810c.put(obj, p10);
        this.f96822o.add(p10);
    }

    public void c() {
        b bVar = this.f96828u;
        if (bVar == null) {
            bVar = this.f96812e.getAndSet(null);
            if (bVar == null) {
                return;
            } else {
                this.f96828u = bVar;
            }
        }
        int i10 = 16;
        while (bVar.f96837d < bVar.f96835b.length && i10 > 0) {
            n(this.f96831x, bVar.f96835b[b.b(bVar)]);
            i10--;
        }
        while (bVar.f96836c < bVar.f96834a.length && i10 > 0) {
            C14198d c14198d = bVar.f96834a[b.e(bVar)];
            if (c14198d != null && !c14198d.f96770c.isEmpty()) {
                c14198d.l(this.f96832y, this.f96831x, this.f96793B, this.f96794C);
                z(c14198d);
                this.f96815h.set(true);
            }
            i10--;
        }
        if (bVar.f96837d < bVar.f96835b.length || bVar.f96836c < bVar.f96834a.length) {
            return;
        }
        this.f96828u = null;
    }

    public void d() {
        this.f96824q.b(this.f96825r);
    }

    public boolean e() {
        K8.a.G();
        d dVar = this.f96827t;
        if (dVar == null) {
            if (!this.f96817j.compareAndSet(false, true)) {
                return false;
            }
            try {
                if (this.f96828u == null && this.f96812e.get() == null && (dVar = this.f96813f.getAndSet(null)) != null) {
                    dVar.f96849j = this.f96831x;
                    dVar.f96850k = this.f96826s;
                    this.f96827t = dVar;
                    F();
                    this.f96819l.incrementAndGet();
                    this.f96814g.set(null);
                    this.f96816i.set(false);
                    this.f96822o.clear();
                    this.f96823p.clear();
                    this.f96812e.set(null);
                    this.f96831x = dVar.f96841b;
                    this.f96832y = dVar.f96840a;
                    this.f96793B = dVar.f96842c;
                    this.f96794C = dVar.f96843d;
                    this.f96833z = dVar.f96844e;
                    this.f96808a = dVar.f96845f;
                    this.f96809b = dVar.f96846g;
                    this.f96810c = dVar.f96847h;
                    this.f96826s = dVar.f96848i;
                    this.f96815h.set(true);
                }
                return false;
            } finally {
                this.f96817j.set(false);
            }
        }
        int i10 = 8;
        while (dVar.f96851l < dVar.f96850k.length && i10 > 0) {
            C14198d c14198d = dVar.f96850k[d.f(dVar)];
            if (c14198d != null) {
                c14198d.c(dVar.f96849j);
            }
            i10--;
        }
        if (dVar.f96851l < dVar.f96850k.length) {
            return false;
        }
        while (dVar.f96852m < dVar.f96848i.length && i10 > 0) {
            C14198d c14198d2 = dVar.f96848i[d.h(dVar)];
            if (c14198d2 != null) {
                c14198d2.l(this.f96832y, this.f96831x, this.f96793B, this.f96794C);
                c14198d2.f96780m = null;
                z(c14198d2);
                this.f96815h.set(true);
            }
            i10--;
        }
        if (dVar.f96852m < dVar.f96848i.length) {
            return false;
        }
        this.f96827t = null;
        return true;
    }

    public final void f(PooledObject obj) {
        C14198d remove = this.f96810c.remove(obj);
        if (remove == null) {
            return;
        }
        remove.f96770c.remove(obj);
        if (!remove.f96770c.isEmpty()) {
            this.f96822o.add(remove);
            return;
        }
        this.f96823p.add(remove);
        D(remove);
        this.f96808a.remove(Long.valueOf(remove.f96768a));
        this.f96822o.remove(remove);
    }

    public final void g(PooledObject obj) {
        C14198d c14198d = this.f96810c.get(obj);
        long j10 = j(obj);
        if (c14198d == null) {
            b(obj);
            return;
        }
        if (c14198d.f96769b == j10) {
            this.f96822o.add(c14198d);
            return;
        }
        c14198d.f96770c.remove(obj);
        this.f96822o.add(c14198d);
        if (c14198d.f96770c.isEmpty()) {
            this.f96823p.add(c14198d);
            D(c14198d);
            this.f96808a.remove(Long.valueOf(c14198d.f96768a));
            this.f96822o.remove(c14198d);
        }
        C14198d p10 = p(obj);
        if (p10 == null || p10.f96770c.contains(obj)) {
            return;
        }
        p10.f96770c.add(obj);
        this.f96810c.put(obj, p10);
        this.f96822o.add(p10);
    }

    public void h(Camera camera, boolean enableMaxRenderDistance, float maxDistance, boolean enableImpostorSystem, boolean impostorResourcesReady, float impostorStartDistance, n9.b impostorResources, float captureHalfWidth, float captureHalfHeight, float capturePivotYOffset, float captureSourceScale) {
        this.f96795D = impostorResources;
        if (camera == null) {
            this.f96807P = false;
            return;
        }
        Vector3 renderCameraPosition = camera.getRenderCameraPosition();
        float x10 = renderCameraPosition.getX();
        float y10 = renderCameraPosition.getY();
        float z10 = renderCameraPosition.getZ();
        boolean z11 = enableImpostorSystem && impostorResourcesReady;
        float M10 = Nc.b.M(0.05f, captureHalfWidth);
        float M11 = Nc.b.M(0.05f, captureHalfHeight);
        float M12 = Nc.b.M(1.0E-4f, captureSourceScale);
        boolean z12 = (this.f96806O == z11 && Float.compare(this.f96799H, M10) == 0 && Float.compare(this.f96800I, M11) == 0 && Float.compare(this.f96801J, capturePivotYOffset) == 0 && Float.compare(this.f96802K, M12) == 0) ? false : true;
        boolean z13 = (this.f96807P && Float.compare(this.f96796E, x10) == 0 && Float.compare(this.f96797F, y10) == 0 && Float.compare(this.f96798G, z10) == 0 && this.f96805N == enableMaxRenderDistance && Float.compare(this.f96803L, maxDistance) == 0 && this.f96806O == z11 && Float.compare(this.f96804M, impostorStartDistance) == 0) ? false : true;
        this.f96796E = x10;
        this.f96797F = y10;
        this.f96798G = z10;
        this.f96805N = enableMaxRenderDistance;
        this.f96803L = maxDistance;
        this.f96806O = z11;
        this.f96804M = impostorStartDistance;
        this.f96799H = M10;
        this.f96800I = M11;
        this.f96801J = capturePivotYOffset;
        this.f96802K = M12;
        this.f96807P = true;
        if (z13) {
            this.f96815h.set(true);
        }
        if (z11 && z12) {
            E();
        }
    }

    public void i() {
        this.f96792A = Math.max(1, Qb.a.f().f0());
    }

    public final long j(PooledObject obj) {
        return k(obj, this.f96833z);
    }

    public final void l() {
        PooledObject andSet = this.f96811d.getAndSet(null);
        while (andSet != null) {
            PooledObject f10 = andSet.f();
            andSet.A();
            andSet = f10;
        }
    }

    public synchronized void m(FilamentScene scene) {
        try {
            this.f96818k.incrementAndGet();
            this.f96819l.incrementAndGet();
            d dVar = this.f96827t;
            if (dVar != null) {
                for (int i10 = dVar.f96851l; i10 < dVar.f96850k.length; i10++) {
                    C14198d c14198d = dVar.f96850k[i10];
                    if (c14198d != null) {
                        c14198d.c(dVar.f96849j);
                    }
                }
            }
            for (C14198d c14198d2 : this.f96808a.values()) {
                if (c14198d2 != null) {
                    c14198d2.c(scene);
                }
            }
            this.f96808a.clear();
            this.f96809b.clear();
            this.f96810c.clear();
            l();
            this.f96812e.set(null);
            this.f96813f.set(null);
            this.f96814g.set(null);
            this.f96827t = null;
            this.f96828u = null;
            this.f96820m.clear();
            this.f96822o.clear();
            this.f96795D = null;
            this.f96807P = false;
            this.f96815h.set(false);
            this.f96816i.set(false);
            this.f96817j.set(false);
            this.f96831x = null;
            this.f96832y = new SteppedArrayList(0);
            C14198d[] c14198dArr = f96791V;
            this.f96826s = c14198dArr;
            this.f96829v = c14198dArr;
            this.f96830w = 0;
            this.f96824q.d();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void n(FilamentScene scene, C14198d chunk) {
        if (chunk == null) {
            return;
        }
        chunk.c(scene);
    }

    public void o() {
        if (this.f96815h.getAndSet(false)) {
            C14198d[] c14198dArr = this.f96826s;
            if (!this.f96807P || c14198dArr.length == 0) {
                return;
            }
            if (!this.f96824q.c(0)) {
                this.f96815h.set(true);
                return;
            }
            for (C14198d c14198d : c14198dArr) {
                if (c14198d != null && !c14198d.f96770c.isEmpty()) {
                    float f10 = this.f96803L + c14198d.f96784q;
                    float f11 = f10 * f10;
                    float f12 = this.f96796E - c14198d.f96781n;
                    float f13 = this.f96797F - c14198d.f96782o;
                    float f14 = this.f96798G - c14198d.f96783p;
                    float f15 = (f12 * f12) + (f14 * f14);
                    C14198d.a aVar = !(!this.f96805N || (((f13 * f13) + f15) > f11 ? 1 : (((f13 * f13) + f15) == f11 ? 0 : -1)) <= 0) ? C14198d.a.HIDDEN : this.f96806O && r(f15, c14198d, this.f96804M) ? C14198d.a.IMPOSTOR_VISIBLE : C14198d.a.NORMAL_VISIBLE;
                    if (c14198d.f96780m != aVar) {
                        c14198d.b(this.f96824q, aVar);
                    }
                }
            }
            this.f96824q.f();
        }
    }

    public final C14198d p(PooledObject obj) {
        long j10 = j(obj);
        List<C14198d> list = this.f96809b.get(Long.valueOf(j10));
        if (list != null) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                C14198d c14198d = list.get(i10);
                if (c14198d.f96770c.size() < this.f96792A) {
                    return c14198d;
                }
            }
        } else {
            list = new SteppedArrayList<>(4);
            this.f96809b.put(Long.valueOf(j10), list);
        }
        C14198d c14198d2 = new C14198d(s(), j10);
        this.f96808a.put(Long.valueOf(c14198d2.f96768a), c14198d2);
        list.add(c14198d2);
        return c14198d2;
    }

    public boolean q() {
        return (this.f96813f.get() == null && this.f96827t == null) ? false : true;
    }

    public final boolean r(float horizontalDistSq, C14198d chunk, float impostorStartDistance) {
        float f10 = impostorStartDistance + chunk.f96785r;
        return horizontalDistSq >= f10 * f10;
    }

    public final long s() {
        long size = this.f96808a.size();
        do {
            size++;
        } while (this.f96808a.containsKey(Long.valueOf(size)));
        return size;
    }

    public final void t(C14198d chunk) {
        chunk.e(this.f96799H, this.f96800I, this.f96801J, this.f96802K);
    }

    public void u() {
        if (this.f96827t == null && this.f96828u == null && this.f96812e.get() == null && this.f96811d.get() != null) {
            if (this.f96817j.compareAndSet(false, true)) {
                try {
                    if (this.f96827t == null && this.f96828u == null && this.f96812e.get() == null) {
                        PooledObject andSet = this.f96811d.getAndSet(null);
                        if (andSet != null) {
                            this.f96822o.clear();
                            this.f96823p.clear();
                            while (andSet != null) {
                                PooledObject f10 = andSet.f();
                                int A10 = andSet.A();
                                if (A10 == 1) {
                                    b(andSet);
                                } else if (A10 == 2) {
                                    g(andSet);
                                } else if (A10 == 3) {
                                    f(andSet);
                                }
                                andSet = f10;
                            }
                            for (C14198d c14198d : this.f96822o) {
                                if (c14198d != null && !c14198d.f96770c.isEmpty()) {
                                    c14198d.f(this.f96832y);
                                    c14198d.g();
                                    t(c14198d);
                                }
                            }
                            C();
                            AtomicReference<b> atomicReference = this.f96812e;
                            Set<C14198d> set = this.f96822o;
                            C14198d[] c14198dArr = f96791V;
                            atomicReference.set(new b((C14198d[]) set.toArray(c14198dArr), (C14198d[]) this.f96823p.toArray(c14198dArr)));
                            this.f96815h.set(true);
                            this.f96817j.set(false);
                        }
                    }
                } finally {
                    this.f96817j.set(false);
                }
            }
        }
    }

    public void v() {
        if (this.f96814g.get() == null) {
            if (this.f96816i.getAndSet(false)) {
                int i10 = this.f96819l.get();
                C14198d[] c14198dArr = this.f96826s;
                for (C14198d c14198d : c14198dArr) {
                    if (c14198d != null && !c14198d.f96770c.isEmpty()) {
                        t(c14198d);
                    }
                }
                if (i10 != this.f96819l.get()) {
                    this.f96816i.set(true);
                } else {
                    if (androidx.lifecycle.c.a(this.f96814g, null, new c(i10, c14198dArr))) {
                        return;
                    }
                    this.f96816i.set(true);
                }
            }
        }
    }

    public void w(List<C14197c> materialObjects, List<PooledObject> objects, FilamentScene scene, boolean castShadow, boolean receiveShadow, float baseObjectRadius) {
        HashMap hashMap;
        float f10;
        C14198d c14198d;
        List<PooledObject> list = objects;
        if (this.f96813f.get() != null) {
            return;
        }
        int i10 = this.f96818k.get();
        float max = Math.max(0.001f, 5.0f * baseObjectRadius);
        int max2 = Math.max(1, this.f96792A);
        HashMap hashMap2 = new HashMap(Math.max(64, list == null ? 0 : objects.size() / max2));
        HashMap hashMap3 = new HashMap(64);
        HashMap hashMap4 = new HashMap(list == null ? 16 : objects.size());
        if (list != null) {
            int i11 = 0;
            long j10 = 1;
            while (i11 < objects.size()) {
                PooledObject pooledObject = list.get(i11);
                if (pooledObject == null) {
                    f10 = max;
                    hashMap = hashMap3;
                } else {
                    long k10 = k(pooledObject, max);
                    List list2 = (List) hashMap3.get(Long.valueOf(k10));
                    if (list2 == null) {
                        list2 = new SteppedArrayList(4);
                        hashMap3.put(Long.valueOf(k10), list2);
                    }
                    hashMap = hashMap3;
                    int i12 = 0;
                    while (true) {
                        if (i12 >= list2.size()) {
                            f10 = max;
                            c14198d = null;
                            break;
                        }
                        c14198d = (C14198d) list2.get(i12);
                        f10 = max;
                        if (c14198d.f96770c.size() < max2) {
                            break;
                        }
                        i12++;
                        max = f10;
                    }
                    if (c14198d == null) {
                        c14198d = new C14198d(j10, k10);
                        list2.add(c14198d);
                        hashMap2.put(Long.valueOf(c14198d.f96768a), c14198d);
                        j10++;
                    }
                    c14198d.f96770c.add(pooledObject);
                    hashMap4.put(pooledObject, c14198d);
                }
                i11++;
                list = objects;
                hashMap3 = hashMap;
                max = f10;
            }
        }
        float f11 = max;
        HashMap hashMap5 = hashMap3;
        C14198d[] c14198dArr = (C14198d[]) hashMap2.values().toArray(f96791V);
        for (int i13 = 0; i13 < c14198dArr.length; i13++) {
            c14198dArr[i13].f(materialObjects);
            c14198dArr[i13].g();
            t(c14198dArr[i13]);
        }
        if (i10 != this.f96818k.get()) {
            return;
        }
        androidx.lifecycle.c.a(this.f96813f, null, new d(materialObjects == null ? new SteppedArrayList(0) : new SteppedArrayList(materialObjects), scene, castShadow, receiveShadow, f11, hashMap2, hashMap5, hashMap4, c14198dArr));
    }

    public void x(PooledObject obj) {
        y(obj, 1);
    }

    public final void y(PooledObject obj, int changeType) {
        PooledObject pooledObject;
        if (obj == null || !obj.p(changeType)) {
            return;
        }
        do {
            pooledObject = this.f96811d.get();
            obj.v(pooledObject);
        } while (!androidx.lifecycle.c.a(this.f96811d, pooledObject, obj));
    }

    public final void z(C14198d chunk) {
        if (chunk != null) {
            int i10 = chunk.f96779l;
            int i11 = this.f96821n;
            if (i10 == i11) {
                return;
            }
            chunk.f96779l = i11;
            this.f96820m.addLast(chunk);
        }
    }
}
