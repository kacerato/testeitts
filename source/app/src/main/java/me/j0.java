package Me;

import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicReference;

public final class j0<T, U> extends AbstractC2815a<T, T> {

    public final hn.b<U> f15089c;

    public static final class a<T, U> extends AtomicReference<De.c> implements Be.v<T>, De.c {

        public static final long f15090d = -2187421758664251153L;

        public final Be.v<? super T> f15091b;

        public final C0431a<U> f15092c = new C0431a<>(this);

        public static final class C0431a<U> extends AtomicReference<hn.d> implements InterfaceC2367q<U> {

            public static final long f15093c = -1266041316834525931L;

            public final a<?, U> f15094b;

            public C0431a(a<?, U> aVar) {
                this.f15094b = aVar;
            }

            @Override
            public void a() {
                this.f15094b.c();
            }

            @Override
            public void h(Object obj) {
                Ue.j.a(this);
                this.f15094b.c();
            }

            @Override
            public void j(hn.d dVar) {
                Ue.j.k(this, dVar, Long.MAX_VALUE);
            }

            @Override
            public void onError(Throwable th2) {
                this.f15094b.f(th2);
            }
        }

        public a(Be.v<? super T> vVar) {
            this.f15091b = vVar;
        }

        @Override
        public void a() {
            Ue.j.a(this.f15092c);
            Ge.d dVar = Ge.d.DISPOSED;
            if (getAndSet(dVar) != dVar) {
                this.f15091b.a();
            }
        }

        @Override
        public void b(T t10) {
            Ue.j.a(this.f15092c);
            Ge.d dVar = Ge.d.DISPOSED;
            if (getAndSet(dVar) != dVar) {
                this.f15091b.b(t10);
            }
        }

        public void c() {
            if (Ge.d.a(this)) {
                this.f15091b.a();
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
            Ue.j.a(this.f15092c);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        public void f(Throwable th2) {
            if (Ge.d.a(this)) {
                this.f15091b.onError(th2);
            } else {
                Ye.a.Y(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            Ue.j.a(this.f15092c);
            Ge.d dVar = Ge.d.DISPOSED;
            if (getAndSet(dVar) != dVar) {
                this.f15091b.onError(th2);
            } else {
                Ye.a.Y(th2);
            }
        }
    }

    public j0(Be.y<T> yVar, hn.b<U> bVar) {
        super(yVar);
        this.f15089c = bVar;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        a aVar = new a(vVar);
        vVar.e(aVar);
        this.f15089c.l(aVar.f15092c);
        this.f14976b.d(aVar);
    }
}
