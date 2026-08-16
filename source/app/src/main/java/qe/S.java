package Qe;

import Be.InterfaceC2367q;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;

public final class S<T, U> extends Be.K<T> {

    public final Be.Q<T> f22137b;

    public final hn.b<U> f22138c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.N<T>, De.c {

        public static final long f22139d = -622603812305745221L;

        public final Be.N<? super T> f22140b;

        public final b f22141c = new b(this);

        public a(Be.N<? super T> n10) {
            this.f22140b = n10;
        }

        public void a(Throwable th2) {
            De.c andSet;
            De.c cVar = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar || (andSet = getAndSet(dVar)) == dVar) {
                Ye.a.Y(th2);
                return;
            }
            if (andSet != null) {
                andSet.dispose();
            }
            this.f22140b.onError(th2);
        }

        @Override
        public void b(T t10) {
            this.f22141c.b();
            Ge.d dVar = Ge.d.DISPOSED;
            if (getAndSet(dVar) != dVar) {
                this.f22140b.b(t10);
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
            this.f22141c.b();
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f22141c.b();
            De.c cVar = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar || getAndSet(dVar) == dVar) {
                Ye.a.Y(th2);
            } else {
                this.f22140b.onError(th2);
            }
        }
    }

    public static final class b extends AtomicReference<hn.d> implements InterfaceC2367q<Object> {

        public static final long f22142c = 5170026210238877381L;

        public final a<?> f22143b;

        public b(a<?> aVar) {
            this.f22143b = aVar;
        }

        @Override
        public void a() {
            hn.d dVar = get();
            Ue.j jVar = Ue.j.CANCELLED;
            if (dVar != jVar) {
                lazySet(jVar);
                this.f22143b.a(new CancellationException());
            }
        }

        public void b() {
            Ue.j.a(this);
        }

        @Override
        public void h(Object obj) {
            if (Ue.j.a(this)) {
                this.f22143b.a(new CancellationException());
            }
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this, dVar, Long.MAX_VALUE);
        }

        @Override
        public void onError(Throwable th2) {
            this.f22143b.a(th2);
        }
    }

    public S(Be.Q<T> q10, hn.b<U> bVar) {
        this.f22137b = q10;
        this.f22138c = bVar;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        a aVar = new a(n10);
        n10.e(aVar);
        this.f22138c.l(aVar.f22141c);
        this.f22137b.a(aVar);
    }
}
