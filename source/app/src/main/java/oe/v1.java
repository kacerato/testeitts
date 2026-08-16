package Oe;

import Be.J;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class v1<T> extends AbstractC2859a<T, T> {

    public final long f19966c;

    public final TimeUnit f19967d;

    public final Be.J f19968e;

    public static final class a<T> extends AtomicReference<De.c> implements Be.I<T>, De.c, Runnable {

        public static final long f19969i = 786994795061867455L;

        public final Be.I<? super T> f19970b;

        public final long f19971c;

        public final TimeUnit f19972d;

        public final J.c f19973e;

        public De.c f19974f;

        public volatile boolean f19975g;

        public boolean f19976h;

        public a(Be.I<? super T> i10, long j10, TimeUnit timeUnit, J.c cVar) {
            this.f19970b = i10;
            this.f19971c = j10;
            this.f19972d = timeUnit;
            this.f19973e = cVar;
        }

        @Override
        public void a() {
            if (this.f19976h) {
                return;
            }
            this.f19976h = true;
            this.f19970b.a();
            this.f19973e.dispose();
        }

        @Override
        public boolean d() {
            return this.f19973e.d();
        }

        @Override
        public void dispose() {
            this.f19974f.dispose();
            this.f19973e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19974f, cVar)) {
                this.f19974f = cVar;
                this.f19970b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19975g || this.f19976h) {
                return;
            }
            this.f19975g = true;
            this.f19970b.h(t10);
            De.c cVar = get();
            if (cVar != null) {
                cVar.dispose();
            }
            Ge.d.c(this, this.f19973e.c(this, this.f19971c, this.f19972d));
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19976h) {
                Ye.a.Y(th2);
                return;
            }
            this.f19976h = true;
            this.f19970b.onError(th2);
            this.f19973e.dispose();
        }

        @Override
        public void run() {
            this.f19975g = false;
        }
    }

    public v1(Be.G<T> g10, long j10, TimeUnit timeUnit, Be.J j11) {
        super(g10);
        this.f19966c = j10;
        this.f19967d = timeUnit;
        this.f19968e = j11;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(new We.m(i10), this.f19966c, this.f19967d, this.f19968e.c()));
    }
}
