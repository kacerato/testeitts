package Qe;

import java.util.Iterator;

public final class A<T, R> extends Be.B<R> {

    public final Be.Q<T> f22069b;

    public final Fe.o<? super T, ? extends Iterable<? extends R>> f22070c;

    public static final class a<T, R> extends Je.b<R> implements Be.N<T> {

        public static final long f22071i = -8938804753851907758L;

        public final Be.I<? super R> f22072c;

        public final Fe.o<? super T, ? extends Iterable<? extends R>> f22073d;

        public De.c f22074e;

        public volatile Iterator<? extends R> f22075f;

        public volatile boolean f22076g;

        public boolean f22077h;

        public a(Be.I<? super R> i10, Fe.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f22072c = i10;
            this.f22073d = oVar;
        }

        @Override
        public void b(T t10) {
            Be.I<? super R> i10 = this.f22072c;
            try {
                Iterator<? extends R> it = this.f22073d.apply(t10).iterator();
                if (!it.hasNext()) {
                    i10.a();
                    return;
                }
                if (this.f22077h) {
                    this.f22075f = it;
                    i10.h(null);
                    i10.a();
                    return;
                }
                while (!this.f22076g) {
                    try {
                        i10.h(it.next());
                        if (this.f22076g) {
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
                this.f22072c.onError(th4);
            }
        }

        @Override
        public void clear() {
            this.f22075f = null;
        }

        @Override
        public boolean d() {
            return this.f22076g;
        }

        @Override
        public void dispose() {
            this.f22076g = true;
            this.f22074e.dispose();
            this.f22074e = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f22074e, cVar)) {
                this.f22074e = cVar;
                this.f22072c.e(this);
            }
        }

        @Override
        public boolean isEmpty() {
            return this.f22075f == null;
        }

        @Override
        public int m(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            this.f22077h = true;
            return 2;
        }

        @Override
        public void onError(Throwable th2) {
            this.f22074e = Ge.d.DISPOSED;
            this.f22072c.onError(th2);
        }

        @Override
        @Ce.g
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f22075f;
            if (it == null) {
                return null;
            }
            R r10 = (R) He.b.g(it.next(), "The iterator returned a null value");
            if (!it.hasNext()) {
                this.f22075f = null;
            }
            return r10;
        }
    }

    public A(Be.Q<T> q10, Fe.o<? super T, ? extends Iterable<? extends R>> oVar) {
        this.f22069b = q10;
        this.f22070c = oVar;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        this.f22069b.a(new a(i10, this.f22070c));
    }
}
