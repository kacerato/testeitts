package Qe;

import java.util.concurrent.atomic.AtomicReference;

public final class C2986d<T> extends Be.K<T> {

    public final Be.O<T> f22219b;

    public static final class a<T> extends AtomicReference<De.c> implements Be.M<T>, De.c {

        public static final long f22220c = -2467358622224974244L;

        public final Be.N<? super T> f22221b;

        public a(Be.N<? super T> n10) {
            this.f22221b = n10;
        }

        @Override
        public void b(T t10) {
            De.c andSet;
            De.c cVar = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar || (andSet = getAndSet(dVar)) == dVar) {
                return;
            }
            try {
                if (t10 == null) {
                    this.f22221b.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.f22221b.b(t10);
                }
                if (andSet != null) {
                    andSet.dispose();
                }
            } catch (Throwable th2) {
                if (andSet != null) {
                    andSet.dispose();
                }
                throw th2;
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
        }

        @Override
        public void e(Fe.f fVar) {
            g(new Ge.b(fVar));
        }

        @Override
        public boolean f(Throwable th2) {
            De.c andSet;
            if (th2 == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            De.c cVar = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar || (andSet = getAndSet(dVar)) == dVar) {
                return false;
            }
            try {
                this.f22221b.onError(th2);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override
        public void g(De.c cVar) {
            Ge.d.g(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            if (f(th2)) {
                return;
            }
            Ye.a.Y(th2);
        }

        @Override
        public String toString() {
            return String.format("%s{%s}", a.class.getSimpleName(), super.toString());
        }
    }

    public C2986d(Be.O<T> o10) {
        this.f22219b = o10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        a aVar = new a(n10);
        n10.e(aVar);
        try {
            this.f22219b.subscribe(aVar);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            aVar.onError(th2);
        }
    }
}
