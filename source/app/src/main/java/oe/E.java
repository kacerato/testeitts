package Oe;

import Be.J;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class E<T> extends AbstractC2859a<T, T> {

    public final long f18774c;

    public final TimeUnit f18775d;

    public final Be.J f18776e;

    public static final class a<T> extends AtomicReference<De.c> implements Runnable, De.c {

        public static final long f18777f = 6812032969491025141L;

        public final T f18778b;

        public final long f18779c;

        public final b<T> f18780d;

        public final AtomicBoolean f18781e = new AtomicBoolean();

        public a(T t10, long j10, b<T> bVar) {
            this.f18778b = t10;
            this.f18779c = j10;
            this.f18780d = bVar;
        }

        public void a(De.c cVar) {
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
            if (this.f18781e.compareAndSet(false, true)) {
                this.f18780d.b(this.f18779c, this.f18778b, this);
            }
        }
    }

    public static final class b<T> implements Be.I<T>, De.c {

        public final Be.I<? super T> f18782b;

        public final long f18783c;

        public final TimeUnit f18784d;

        public final J.c f18785e;

        public De.c f18786f;

        public De.c f18787g;

        public volatile long f18788h;

        public boolean f18789i;

        public b(Be.I<? super T> i10, long j10, TimeUnit timeUnit, J.c cVar) {
            this.f18782b = i10;
            this.f18783c = j10;
            this.f18784d = timeUnit;
            this.f18785e = cVar;
        }

        @Override
        public void a() {
            if (this.f18789i) {
                return;
            }
            this.f18789i = true;
            De.c cVar = this.f18787g;
            if (cVar != null) {
                cVar.dispose();
            }
            a aVar = (a) cVar;
            if (aVar != null) {
                aVar.run();
            }
            this.f18782b.a();
            this.f18785e.dispose();
        }

        public void b(long j10, T t10, a<T> aVar) {
            if (j10 == this.f18788h) {
                this.f18782b.h(t10);
                aVar.dispose();
            }
        }

        @Override
        public boolean d() {
            return this.f18785e.d();
        }

        @Override
        public void dispose() {
            this.f18786f.dispose();
            this.f18785e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18786f, cVar)) {
                this.f18786f = cVar;
                this.f18782b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f18789i) {
                return;
            }
            long j10 = this.f18788h + 1;
            this.f18788h = j10;
            De.c cVar = this.f18787g;
            if (cVar != null) {
                cVar.dispose();
            }
            a aVar = new a(t10, j10, this);
            this.f18787g = aVar;
            aVar.a(this.f18785e.c(aVar, this.f18783c, this.f18784d));
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f18789i) {
                Ye.a.Y(th2);
                return;
            }
            De.c cVar = this.f18787g;
            if (cVar != null) {
                cVar.dispose();
            }
            this.f18789i = true;
            this.f18782b.onError(th2);
            this.f18785e.dispose();
        }
    }

    public E(Be.G<T> g10, long j10, TimeUnit timeUnit, Be.J j11) {
        super(g10);
        this.f18774c = j10;
        this.f18775d = timeUnit;
        this.f18776e = j11;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new b(new We.m(i10), this.f18774c, this.f18775d, this.f18776e.c()));
    }
}
