package com.bumptech.glide.load.engine;

import Z.a;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.load.engine.g;
import com.bumptech.glide.load.engine.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

public class k<R> implements g.b<R>, a.f {

    public static final c f59218z = new c();

    public final e f59219b;

    public final Z.c f59220c;

    public final o.a f59221d;

    public final Pools.Pool<k<?>> f59222e;

    public final c f59223f;

    public final l f59224g;

    public final H.a f59225h;

    public final H.a f59226i;

    public final H.a f59227j;

    public final H.a f59228k;

    public final AtomicInteger f59229l;

    public C.e f59230m;

    public boolean f59231n;

    public boolean f59232o;

    public boolean f59233p;

    public boolean f59234q;

    public t<?> f59235r;

    public C.a f59236s;

    public boolean f59237t;

    public GlideException f59238u;

    public boolean f59239v;

    public o<?> f59240w;

    public g<R> f59241x;

    public volatile boolean f59242y;

    public class a implements Runnable {

        public final U.i f59243b;

        public a(U.i iVar) {
            this.f59243b = iVar;
        }

        @Override
        public void run() {
            synchronized (this.f59243b.g()) {
                synchronized (k.this) {
                    try {
                        if (k.this.f59219b.b(this.f59243b)) {
                            k.this.f(this.f59243b);
                        }
                        k.this.i();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public class b implements Runnable {

        public final U.i f59245b;

        public b(U.i iVar) {
            this.f59245b = iVar;
        }

        @Override
        public void run() {
            synchronized (this.f59245b.g()) {
                synchronized (k.this) {
                    try {
                        if (k.this.f59219b.b(this.f59245b)) {
                            k.this.f59240w.b();
                            k.this.g(this.f59245b);
                            k.this.s(this.f59245b);
                        }
                        k.this.i();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    @VisibleForTesting
    public static class c {
        public <R> o<R> a(t<R> tVar, boolean z10, C.e eVar, o.a aVar) {
            return new o<>(tVar, z10, true, eVar, aVar);
        }
    }

    public static final class d {

        public final U.i f59247a;

        public final Executor f59248b;

        public d(U.i iVar, Executor executor) {
            this.f59247a = iVar;
            this.f59248b = executor;
        }

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.f59247a.equals(((d) obj).f59247a);
            }
            return false;
        }

        public int hashCode() {
            return this.f59247a.hashCode();
        }
    }

    public static final class e implements Iterable<d> {

        public final List<d> f59249b;

        public e() {
            this(new ArrayList(2));
        }

        public static d d(U.i iVar) {
            return new d(iVar, Y.e.a());
        }

        public void a(U.i iVar, Executor executor) {
            this.f59249b.add(new d(iVar, executor));
        }

        public boolean b(U.i iVar) {
            return this.f59249b.contains(d(iVar));
        }

        public e c() {
            return new e(new ArrayList(this.f59249b));
        }

        public void clear() {
            this.f59249b.clear();
        }

        public void e(U.i iVar) {
            this.f59249b.remove(d(iVar));
        }

        public boolean isEmpty() {
            return this.f59249b.isEmpty();
        }

        @Override
        @NonNull
        public Iterator<d> iterator() {
            return this.f59249b.iterator();
        }

        public int size() {
            return this.f59249b.size();
        }

        public e(List<d> list) {
            this.f59249b = list;
        }
    }

    public k(H.a aVar, H.a aVar2, H.a aVar3, H.a aVar4, l lVar, o.a aVar5, Pools.Pool<k<?>> pool) {
        this(aVar, aVar2, aVar3, aVar4, lVar, aVar5, pool, f59218z);
    }

    private synchronized void r() {
        if (this.f59230m == null) {
            throw new IllegalArgumentException();
        }
        this.f59219b.clear();
        this.f59230m = null;
        this.f59240w = null;
        this.f59235r = null;
        this.f59239v = false;
        this.f59242y = false;
        this.f59237t = false;
        this.f59241x.C(false);
        this.f59241x = null;
        this.f59238u = null;
        this.f59236s = null;
        this.f59222e.release(this);
    }

    @Override
    public void a(g<?> gVar) {
        j().execute(gVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void b(t<R> tVar, C.a aVar) {
        synchronized (this) {
            this.f59235r = tVar;
            this.f59236s = aVar;
        }
        p();
    }

    @Override
    public void c(GlideException glideException) {
        synchronized (this) {
            this.f59238u = glideException;
        }
        o();
    }

    @Override
    @NonNull
    public Z.c d() {
        return this.f59220c;
    }

    public synchronized void e(U.i iVar, Executor executor) {
        try {
            this.f59220c.c();
            this.f59219b.a(iVar, executor);
            if (this.f59237t) {
                k(1);
                executor.execute(new b(iVar));
            } else if (this.f59239v) {
                k(1);
                executor.execute(new a(iVar));
            } else {
                Y.k.a(!this.f59242y, "Cannot add callbacks to a cancelled EngineJob");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @GuardedBy("this")
    public void f(U.i iVar) {
        try {
            iVar.c(this.f59238u);
        } catch (Throwable th2) {
            throw new CallbackException(th2);
        }
    }

    @GuardedBy("this")
    public void g(U.i iVar) {
        try {
            iVar.b(this.f59240w, this.f59236s);
        } catch (Throwable th2) {
            throw new CallbackException(th2);
        }
    }

    public void h() {
        if (n()) {
            return;
        }
        this.f59242y = true;
        this.f59241x.b();
        this.f59224g.b(this, this.f59230m);
    }

    public void i() {
        o<?> oVar;
        synchronized (this) {
            try {
                this.f59220c.c();
                Y.k.a(n(), "Not yet complete!");
                int decrementAndGet = this.f59229l.decrementAndGet();
                Y.k.a(decrementAndGet >= 0, "Can't decrement below 0");
                if (decrementAndGet == 0) {
                    oVar = this.f59240w;
                    r();
                } else {
                    oVar = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (oVar != null) {
            oVar.e();
        }
    }

    public final H.a j() {
        return this.f59232o ? this.f59227j : this.f59233p ? this.f59228k : this.f59226i;
    }

    public synchronized void k(int i10) {
        o<?> oVar;
        Y.k.a(n(), "Not yet complete!");
        if (this.f59229l.getAndAdd(i10) == 0 && (oVar = this.f59240w) != null) {
            oVar.b();
        }
    }

    @VisibleForTesting
    public synchronized k<R> l(C.e eVar, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f59230m = eVar;
        this.f59231n = z10;
        this.f59232o = z11;
        this.f59233p = z12;
        this.f59234q = z13;
        return this;
    }

    public synchronized boolean m() {
        return this.f59242y;
    }

    public final boolean n() {
        return this.f59239v || this.f59237t || this.f59242y;
    }

    public void o() {
        synchronized (this) {
            try {
                this.f59220c.c();
                if (this.f59242y) {
                    r();
                    return;
                }
                if (this.f59219b.isEmpty()) {
                    throw new IllegalStateException("Received an exception without any callbacks to notify");
                }
                if (this.f59239v) {
                    throw new IllegalStateException("Already failed once");
                }
                this.f59239v = true;
                C.e eVar = this.f59230m;
                e c10 = this.f59219b.c();
                k(c10.size() + 1);
                this.f59224g.a(this, eVar, null);
                Iterator<d> it = c10.iterator();
                while (it.hasNext()) {
                    d next = it.next();
                    next.f59248b.execute(new a(next.f59247a));
                }
                i();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void p() {
        synchronized (this) {
            try {
                this.f59220c.c();
                if (this.f59242y) {
                    this.f59235r.recycle();
                    r();
                    return;
                }
                if (this.f59219b.isEmpty()) {
                    throw new IllegalStateException("Received a resource without any callbacks to notify");
                }
                if (this.f59237t) {
                    throw new IllegalStateException("Already have resource");
                }
                this.f59240w = this.f59223f.a(this.f59235r, this.f59231n, this.f59230m, this.f59221d);
                this.f59237t = true;
                e c10 = this.f59219b.c();
                k(c10.size() + 1);
                this.f59224g.a(this, this.f59230m, this.f59240w);
                Iterator<d> it = c10.iterator();
                while (it.hasNext()) {
                    d next = it.next();
                    next.f59248b.execute(new b(next.f59247a));
                }
                i();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean q() {
        return this.f59234q;
    }

    public synchronized void s(U.i iVar) {
        try {
            this.f59220c.c();
            this.f59219b.e(iVar);
            if (this.f59219b.isEmpty()) {
                h();
                if (!this.f59237t) {
                    if (this.f59239v) {
                    }
                }
                if (this.f59229l.get() == 0) {
                    r();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void t(g<R> gVar) {
        try {
            this.f59241x = gVar;
            (gVar.J() ? this.f59225h : j()).execute(gVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @VisibleForTesting
    public k(H.a aVar, H.a aVar2, H.a aVar3, H.a aVar4, l lVar, o.a aVar5, Pools.Pool<k<?>> pool, c cVar) {
        this.f59219b = new e();
        this.f59220c = Z.c.a();
        this.f59229l = new AtomicInteger();
        this.f59225h = aVar;
        this.f59226i = aVar2;
        this.f59227j = aVar3;
        this.f59228k = aVar4;
        this.f59224g = lVar;
        this.f59221d = aVar5;
        this.f59222e = pool;
        this.f59223f = cVar;
    }
}
