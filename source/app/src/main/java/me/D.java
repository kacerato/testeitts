package Me;

import java.util.Iterator;

public final class D<T, R> extends Be.B<R> {

    public final Be.y<T> f14889b;

    public final Fe.o<? super T, ? extends Iterable<? extends R>> f14890c;

    public static final class a<T, R> extends Je.c<R> implements Be.v<T> {

        public final Be.I<? super R> f14891b;

        public final Fe.o<? super T, ? extends Iterable<? extends R>> f14892c;

        public De.c f14893d;

        public volatile Iterator<? extends R> f14894e;

        public volatile boolean f14895f;

        public boolean f14896g;

        public a(Be.I<? super R> i10, Fe.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f14891b = i10;
            this.f14892c = oVar;
        }

        @Override
        public void a() {
            this.f14891b.a();
        }

        @Override
        public void b(T t10) {
            Be.I<? super R> i10 = this.f14891b;
            try {
                Iterator<? extends R> it = this.f14892c.apply(t10).iterator();
                if (!it.hasNext()) {
                    i10.a();
                    return;
                }
                this.f14894e = it;
                if (this.f14896g) {
                    i10.h(null);
                    i10.a();
                    return;
                }
                while (!this.f14895f) {
                    try {
                        i10.h(it.next());
                        if (this.f14895f) {
                            return;
                        }
                        try {
                            if (!it.hasNext()) {
                                i10.a();
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            i10.onError(th2);
                            return;
                        }
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        i10.onError(th3);
                        return;
                    }
                }
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                i10.onError(th4);
            }
        }

        @Override
        public void clear() {
            this.f14894e = null;
        }

        @Override
        public boolean d() {
            return this.f14895f;
        }

        @Override
        public void dispose() {
            this.f14895f = true;
            this.f14893d.dispose();
            this.f14893d = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f14893d, cVar)) {
                this.f14893d = cVar;
                this.f14891b.e(this);
            }
        }

        @Override
        public boolean isEmpty() {
            return this.f14894e == null;
        }

        @Override
        public int m(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            this.f14896g = true;
            return 2;
        }

        @Override
        public void onError(Throwable th2) {
            this.f14893d = Ge.d.DISPOSED;
            this.f14891b.onError(th2);
        }

        @Override
        @Ce.g
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f14894e;
            if (it == null) {
                return null;
            }
            R r10 = (R) He.b.g(it.next(), "The iterator returned a null value");
            if (!it.hasNext()) {
                this.f14894e = null;
            }
            return r10;
        }
    }

    public D(Be.y<T> yVar, Fe.o<? super T, ? extends Iterable<? extends R>> oVar) {
        this.f14889b = yVar;
        this.f14890c = oVar;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        this.f14889b.d(new a(i10, this.f14890c));
    }
}
