package com.bumptech.glide.load.engine;

import G.a;
import G.j;
import Z.a;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.load.engine.g;
import com.bumptech.glide.load.engine.o;
import java.util.Map;
import java.util.concurrent.Executor;

public class j implements l, j.a, o.a {

    public static final int f59191j = 150;

    public final q f59193a;

    public final n f59194b;

    public final G.j f59195c;

    public final b f59196d;

    public final w f59197e;

    public final c f59198f;

    public final a f59199g;

    public final com.bumptech.glide.load.engine.a f59200h;

    public static final String f59190i = "Engine";

    public static final boolean f59192k = Log.isLoggable(f59190i, 2);

    @VisibleForTesting
    public static class a {

        public final g.e f59201a;

        public final Pools.Pool<g<?>> f59202b = Z.a.e(150, new C0924a());

        public int f59203c;

        public class C0924a implements a.d<g<?>> {
            public C0924a() {
            }

            @Override
            public g<?> create() {
                a aVar = a.this;
                return new g<>(aVar.f59201a, aVar.f59202b);
            }
        }

        public a(g.e eVar) {
            this.f59201a = eVar;
        }

        public <R> g<R> a(com.bumptech.glide.d dVar, Object obj, m mVar, C.e eVar, int i10, int i11, Class<?> cls, Class<R> cls2, com.bumptech.glide.h hVar, i iVar, Map<Class<?>, C.l<?>> map, boolean z10, boolean z11, boolean z12, C.h hVar2, g.b<R> bVar) {
            g gVar = (g) Y.k.d(this.f59202b.acquire());
            int i12 = this.f59203c;
            this.f59203c = i12 + 1;
            return gVar.t(dVar, obj, mVar, eVar, i10, i11, cls, cls2, hVar, iVar, map, z10, z11, z12, hVar2, bVar, i12);
        }
    }

    @VisibleForTesting
    public static class b {

        public final H.a f59205a;

        public final H.a f59206b;

        public final H.a f59207c;

        public final H.a f59208d;

        public final l f59209e;

        public final o.a f59210f;

        public final Pools.Pool<k<?>> f59211g = Z.a.e(150, new a());

        public class a implements a.d<k<?>> {
            public a() {
            }

            @Override
            public k<?> create() {
                b bVar = b.this;
                return new k<>(bVar.f59205a, bVar.f59206b, bVar.f59207c, bVar.f59208d, bVar.f59209e, bVar.f59210f, bVar.f59211g);
            }
        }

        public b(H.a aVar, H.a aVar2, H.a aVar3, H.a aVar4, l lVar, o.a aVar5) {
            this.f59205a = aVar;
            this.f59206b = aVar2;
            this.f59207c = aVar3;
            this.f59208d = aVar4;
            this.f59209e = lVar;
            this.f59210f = aVar5;
        }

        public <R> k<R> a(C.e eVar, boolean z10, boolean z11, boolean z12, boolean z13) {
            return ((k) Y.k.d(this.f59211g.acquire())).l(eVar, z10, z11, z12, z13);
        }

        @VisibleForTesting
        public void b() {
            Y.e.c(this.f59205a);
            Y.e.c(this.f59206b);
            Y.e.c(this.f59207c);
            Y.e.c(this.f59208d);
        }
    }

    public static class c implements g.e {

        public final a.InterfaceC0134a f59213a;

        public volatile G.a f59214b;

        public c(a.InterfaceC0134a interfaceC0134a) {
            this.f59213a = interfaceC0134a;
        }

        @Override
        public G.a a() {
            if (this.f59214b == null) {
                synchronized (this) {
                    try {
                        if (this.f59214b == null) {
                            this.f59214b = this.f59213a.build();
                        }
                        if (this.f59214b == null) {
                            this.f59214b = new G.b();
                        }
                    } finally {
                    }
                }
            }
            return this.f59214b;
        }

        @VisibleForTesting
        public synchronized void b() {
            if (this.f59214b == null) {
                return;
            }
            this.f59214b.clear();
        }
    }

    public class d {

        public final k<?> f59215a;

        public final U.i f59216b;

        public d(U.i iVar, k<?> kVar) {
            this.f59216b = iVar;
            this.f59215a = kVar;
        }

        public void a() {
            synchronized (j.this) {
                this.f59215a.s(this.f59216b);
            }
        }
    }

    public j(G.j jVar, a.InterfaceC0134a interfaceC0134a, H.a aVar, H.a aVar2, H.a aVar3, H.a aVar4, boolean z10) {
        this(jVar, interfaceC0134a, aVar, aVar2, aVar3, aVar4, null, null, null, null, null, null, z10);
    }

    public static void k(String str, long j10, C.e eVar) {
        Log.v(f59190i, str + " in " + Y.g.a(j10) + "ms, key: " + ((Object) eVar));
    }

