package Me;

import Be.InterfaceC2367q;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class l0<T, U> extends AbstractC2815a<T, T> {

    public final hn.b<U> f15117c;

    public final Be.y<? extends T> f15118d;

    public static final class a<T> extends AtomicReference<De.c> implements Be.v<T> {

        public static final long f15119c = 8663801314800248617L;

        public final Be.v<? super T> f15120b;

        public a(Be.v<? super T> vVar) {
            this.f15120b = vVar;
        }

        @Override
        public void a() {
            this.f15120b.a();
        }

        @Override
        public void b(T t10) {
            this.f15120b.b(t10);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f15120b.onError(th2);
        }
    }

    public static final class b<T, U> extends AtomicReference<De.c> implements Be.v<T>, De.c {

        public static final long f15121f = -5955289211445418871L;

        public final Be.v<? super T> f15122b;

        public final c<T, U> f15123c = new c<>(this);

        public final Be.y<? extends T> f15124d;

        public final a<T> f15125e;

        public b(Be.v<? super T> vVar, Be.y<? extends T> yVar) {
            this.f15122b = vVar;
            this.f15124d = yVar;
            this.f15125e = yVar != null ? new a<>(vVar) : null;
        }

        @Override
        public void a() {
            Ue.j.a(this.f15123c);
            Ge.d dVar = Ge.d.DISPOSED;
            if (getAndSet(dVar) != dVar) {
                this.f15122b.a();
            }
        }

        @Override
        public void b(T t10) {
            Ue.j.a(this.f15123c);
            Ge.d dVar = Ge.d.DISPOSED;
            if (getAndSet(dVar) != dVar) {
                this.f15122b.b(t10);
            }
        }

        public void c() {
            if (Ge.d.a(this)) {
                Be.y<? extends T> yVar = this.f15124d;
                if (yVar == null) {
                    this.f15122b.onError(new TimeoutException());
                } else {
                    yVar.d(this.f15125e);
                }
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
            Ue.j.a(this.f15123c);
            a<T> aVar = this.f15125e;
            if (aVar != null) {
                Ge.d.a(aVar);
            }
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        public void f(Throwable th2) {
            if (Ge.d.a(this)) {
                this.f15122b.onError(th2);
            } else {
                Ye.a.Y(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            Ue.j.a(this.f15123c);
            Ge.d dVar = Ge.d.DISPOSED;
            if (getAndSet(dVar) != dVar) {
                this.f15122b.onError(th2);
            } else {
                Ye.a.Y(th2);
            }
        }
    }

    public static final class c<T, U> extends AtomicReference<hn.d> implements InterfaceC2367q<Object> {

        public static final long f15126c = 8663801314800248617L;

        public final b<T, U> f15127b;

        public c(b<T, U> bVar) {
            this.f15127b = bVar;
        }

        @Override
        public void a() {
            this.f15127b.c();
        }

        @Override
        public void h(Object obj) {
            get().cancel();
            this.f15127b.c();
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this, dVar, Long.MAX_VALUE);
        }

        @Override
        public void onError(Throwable th2) {
            this.f15127b.f(th2);
        }
    }

    public l0(Be.y<T> yVar, hn.b<U> bVar, Be.y<? extends T> yVar2) {
        super(yVar);
        this.f15117c = bVar;
        this.f15118d = yVar2;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        b bVar = new b(vVar, this.f15118d);
        vVar.e(bVar);
        this.f15117c.l(bVar.f15123c);
        this.f14976b.d(bVar);
    }
}
