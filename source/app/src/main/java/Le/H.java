package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Be.J;
import cf.C4186e;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class H<T> extends AbstractC2692a<T, T> {

    public final long f11880d;

    public final TimeUnit f11881e;

    public final Be.J f11882f;

    public static final class a<T> extends AtomicReference<De.c> implements Runnable, De.c {

        public static final long f11883f = 6812032969491025141L;

        public final T f11884b;

        public final long f11885c;

        public final b<T> f11886d;

        public final AtomicBoolean f11887e = new AtomicBoolean();

        public a(T t10, long j10, b<T> bVar) {
            this.f11884b = t10;
            this.f11885c = j10;
            this.f11886d = bVar;
        }

        public void a() {
            if (this.f11887e.compareAndSet(false, true)) {
                this.f11886d.b(this.f11885c, this.f11884b, this);
            }
        }

        public void b(De.c cVar) {
            Ge.d.c(this, cVar);
        }

        @Override
        public boolean d() {
            return get() == Ge.d.DISPOSED;
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
        }

        @Override
        public void run() {
            a();
        }
    }

    public static final class b<T> extends AtomicLong implements InterfaceC2367q<T>, hn.d {

        public static final long f11888j = -9102637559663639004L;

        public final hn.c<? super T> f11889b;

        public final long f11890c;

        public final TimeUnit f11891d;

        public final J.c f11892e;

        public hn.d f11893f;

        public De.c f11894g;

        public volatile long f11895h;

        public boolean f11896i;

        public b(hn.c<? super T> cVar, long j10, TimeUnit timeUnit, J.c cVar2) {
            this.f11889b = cVar;
            this.f11890c = j10;
            this.f11891d = timeUnit;
            this.f11892e = cVar2;
        }

        @Override
        public void a() {
            if (this.f11896i) {
                return;
            }
            this.f11896i = true;
            De.c cVar = this.f11894g;
            if (cVar != null) {
                cVar.dispose();
            }
            a aVar = (a) cVar;
            if (aVar != null) {
                aVar.a();
            }
            this.f11889b.a();
            this.f11892e.dispose();
        }

        public void b(long j10, T t10, a<T> aVar) {
            if (j10 == this.f11895h) {
                if (get() == 0) {
                    cancel();
                    this.f11889b.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
                } else {
                    this.f11889b.h(t10);
                    io.reactivex.internal.util.d.e(this, 1L);
                    aVar.dispose();
                }
            }
        }

        @Override
        public void cancel() {
            this.f11893f.cancel();
            this.f11892e.dispose();
        }

        @Override
        public void h(T t10) {
            if (this.f11896i) {
                return;
            }
            long j10 = this.f11895h + 1;
            this.f11895h = j10;
            De.c cVar = this.f11894g;
            if (cVar != null) {
                cVar.dispose();
            }
            a aVar = new a(t10, j10, this);
            this.f11894g = aVar;
            aVar.b(this.f11892e.c(aVar, this.f11890c, this.f11891d));
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this, j10);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11893f, dVar)) {
                this.f11893f = dVar;
                this.f11889b.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f11896i) {
                Ye.a.Y(th2);
                return;
            }
            this.f11896i = true;
            De.c cVar = this.f11894g;
            if (cVar != null) {
                cVar.dispose();
            }
            this.f11889b.onError(th2);
            this.f11892e.dispose();
        }
    }

    public H(AbstractC2362l<T> abstractC2362l, long j10, TimeUnit timeUnit, Be.J j11) {
        super(abstractC2362l);
        this.f11880d = j10;
        this.f11881e = timeUnit;
        this.f11882f = j11;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new b(new C4186e(cVar), this.f11880d, this.f11881e, this.f11882f.c()));
    }
}
