package Oe;

import Be.J;
import java.util.concurrent.TimeUnit;

public final class G<T> extends AbstractC2859a<T, T> {

    public final long f18846c;

    public final TimeUnit f18847d;

    public final Be.J f18848e;

    public final boolean f18849f;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super T> f18850b;

        public final long f18851c;

        public final TimeUnit f18852d;

        public final J.c f18853e;

        public final boolean f18854f;

        public De.c f18855g;

        public final class RunnableC0478a implements Runnable {
            public RunnableC0478a() {
            }

            @Override
            public void run() {
                try {
                    a.this.f18850b.a();
                } finally {
                    a.this.f18853e.dispose();
                }
            }
        }

        public final class b implements Runnable {

            public final Throwable f18857b;

            public b(Throwable th2) {
                this.f18857b = th2;
            }

            @Override
            public void run() {
                try {
                    a.this.f18850b.onError(this.f18857b);
                } finally {
                    a.this.f18853e.dispose();
                }
            }
        }

        public final class c implements Runnable {

            public final T f18859b;

            public c(T t10) {
                this.f18859b = t10;
            }

            @Override
            public void run() {
                a.this.f18850b.h(this.f18859b);
            }
        }

        public a(Be.I<? super T> i10, long j10, TimeUnit timeUnit, J.c cVar, boolean z10) {
            this.f18850b = i10;
            this.f18851c = j10;
            this.f18852d = timeUnit;
            this.f18853e = cVar;
            this.f18854f = z10;
        }

        @Override
        public void a() {
            this.f18853e.c(new RunnableC0478a(), this.f18851c, this.f18852d);
        }

        @Override
        public boolean d() {
            return this.f18853e.d();
        }

        @Override
        public void dispose() {
            this.f18855g.dispose();
            this.f18853e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18855g, cVar)) {
                this.f18855g = cVar;
                this.f18850b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f18853e.c(new c(t10), this.f18851c, this.f18852d);
        }

        @Override
        public void onError(Throwable th2) {
            this.f18853e.c(new b(th2), this.f18854f ? this.f18851c : 0L, this.f18852d);
        }
    }

    public G(Be.G<T> g10, long j10, TimeUnit timeUnit, Be.J j11, boolean z10) {
        super(g10);
        this.f18846c = j10;
        this.f18847d = timeUnit;
        this.f18848e = j11;
        this.f18849f = z10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(this.f18849f ? i10 : new We.m(i10), this.f18846c, this.f18847d, this.f18848e.c(), this.f18849f));
    }
}
