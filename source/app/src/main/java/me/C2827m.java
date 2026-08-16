package Me;

import Be.InterfaceC2367q;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

public final class C2827m<T, U> extends AbstractC2815a<T, T> {

    public final hn.b<U> f15128c;

    public static final class a<T, U> implements Be.v<T>, De.c {

        public final b<T> f15129b;

        public final hn.b<U> f15130c;

        public De.c f15131d;

        public a(Be.v<? super T> vVar, hn.b<U> bVar) {
            this.f15129b = new b<>(vVar);
            this.f15130c = bVar;
        }

        @Override
        public void a() {
            this.f15131d = Ge.d.DISPOSED;
            c();
        }

        @Override
        public void b(T t10) {
            this.f15131d = Ge.d.DISPOSED;
            this.f15129b.f15134c = t10;
            c();
        }

        public void c() {
            this.f15130c.l(this.f15129b);
        }

        @Override
        public boolean d() {
            return this.f15129b.get() == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f15131d.dispose();
            this.f15131d = Ge.d.DISPOSED;
            Ue.j.a(this.f15129b);
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15131d, cVar)) {
                this.f15131d = cVar;
                this.f15129b.f15133b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15131d = Ge.d.DISPOSED;
            this.f15129b.f15135d = th2;
            c();
        }
    }

    public static final class b<T> extends AtomicReference<hn.d> implements InterfaceC2367q<Object> {

        public static final long f15132e = -1215060610805418006L;

        public final Be.v<? super T> f15133b;

        public T f15134c;

        public Throwable f15135d;

        public b(Be.v<? super T> vVar) {
            this.f15133b = vVar;
        }

        @Override
        public void a() {
            Throwable th2 = this.f15135d;
            if (th2 != null) {
                this.f15133b.onError(th2);
                return;
            }
            T t10 = this.f15134c;
            if (t10 != null) {
                this.f15133b.b(t10);
            } else {
                this.f15133b.a();
            }
        }

        @Override
        public void h(Object obj) {
            hn.d dVar = get();
            Ue.j jVar = Ue.j.CANCELLED;
            if (dVar != jVar) {
                lazySet(jVar);
                dVar.cancel();
                a();
            }
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this, dVar, Long.MAX_VALUE);
        }

        @Override
        public void onError(Throwable th2) {
            Throwable th3 = this.f15135d;
            if (th3 == null) {
                this.f15133b.onError(th2);
            } else {
                this.f15133b.onError(new CompositeException(th3, th2));
            }
        }
    }

    public C2827m(Be.y<T> yVar, hn.b<U> bVar) {
        super(yVar);
        this.f15128c = bVar;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar, this.f15128c));
    }
}
