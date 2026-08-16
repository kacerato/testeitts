package Oe;

import java.util.concurrent.atomic.AtomicBoolean;

public final class D1<T> extends AbstractC2859a<T, T> {

    public final Be.J f18768c;

    public static final class a<T> extends AtomicBoolean implements Be.I<T>, De.c {

        public static final long f18769e = 1015244841293359600L;

        public final Be.I<? super T> f18770b;

        public final Be.J f18771c;

        public De.c f18772d;

        public final class RunnableC0477a implements Runnable {
            public RunnableC0477a() {
            }

            @Override
            public void run() {
                a.this.f18772d.dispose();
            }
        }

        public a(Be.I<? super T> i10, Be.J j10) {
            this.f18770b = i10;
            this.f18771c = j10;
        }

        @Override
        public void a() {
            if (get()) {
                return;
            }
            this.f18770b.a();
        }

        @Override
        public boolean d() {
            return get();
        }

        @Override
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f18771c.f(new RunnableC0477a());
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18772d, cVar)) {
                this.f18772d = cVar;
                this.f18770b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (get()) {
                return;
            }
            this.f18770b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            if (get()) {
                Ye.a.Y(th2);
            } else {
                this.f18770b.onError(th2);
            }
        }
    }

    public D1(Be.G<T> g10, Be.J j10) {
        super(g10);
        this.f18768c = j10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f18768c));
    }
}