    @Override
    public synchronized void a(k<?> kVar, C.e eVar, o<?> oVar) {
        if (oVar != null) {
            try {
                if (oVar.d()) {
                    this.f59200h.a(eVar, oVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f59193a.e(eVar, kVar);
    }

    @Override
    public synchronized void b(k<?> kVar, C.e eVar) {
        this.f59193a.e(eVar, kVar);
    }

    @Override
    public void c(C.e eVar, o<?> oVar) {
        this.f59200h.d(eVar);
        if (oVar.d()) {
            this.f59195c.f(eVar, oVar);
        } else {
            this.f59197e.a(oVar, false);
        }
    }

    @Override
    public void d(@NonNull t<?> tVar) {
        this.f59197e.a(tVar, true);
    }

    public void e() {
        this.f59198f.a().clear();
    }

    public final o<?> f(C.e eVar) {
        t<?> g10 = this.f59195c.g(eVar);
        if (g10 == null) {
            return null;
        }
        return g10 instanceof o ? (o) g10 : new o<>(g10, true, true, eVar, this);
    }

    public <R> d g(com.bumptech.glide.d dVar, Object obj, C.e eVar, int i10, int i11, Class<?> cls, Class<R> cls2, com.bumptech.glide.h hVar, i iVar, Map<Class<?>, C.l<?>> map, boolean z10, boolean z11, C.h hVar2, boolean z12, boolean z13, boolean z14, boolean z15, U.i iVar2, Executor executor) {
        long b10 = f59192k ? Y.g.b() : 0L;
        m a10 = this.f59194b.a(obj, eVar, i10, i11, map, cls, cls2, hVar2);
        synchronized (this) {
            try {
                o<?> j10 = j(a10, z12, b10);
                if (j10 == null) {
                    return n(dVar, obj, eVar, i10, i11, cls, cls2, hVar, iVar, map, z10, z11, hVar2, z12, z13, z14, z15, iVar2, executor, a10, b10);
                }
                iVar2.b(j10, C.a.MEMORY_CACHE);
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public final o<?> h(C.e eVar) {
        o<?> e10 = this.f59200h.e(eVar);
        if (e10 != null) {
            e10.b();
        }
        return e10;
    }

    public final o<?> i(C.e eVar) {
        o<?> f10 = f(eVar);
        if (f10 != null) {
            f10.b();
            this.f59200h.a(eVar, f10);
        }
        return f10;
    }

    @Nullable
    public final o<?> j(m mVar, boolean z10, long j10) {
        if (!z10) {
            return null;
        }
        o<?> h10 = h(mVar);
        if (h10 != null) {
            if (f59192k) {
                k("Loaded resource from active resources", j10, mVar);
            }
            return h10;
        }
        o<?> i10 = i(mVar);
        if (i10 == null) {
            return null;
        }
        if (f59192k) {
            k("Loaded resource from cache", j10, mVar);
        }
        return i10;
    }

    public void l(t<?> tVar) {
        if (!(tVar instanceof o)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((o) tVar).e();
    }

    @VisibleForTesting
    public void m() {
        this.f59196d.b();
        this.f59198f.b();
        this.f59200h.h();
    }

    public final <R> d n(com.bumptech.glide.d dVar, Object obj, C.e eVar, int i10, int i11, Class<?> cls, Class<R> cls2, com.bumptech.glide.h hVar, i iVar, Map<Class<?>, C.l<?>> map, boolean z10, boolean z11, C.h hVar2, boolean z12, boolean z13, boolean z14, boolean z15, U.i iVar2, Executor executor, m mVar, long j10) {
        k<?> a10 = this.f59193a.a(mVar, z15);
        if (a10 != null) {
            a10.e(iVar2, executor);
            if (f59192k) {
                k("Added to existing load", j10, mVar);
            }
            return new d(iVar2, a10);
        }
        k<R> a11 = this.f59196d.a(mVar, z12, z13, z14, z15);
        g<R> a12 = this.f59199g.a(dVar, obj, mVar, eVar, i10, i11, cls, cls2, hVar, iVar, map, z10, z11, z15, hVar2, a11);
        this.f59193a.d(mVar, a11);
        a11.e(iVar2, executor);
        a11.t(a12);
        if (f59192k) {
            k("Started new load", j10, mVar);
        }
        return new d(iVar2, a11);
    }

    @VisibleForTesting
    public j(G.j jVar, a.InterfaceC0134a interfaceC0134a, H.a aVar, H.a aVar2, H.a aVar3, H.a aVar4, q qVar, n nVar, com.bumptech.glide.load.engine.a aVar5, b bVar, a aVar6, w wVar, boolean z10) {
        this.f59195c = jVar;
        c cVar = new c(interfaceC0134a);
        this.f59198f = cVar;
        com.bumptech.glide.load.engine.a aVar7 = aVar5 == null ? new com.bumptech.glide.load.engine.a(z10) : aVar5;
        this.f59200h = aVar7;
        aVar7.g(this);
        this.f59194b = nVar == null ? new n() : nVar;
        this.f59193a = qVar == null ? new q() : qVar;
        this.f59196d = bVar == null ? new b(aVar, aVar2, aVar3, aVar4, this, this) : bVar;
        this.f59199g = aVar6 == null ? new a(cVar) : aVar6;
        this.f59197e = wVar == null ? new w() : wVar;
        jVar.d(this);
    }
}
