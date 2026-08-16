package Me;

import java.util.concurrent.atomic.AtomicReference;

public final class i0<T, U> extends AbstractC2815a<T, T> {

    public final Be.y<U> f15080c;

    public static final class a<T, U> extends AtomicReference<De.c> implements Be.v<T>, De.c {

        public static final long f15081d = -2187421758664251153L;

        public final Be.v<? super T> f15082b;

        public final C0430a<U> f15083c = new C0430a<>(this);

        public static final class C0430a<U> extends AtomicReference<De.c> implements Be.v<U> {

            public static final long f15084c = -1266041316834525931L;

            public final a<?, U> f15085b;

            public C0430a(a<?, U> aVar) {
                this.f15085b = aVar;
            }

            @Override
            public void a() {
                this.f15085b.c();
            }

            @Override
            public void b(Object obj) {
                this.f15085b.c();
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f15085b.f(th2);
            }
        }

        public a(Be.v<? super T> vVar) {
            this.f15082b = vVar;
        }

        @Override
        public void a() {
            Ge.d.a(this.f15083c);
            Ge.d dVar = Ge.d.DISPOSED;
            if (getAndSet(dVar) != dVar) {
                this.f15082b.a();
            }
        }

        @Override
        public void b(T t10) {
            Ge.d.a(this.f15083c);
            Ge.d dVar = Ge.d.DISPOSED;
            if (getAndSet(dVar) != dVar) {
                this.f15082b.b(t10);
            }
        }

        public void c() {
            if (Ge.d.a(this)) {
                this.f15082b.a();
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
            Ge.d.a(this.f15083c);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        public void f(Throwable th2) {
            if (Ge.d.a(this)) {
                this.f15082b.onError(th2);
            } else {
                Ye.a.Y(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            Ge.d.a(this.f15083c);
            Ge.d dVar = Ge.d.DISPOSED;
            if (getAndSet(dVar) != dVar) {
                this.f15082b.onError(th2);
            } else {
                Ye.a.Y(th2);
            }
        }
    }

    public i0(Be.y<T> yVar, Be.y<U> yVar2) {
        super(yVar);
        this.f15080c = yVar2;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        a aVar = new a(vVar);
        vVar.e(aVar);
        this.f15080c.d(aVar.f15083c);
        this.f14976b.d(aVar);
    }
}
