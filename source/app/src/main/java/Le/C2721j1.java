package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import cf.C4186e;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2721j1<T> extends AbstractC2692a<T, T> {

    public final long f12858d;

    public final TimeUnit f12859e;

    public final Be.J f12860f;

    public final boolean f12861g;

    public static final class a<T> extends c<T> {

        public static final long f12862k = -7139995637533111443L;

        public final AtomicInteger f12863j;

        public a(hn.c<? super T> cVar, long j10, TimeUnit timeUnit, Be.J j11) {
            super(cVar, j10, timeUnit, j11);
            this.f12863j = new AtomicInteger(1);
        }

        @Override
        public void c() {
            d();
            if (this.f12863j.decrementAndGet() == 0) {
                this.f12866b.a();
            }
        }

        @Override
        public void run() {
            if (this.f12863j.incrementAndGet() == 2) {
                d();
                if (this.f12863j.decrementAndGet() == 0) {
                    this.f12866b.a();
                }
            }
        }
    }

    public static final class b<T> extends c<T> {

        public static final long f12864j = -7139995637533111443L;

        public b(hn.c<? super T> cVar, long j10, TimeUnit timeUnit, Be.J j11) {
            super(cVar, j10, timeUnit, j11);
        }

        @Override
        public void c() {
            this.f12866b.a();
        }

        @Override
        public void run() {
            d();
        }
    }

    public static abstract class c<T> extends AtomicReference<T> implements InterfaceC2367q<T>, hn.d, Runnable {

        public static final long f12865i = -3517602651313910099L;

        public final hn.c<? super T> f12866b;

        public final long f12867c;

        public final TimeUnit f12868d;

        public final Be.J f12869e;

        public final AtomicLong f12870f = new AtomicLong();

        public final Ge.h f12871g = new Ge.h();

        public hn.d f12872h;

        public c(hn.c<? super T> cVar, long j10, TimeUnit timeUnit, Be.J j11) {
            this.f12866b = cVar;
            this.f12867c = j10;
            this.f12868d = timeUnit;
            this.f12869e = j11;
        }

        @Override
        public void a() {
            b();
            c();
        }

        public void b() {
            Ge.d.a(this.f12871g);
        }

        public abstract void c();

        @Override
        public void cancel() {
            b();
            this.f12872h.cancel();
        }

        public void d() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                if (this.f12870f.get() != 0) {
                    this.f12866b.h(andSet);
                    io.reactivex.internal.util.d.e(this.f12870f, 1L);
                } else {
                    cancel();
                    this.f12866b.onError(new MissingBackpressureException("Couldn't emit value due to lack of requests!"));
                }
            }
        }

        @Override
        public void h(T t10) {
            lazySet(t10);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f12870f, j10);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12872h, dVar)) {
                this.f12872h = dVar;
                this.f12866b.j(this);
                Ge.h hVar = this.f12871g;
                Be.J j10 = this.f12869e;
                long j11 = this.f12867c;
                hVar.a(j10.h(this, j11, j11, this.f12868d));
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            b();
            this.f12866b.onError(th2);
        }
    }

    public C2721j1(AbstractC2362l<T> abstractC2362l, long j10, TimeUnit timeUnit, Be.J j11, boolean z10) {
        super(abstractC2362l);
        this.f12858d = j10;
        this.f12859e = timeUnit;
        this.f12860f = j11;
        this.f12861g = z10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        C4186e c4186e = new C4186e(cVar);
        if (this.f12861g) {
            this.f12507c.l6(new a(c4186e, this.f12858d, this.f12859e, this.f12860f));
        } else {
            this.f12507c.l6(new b(c4186e, this.f12858d, this.f12859e, this.f12860f));
        }
    }
}
