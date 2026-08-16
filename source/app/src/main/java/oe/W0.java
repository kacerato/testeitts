package Oe;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class W0<T> extends AbstractC2859a<T, T> {

    public final long f19249c;

    public final TimeUnit f19250d;

    public final Be.J f19251e;

    public final boolean f19252f;

    public static final class a<T> extends c<T> {

        public static final long f19253j = -7139995637533111443L;

        public final AtomicInteger f19254i;

        public a(Be.I<? super T> i10, long j10, TimeUnit timeUnit, Be.J j11) {
            super(i10, j10, timeUnit, j11);
            this.f19254i = new AtomicInteger(1);
        }

        @Override
        public void c() {
            f();
            if (this.f19254i.decrementAndGet() == 0) {
                this.f19257b.a();
            }
        }

        @Override
        public void run() {
            if (this.f19254i.incrementAndGet() == 2) {
                f();
                if (this.f19254i.decrementAndGet() == 0) {
                    this.f19257b.a();
                }
            }
        }
    }

    public static final class b<T> extends c<T> {

        public static final long f19255i = -7139995637533111443L;

        public b(Be.I<? super T> i10, long j10, TimeUnit timeUnit, Be.J j11) {
            super(i10, j10, timeUnit, j11);
        }

        @Override
        public void c() {
            this.f19257b.a();
        }

        @Override
        public void run() {
            f();
        }
    }

    public static abstract class c<T> extends AtomicReference<T> implements Be.I<T>, De.c, Runnable {

        public static final long f19256h = -3517602651313910099L;

        public final Be.I<? super T> f19257b;

        public final long f19258c;

        public final TimeUnit f19259d;

        public final Be.J f19260e;

        public final AtomicReference<De.c> f19261f = new AtomicReference<>();

        public De.c f19262g;

        public c(Be.I<? super T> i10, long j10, TimeUnit timeUnit, Be.J j11) {
            this.f19257b = i10;
            this.f19258c = j10;
            this.f19259d = timeUnit;
            this.f19260e = j11;
        }

        @Override
        public void a() {
            b();
            c();
        }

        public void b() {
            Ge.d.a(this.f19261f);
        }

        public abstract void c();

        @Override
        public boolean d() {
            return this.f19262g.d();
        }

        @Override
        public void dispose() {
            b();
            this.f19262g.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19262g, cVar)) {
                this.f19262g = cVar;
                this.f19257b.e(this);
                Be.J j10 = this.f19260e;
                long j11 = this.f19258c;
                Ge.d.c(this.f19261f, j10.h(this, j11, j11, this.f19259d));
            }
        }

        public void f() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.f19257b.h(andSet);
            }
        }

        @Override
        public void h(T t10) {
            lazySet(t10);
        }

        @Override
        public void onError(Throwable th2) {
            b();
            this.f19257b.onError(th2);
        }
    }

    public W0(Be.G<T> g10, long j10, TimeUnit timeUnit, Be.J j11, boolean z10) {
        super(g10);
        this.f19249c = j10;
        this.f19250d = timeUnit;
        this.f19251e = j11;
        this.f19252f = z10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        We.m mVar = new We.m(i10);
        if (this.f19252f) {
            this.f19344b.c(new a(mVar, this.f19249c, this.f19250d, this.f19251e));
        } else {
            this.f19344b.c(new b(mVar, this.f19249c, this.f19250d, this.f19251e));
        }
    }
}
