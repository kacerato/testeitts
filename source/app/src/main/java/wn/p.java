package wn;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import wn.u;

public class p {

    public final a f127766a;

    public interface a {
        void a(int completed, int total);
    }

    public static class b {

        public final int f127767a;

        public final int f127768b;

        public final C16025c f127769c;

        public final C16028f f127770d;

        public final C16033k f127771e;

        public final C16034l f127772f;

        public final C16030h f127773g;

        public final N f127774h;

        public b(int tileX, int tileZ, C16030h solid, C16025c chf, C16028f cs, C16033k pmesh, C16034l dmesh, N ctx) {
            this.f127767a = tileX;
            this.f127768b = tileZ;
            this.f127773g = solid;
            this.f127769c = chf;
            this.f127770d = cs;
            this.f127771e = pmesh;
            this.f127772f = dmesh;
            this.f127774h = ctx;
        }

        public C16025c a() {
            return this.f127769c;
        }

        public C16028f b() {
            return this.f127770d;
        }

        public C16033k c() {
            return this.f127771e;
        }

        public C16034l d() {
            return this.f127772f;
        }

        public C16030h e() {
            return this.f127773g;
        }

        public N f() {
            return this.f127774h;
        }
    }

    public p() {
        this.f127766a = null;
    }

    public b b(int tileX, int tileZ, xn.b geom, t cfg, C16030h solid, N ctx) {
        j(solid, cfg, ctx);
        C16025c d10 = d(geom, cfg, ctx, solid);
        u.a aVar = cfg.f127787a;
        if (aVar == u.a.WATERSHED) {
            H.e(ctx, d10);
            H.g(ctx, d10, cfg.f127799m, cfg.f127800n);
        } else if (aVar == u.a.MONOTONE) {
            H.h(ctx, d10, cfg.f127799m, cfg.f127800n);
        } else {
            H.f(ctx, d10, cfg.f127799m);
        }
        C16028f a10 = v.a(ctx, d10, cfg.f127798l, cfg.f127797k, u.f127823k);
        C16033k e10 = E.e(ctx, a10, cfg.f127801o);
        return new b(tileX, tileZ, solid, d10, a10, e10, cfg.f127808v ? F.c(ctx, e10, d10, cfg.f127802p, cfg.f127803q) : null, ctx);
    }

    public b c(xn.c geom, q builderCfg) {
        t tVar = builderCfg.f127775a;
        N n10 = new N();
        return b(builderCfg.f127776b, builderCfg.f127777c, geom, tVar, J.a(geom, builderCfg, n10), n10);
    }

    public final C16025c d(xn.b volumeProvider, t cfg, N ctx, C16030h solid) {
        C16025c a10 = s.a(ctx, cfg.f127794h, cfg.f127795i, solid);
        C16036n.a(ctx, cfg.f127796j, a10);
        if (volumeProvider != null) {
            for (C16029g c16029g : volumeProvider.a()) {
                C16036n.c(ctx, c16029g.f127705a, c16029g.f127706b, c16029g.f127707c, c16029g.f127708d, a10);
            }
        }
        return a10;
    }

    public C16031i e(xn.c geom, q builderCfg) {
        N n10 = new N();
        C16030h a10 = J.a(geom, builderCfg, n10);
        j(a10, builderCfg.f127775a, n10);
        return D.b(n10, d(geom, builderCfg.f127775a, n10, a10), builderCfg.f127775a.f127794h);
    }

    public final List<b> f(final xn.c geom, final t cfg, final float[] bmin, final float[] bmax, final int tw, final int th2, Executor executor) {
        int i10 = tw;
        int i11 = i10 * th2;
        final ArrayList arrayList = new ArrayList(i11);
        final AtomicInteger atomicInteger = new AtomicInteger();
        final CountDownLatch countDownLatch = new CountDownLatch(i11);
        int i12 = 0;
        while (i12 < i10) {
            int i13 = 0;
            while (i13 < th2) {
                final int i14 = i12;
                final int i15 = i13;
                executor.execute(new Runnable() {
                    @Override
                    public final void run() {
                        p.this.k(geom, cfg, bmin, bmax, i14, i15, atomicInteger, tw, th2, arrayList, countDownLatch);
                    }
                });
                i13++;
                i12 = i12;
            }
            i12++;
            i10 = tw;
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
        }
        return arrayList;
    }

    public final List<b> g(xn.c geom, t cfg, float[] bmin, float[] bmax, int tw, int th2) {
        int i10 = tw * th2;
        ArrayList arrayList = new ArrayList(i10);
        AtomicInteger atomicInteger = new AtomicInteger();
        for (int i11 = 0; i11 < th2; i11++) {
            for (int i12 = 0; i12 < tw; i12++) {
                arrayList.add(h(geom, cfg, bmin, bmax, i12, i11, atomicInteger, i10));
            }
        }
        return arrayList;
    }

    public final b h(xn.c geom, t cfg, float[] bmin, float[] bmax, final int tx, final int ty, AtomicInteger counter, int total) {
        b c10 = c(geom, new q(cfg, bmin, bmax, tx, ty));
        a aVar = this.f127766a;
        if (aVar != null) {
            aVar.a(counter.incrementAndGet(), total);
        }
        return c10;
    }

    public List<b> i(xn.c geom, t cfg, Optional<Executor> executor) {
        float[] c10 = geom.c();
        float[] d10 = geom.d();
        int[] c11 = C16035m.c(c10, d10, cfg.f127791e, cfg.f127789c, cfg.f127790d);
        int i10 = c11[0];
        int i11 = c11[1];
        return executor.isPresent() ? f(geom, cfg, c10, d10, i10, i11, executor.get()) : g(geom, cfg, c10, d10, i10, i11);
    }

    public final void j(C16030h solid, t cfg, N ctx) {
        if (cfg.f127805s) {
            C.b(ctx, cfg.f127795i, solid);
        }
        if (cfg.f127806t) {
            C.a(ctx, cfg.f127794h, cfg.f127795i, solid);
        }
        if (cfg.f127807u) {
            C.c(ctx, cfg.f127794h, solid);
        }
    }

    public final void k(xn.c cVar, t tVar, float[] fArr, float[] fArr2, int i10, int i11, AtomicInteger atomicInteger, int i12, int i13, List list, CountDownLatch countDownLatch) {
        try {
            b h10 = h(cVar, tVar, fArr, fArr2, i10, i11, atomicInteger, i12 * i13);
            synchronized (list) {
                list.add(h10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        countDownLatch.countDown();
    }

    public p(a progressListener) {
        this.f127766a = progressListener;
    }
}
