package Le;

import Be.AbstractC2362l;
import Be.AbstractC2368s;
import Be.InterfaceC2367q;

public final class X0<T> extends AbstractC2368s<T> implements Ie.h<T>, Ie.b<T> {

    public final AbstractC2362l<T> f12416b;

    public final Fe.c<T, T, T> f12417c;

    public static final class a<T> implements InterfaceC2367q<T>, De.c {

        public final Be.v<? super T> f12418b;

        public final Fe.c<T, T, T> f12419c;

        public T f12420d;

        public hn.d f12421e;

        public boolean f12422f;

        public a(Be.v<? super T> vVar, Fe.c<T, T, T> cVar) {
            this.f12418b = vVar;
            this.f12419c = cVar;
        }

        @Override
        public void a() {
            if (this.f12422f) {
                return;
            }
            this.f12422f = true;
            T t10 = this.f12420d;
            if (t10 != null) {
                this.f12418b.b(t10);
            } else {
                this.f12418b.a();
            }
        }

        @Override
        public boolean d() {
            return this.f12422f;
        }

        @Override
        public void dispose() {
            this.f12421e.cancel();
            this.f12422f = true;
        }

        @Override
        public void h(T t10) {
            if (this.f12422f) {
                return;
            }
            T t11 = this.f12420d;
            if (t11 == null) {
                this.f12420d = t10;
                return;
            }
            try {
                this.f12420d = (T) He.b.g(this.f12419c.apply(t11, t10), "The reducer returned a null value");
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f12421e.cancel();
                onError(th2);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12421e, dVar)) {
                this.f12421e = dVar;
                this.f12418b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12422f) {
                Ye.a.Y(th2);
            } else {
                this.f12422f = true;
                this.f12418b.onError(th2);
            }
        }
    }

    public X0(AbstractC2362l<T> abstractC2362l, Fe.c<T, T, T> cVar) {
        this.f12416b = abstractC2362l;
        this.f12417c = cVar;
    }

    @Override
    public AbstractC2362l<T> f() {
        return Ye.a.P(new W0(this.f12416b, this.f12417c));
    }

    @Override
    public hn.b<T> source() {
        return this.f12416b;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f12416b.l6(new a(vVar, this.f12417c));
    }
}
