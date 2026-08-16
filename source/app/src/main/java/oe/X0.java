package Oe;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class X0<T> extends AbstractC2859a<T, T> {

    public final Be.G<?> f19292c;

    public final boolean f19293d;

    public static final class a<T> extends c<T> {

        public static final long f19294i = -3029755663834015785L;

        public final AtomicInteger f19295g;

        public volatile boolean f19296h;

        public a(Be.I<? super T> i10, Be.G<?> g10) {
            super(i10, g10);
            this.f19295g = new AtomicInteger();
        }

        @Override
        public void c() {
            this.f19296h = true;
            if (this.f19295g.getAndIncrement() == 0) {
                f();
                this.f19299b.a();
            }
        }

        @Override
        public void i() {
            if (this.f19295g.getAndIncrement() != 0) {
                return;
            }
            do {
                boolean z10 = this.f19296h;
                f();
                if (z10) {
                    this.f19299b.a();
                    return;
                }
            } while (this.f19295g.decrementAndGet() != 0);
        }
    }

    public static final class b<T> extends c<T> {

        public static final long f19297g = -3029755663834015785L;

        public b(Be.I<? super T> i10, Be.G<?> g10) {
            super(i10, g10);
        }

        @Override
        public void c() {
            this.f19299b.a();
        }

        @Override
        public void i() {
            f();
        }
    }

    public static abstract class c<T> extends AtomicReference<T> implements Be.I<T>, De.c {

        public static final long f19298f = -3517602651313910099L;

        public final Be.I<? super T> f19299b;

        public final Be.G<?> f19300c;

        public final AtomicReference<De.c> f19301d = new AtomicReference<>();

        public De.c f19302e;

        public c(Be.I<? super T> i10, Be.G<?> g10) {
            this.f19299b = i10;
            this.f19300c = g10;
        }

        @Override
        public void a() {
            Ge.d.a(this.f19301d);
            c();
        }

        public void b() {
            this.f19302e.dispose();
            c();
        }

        public abstract void c();

        @Override
        public boolean d() {
            return this.f19301d.get() == Ge.d.DISPOSED;
        }

        @Override
        public void dispose() {
            Ge.d.a(this.f19301d);
            this.f19302e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19302e, cVar)) {
                this.f19302e = cVar;
                this.f19299b.e(this);
                if (this.f19301d.get() == null) {
                    this.f19300c.c(new d(this));
                }
            }
        }

        public void f() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.f19299b.h(andSet);
            }
        }

        public void g(Throwable th2) {
            this.f19302e.dispose();
            this.f19299b.onError(th2);
        }

        @Override
        public void h(T t10) {
            lazySet(t10);
        }

        public abstract void i();

        public boolean j(De.c cVar) {
            return Ge.d.h(this.f19301d, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            Ge.d.a(this.f19301d);
            this.f19299b.onError(th2);
        }
    }

    public static final class d<T> implements Be.I<Object> {

        public final c<T> f19303b;

        public d(c<T> cVar) {
            this.f19303b = cVar;
        }

        @Override
        public void a() {
            this.f19303b.b();
        }

        @Override
        public void e(De.c cVar) {
            this.f19303b.j(cVar);
        }

        @Override
        public void h(Object obj) {
            this.f19303b.i();
        }

        @Override
        public void onError(Throwable th2) {
            this.f19303b.g(th2);
        }
    }

    public X0(Be.G<T> g10, Be.G<?> g11, boolean z10) {
        super(g10);
        this.f19292c = g11;
        this.f19293d = z10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        We.m mVar = new We.m(i10);
        if (this.f19293d) {
            this.f19344b.c(new a(mVar, this.f19292c));
        } else {
            this.f19344b.c(new b(mVar, this.f19292c));
        }
    }
}
