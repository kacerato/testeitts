package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Be.J;
import cf.C4186e;
import java.util.concurrent.TimeUnit;

public final class J<T> extends AbstractC2692a<T, T> {

    public final long f11948d;

    public final TimeUnit f11949e;

    public final Be.J f11950f;

    public final boolean f11951g;

    public static final class a<T> implements InterfaceC2367q<T>, hn.d {

        public final hn.c<? super T> f11952b;

        public final long f11953c;

        public final TimeUnit f11954d;

        public final J.c f11955e;

        public final boolean f11956f;

        public hn.d f11957g;

        public final class RunnableC0388a implements Runnable {
            public RunnableC0388a() {
            }

            @Override
            public void run() {
                try {
                    a.this.f11952b.a();
                } finally {
                    a.this.f11955e.dispose();
                }
            }
        }

        public final class b implements Runnable {

            public final Throwable f11959b;

            public b(Throwable th2) {
                this.f11959b = th2;
            }

            @Override
            public void run() {
                try {
                    a.this.f11952b.onError(this.f11959b);
                } finally {
                    a.this.f11955e.dispose();
                }
            }
        }

        public final class c implements Runnable {

            public final T f11961b;

            public c(T t10) {
                this.f11961b = t10;
            }

            @Override
            public void run() {
                a.this.f11952b.h(this.f11961b);
            }
        }

        public a(hn.c<? super T> cVar, long j10, TimeUnit timeUnit, J.c cVar2, boolean z10) {
            this.f11952b = cVar;
            this.f11953c = j10;
            this.f11954d = timeUnit;
            this.f11955e = cVar2;
            this.f11956f = z10;
        }

        @Override
        public void a() {
            this.f11955e.c(new RunnableC0388a(), this.f11953c, this.f11954d);
        }

        @Override
        public void cancel() {
            this.f11957g.cancel();
            this.f11955e.dispose();
        }

        @Override
        public void h(T t10) {
            this.f11955e.c(new c(t10), this.f11953c, this.f11954d);
        }

        @Override
        public void i(long j10) {
            this.f11957g.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11957g, dVar)) {
                this.f11957g = dVar;
                this.f11952b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f11955e.c(new b(th2), this.f11956f ? this.f11953c : 0L, this.f11954d);
        }
    }

    public J(AbstractC2362l<T> abstractC2362l, long j10, TimeUnit timeUnit, Be.J j11, boolean z10) {
        super(abstractC2362l);
        this.f11948d = j10;
        this.f11949e = timeUnit;
        this.f11950f = j11;
        this.f11951g = z10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(this.f11951g ? cVar : new C4186e(cVar), this.f11948d, this.f11949e, this.f11950f.c(), this.f11951g));
    }
}
