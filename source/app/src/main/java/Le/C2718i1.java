package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import cf.C4186e;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2718i1<T> extends AbstractC2362l<T> {

    public final hn.b<T> f12835c;

    public final hn.b<?> f12836d;

    public final boolean f12837e;

    public static final class a<T> extends c<T> {

        public static final long f12838j = -3029755663834015785L;

        public final AtomicInteger f12839h;

        public volatile boolean f12840i;

        public a(hn.c<? super T> cVar, hn.b<?> bVar) {
            super(cVar, bVar);
            this.f12839h = new AtomicInteger();
        }

        @Override
        public void c() {
            this.f12840i = true;
            if (this.f12839h.getAndIncrement() == 0) {
                d();
                this.f12843b.a();
            }
        }

        @Override
        public void f() {
            if (this.f12839h.getAndIncrement() != 0) {
                return;
            }
            do {
                boolean z10 = this.f12840i;
                d();
                if (z10) {
                    this.f12843b.a();
                    return;
                }
            } while (this.f12839h.decrementAndGet() != 0);
        }
    }

    public static final class b<T> extends c<T> {

        public static final long f12841h = -3029755663834015785L;

        public b(hn.c<? super T> cVar, hn.b<?> bVar) {
            super(cVar, bVar);
        }

        @Override
        public void c() {
            this.f12843b.a();
        }

        @Override
        public void f() {
            d();
        }
    }

    public static abstract class c<T> extends AtomicReference<T> implements InterfaceC2367q<T>, hn.d {

        public static final long f12842g = -3517602651313910099L;

        public final hn.c<? super T> f12843b;

        public final hn.b<?> f12844c;

        public final AtomicLong f12845d = new AtomicLong();

        public final AtomicReference<hn.d> f12846e = new AtomicReference<>();

        public hn.d f12847f;

        public c(hn.c<? super T> cVar, hn.b<?> bVar) {
            this.f12843b = cVar;
            this.f12844c = bVar;
        }

        @Override
        public void a() {
            Ue.j.a(this.f12846e);
            c();
        }

        public void b() {
            this.f12847f.cancel();
            c();
        }

        public abstract void c();

        @Override
        public void cancel() {
            Ue.j.a(this.f12846e);
            this.f12847f.cancel();
        }

        public void d() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                if (this.f12845d.get() != 0) {
                    this.f12843b.h(andSet);
                    io.reactivex.internal.util.d.e(this.f12845d, 1L);
                } else {
                    cancel();
                    this.f12843b.onError(new MissingBackpressureException("Couldn't emit value due to lack of requests!"));
                }
            }
        }

        public void e(Throwable th2) {
            this.f12847f.cancel();
            this.f12843b.onError(th2);
        }

        public abstract void f();

        public void g(hn.d dVar) {
            Ue.j.k(this.f12846e, dVar, Long.MAX_VALUE);
        }

        @Override
        public void h(T t10) {
            lazySet(t10);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f12845d, j10);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12847f, dVar)) {
                this.f12847f = dVar;
                this.f12843b.j(this);
                if (this.f12846e.get() == null) {
                    this.f12844c.l(new d(this));
                    dVar.i(Long.MAX_VALUE);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            Ue.j.a(this.f12846e);
            this.f12843b.onError(th2);
        }
    }

    public static final class d<T> implements InterfaceC2367q<Object> {

        public final c<T> f12848b;

        public d(c<T> cVar) {
            this.f12848b = cVar;
        }

        @Override
        public void a() {
            this.f12848b.b();
        }

        @Override
        public void h(Object obj) {
            this.f12848b.f();
        }

        @Override
        public void j(hn.d dVar) {
            this.f12848b.g(dVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f12848b.e(th2);
        }
    }

    public C2718i1(hn.b<T> bVar, hn.b<?> bVar2, boolean z10) {
        this.f12835c = bVar;
        this.f12836d = bVar2;
        this.f12837e = z10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        C4186e c4186e = new C4186e(cVar);
        if (this.f12837e) {
            this.f12835c.l(new a(c4186e, this.f12836d));
        } else {
            this.f12835c.l(new b(c4186e, this.f12836d));
        }
    }
}
