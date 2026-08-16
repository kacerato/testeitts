package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Be.J;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class N1<T> extends AbstractC2692a<T, T> {

    public final long f12100d;

    public final TimeUnit f12101e;

    public final Be.J f12102f;

    public final hn.b<? extends T> f12103g;

    public static final class a<T> implements InterfaceC2367q<T> {

        public final hn.c<? super T> f12104b;

        public final Ue.i f12105c;

        public a(hn.c<? super T> cVar, Ue.i iVar) {
            this.f12104b = cVar;
            this.f12105c = iVar;
        }

        @Override
        public void a() {
            this.f12104b.a();
        }

        @Override
        public void h(T t10) {
            this.f12104b.h(t10);
        }

        @Override
        public void j(hn.d dVar) {
            this.f12105c.l(dVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f12104b.onError(th2);
        }
    }

    public static final class b<T> extends Ue.i implements InterfaceC2367q<T>, d {

        public static final long f12106t = 3764492702657003550L;

        public final hn.c<? super T> f12107k;

        public final long f12108l;

        public final TimeUnit f12109m;

        public final J.c f12110n;

        public final Ge.h f12111o;

        public final AtomicReference<hn.d> f12112p;

        public final AtomicLong f12113q;

        public long f12114r;

        public hn.b<? extends T> f12115s;

        public b(hn.c<? super T> cVar, long j10, TimeUnit timeUnit, J.c cVar2, hn.b<? extends T> bVar) {
            super(true);
            this.f12107k = cVar;
            this.f12108l = j10;
            this.f12109m = timeUnit;
            this.f12110n = cVar2;
            this.f12115s = bVar;
            this.f12111o = new Ge.h();
            this.f12112p = new AtomicReference<>();
            this.f12113q = new AtomicLong();
        }

        @Override
        public void a() {
            if (this.f12113q.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f12111o.dispose();
                this.f12107k.a();
                this.f12110n.dispose();
            }
        }

        @Override
        public void b(long j10) {
            if (this.f12113q.compareAndSet(j10, Long.MAX_VALUE)) {
                Ue.j.a(this.f12112p);
                long j11 = this.f12114r;
                if (j11 != 0) {
                    k(j11);
                }
                hn.b<? extends T> bVar = this.f12115s;
                this.f12115s = null;
                bVar.l(new a(this.f12107k, this));
                this.f12110n.dispose();
            }
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f12110n.dispose();
        }

        @Override
        public void h(T t10) {
            long j10 = this.f12113q.get();
            if (j10 != Long.MAX_VALUE) {
                long j11 = j10 + 1;
                if (this.f12113q.compareAndSet(j10, j11)) {
                    this.f12111o.get().dispose();
                    this.f12114r++;
                    this.f12107k.h(t10);
                    m(j11);
                }
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.j(this.f12112p, dVar)) {
                l(dVar);
            }
        }

        public void m(long j10) {
            this.f12111o.a(this.f12110n.c(new e(j10, this), this.f12108l, this.f12109m));
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12113q.getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                Ye.a.Y(th2);
                return;
            }
            this.f12111o.dispose();
            this.f12107k.onError(th2);
            this.f12110n.dispose();
        }
    }

    public static final class c<T> extends AtomicLong implements InterfaceC2367q<T>, hn.d, d {

        public static final long f12116i = 3764492702657003550L;

        public final hn.c<? super T> f12117b;

        public final long f12118c;

        public final TimeUnit f12119d;

        public final J.c f12120e;

        public final Ge.h f12121f = new Ge.h();

        public final AtomicReference<hn.d> f12122g = new AtomicReference<>();

        public final AtomicLong f12123h = new AtomicLong();

        public c(hn.c<? super T> cVar, long j10, TimeUnit timeUnit, J.c cVar2) {
            this.f12117b = cVar;
            this.f12118c = j10;
            this.f12119d = timeUnit;
            this.f12120e = cVar2;
        }

        @Override
        public void a() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f12121f.dispose();
                this.f12117b.a();
                this.f12120e.dispose();
            }
        }

        @Override
        public void b(long j10) {
            if (compareAndSet(j10, Long.MAX_VALUE)) {
                Ue.j.a(this.f12122g);
                this.f12117b.onError(new TimeoutException(ExceptionHelper.e(this.f12118c, this.f12119d)));
                this.f12120e.dispose();
            }
        }

        @Override
        public void cancel() {
            Ue.j.a(this.f12122g);
            this.f12120e.dispose();
        }

        public void d(long j10) {
            this.f12121f.a(this.f12120e.c(new e(j10, this), this.f12118c, this.f12119d));
        }

        @Override
        public void h(T t10) {
            long j10 = get();
            if (j10 != Long.MAX_VALUE) {
                long j11 = 1 + j10;
                if (compareAndSet(j10, j11)) {
                    this.f12121f.get().dispose();
                    this.f12117b.h(t10);
                    d(j11);
                }
            }
        }

        @Override
        public void i(long j10) {
            Ue.j.b(this.f12122g, this.f12123h, j10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.c(this.f12122g, this.f12123h, dVar);
        }

        @Override
        public void onError(Throwable th2) {
            if (getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                Ye.a.Y(th2);
                return;
            }
            this.f12121f.dispose();
            this.f12117b.onError(th2);
            this.f12120e.dispose();
        }
    }

    public interface d {
        void b(long j10);
    }

    public static final class e implements Runnable {

        public final d f12124b;

        public final long f12125c;

        public e(long j10, d dVar) {
            this.f12125c = j10;
            this.f12124b = dVar;
        }

        @Override
        public void run() {
            this.f12124b.b(this.f12125c);
        }
    }

    public N1(AbstractC2362l<T> abstractC2362l, long j10, TimeUnit timeUnit, Be.J j11, hn.b<? extends T> bVar) {
        super(abstractC2362l);
        this.f12100d = j10;
        this.f12101e = timeUnit;
        this.f12102f = j11;
        this.f12103g = bVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        if (this.f12103g == null) {
            c cVar2 = new c(cVar, this.f12100d, this.f12101e, this.f12102f.c());
            cVar.j(cVar2);
            cVar2.d(0L);
            this.f12507c.l6(cVar2);
            return;
        }
        b bVar = new b(cVar, this.f12100d, this.f12101e, this.f12102f.c(), this.f12103g);
        cVar.j(bVar);
        bVar.m(0L);
        this.f12507c.l6(bVar);
    }
}
