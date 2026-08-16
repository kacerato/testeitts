package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.Callable;

public final class C2748t<T, U> extends Be.K<U> implements Ie.b<U> {

    public final AbstractC2362l<T> f13182b;

    public final Callable<? extends U> f13183c;

    public final Fe.b<? super U, ? super T> f13184d;

    public static final class a<T, U> implements InterfaceC2367q<T>, De.c {

        public final Be.N<? super U> f13185b;

        public final Fe.b<? super U, ? super T> f13186c;

        public final U f13187d;

        public hn.d f13188e;

        public boolean f13189f;

        public a(Be.N<? super U> n10, U u10, Fe.b<? super U, ? super T> bVar) {
            this.f13185b = n10;
            this.f13186c = bVar;
            this.f13187d = u10;
        }

        @Override
        public void a() {
            if (this.f13189f) {
                return;
            }
            this.f13189f = true;
            this.f13188e = Ue.j.CANCELLED;
            this.f13185b.b(this.f13187d);
        }

        @Override
        public boolean d() {
            return this.f13188e == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f13188e.cancel();
            this.f13188e = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
            if (this.f13189f) {
                return;
            }
            try {
                this.f13186c.accept(this.f13187d, t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f13188e.cancel();
                onError(th2);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13188e, dVar)) {
                this.f13188e = dVar;
                this.f13185b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f13189f) {
                Ye.a.Y(th2);
                return;
            }
            this.f13189f = true;
            this.f13188e = Ue.j.CANCELLED;
            this.f13185b.onError(th2);
        }
    }

    public C2748t(AbstractC2362l<T> abstractC2362l, Callable<? extends U> callable, Fe.b<? super U, ? super T> bVar) {
        this.f13182b = abstractC2362l;
        this.f13183c = callable;
        this.f13184d = bVar;
    }

    @Override
    public void d1(Be.N<? super U> n10) {
        try {
            this.f13182b.l6(new a(n10, He.b.g(this.f13183c.call(), "The initialSupplier returned a null value"), this.f13184d));
        } catch (Throwable th2) {
            Ge.e.i(th2, n10);
        }
    }

    @Override
    public AbstractC2362l<U> f() {
        return Ye.a.P(new C2745s(this.f13182b, this.f13183c, this.f13184d));
    }
}
