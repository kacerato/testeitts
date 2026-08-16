package Oe;

import java.util.Collection;
import java.util.concurrent.Callable;

public final class C2904p<T, U extends Collection<? super T>, B> extends AbstractC2859a<T, U> {

    public final Be.G<B> f19714c;

    public final Callable<U> f19715d;

    public static final class a<T, U extends Collection<? super T>, B> extends We.e<B> {

        public final b<T, U, B> f19716c;

        public a(b<T, U, B> bVar) {
            this.f19716c = bVar;
        }

        @Override
        public void a() {
            this.f19716c.a();
        }

        @Override
        public void h(B b10) {
            this.f19716c.o();
        }

        @Override
        public void onError(Throwable th2) {
            this.f19716c.onError(th2);
        }
    }

    public static final class b<T, U extends Collection<? super T>, B> extends Je.v<T, U, U> implements Be.I<T>, De.c {

        public final Callable<U> f19717L;

        public final Be.G<B> f19718M;

        public De.c f19719N;

        public De.c f19720O;

        public U f19721P;

        public b(Be.I<? super U> i10, Callable<U> callable, Be.G<B> g10) {
            super(i10, new Re.a());
            this.f19717L = callable;
            this.f19718M = g10;
        }

        @Override
        public void a() {
            synchronized (this) {
                try {
                    U u10 = this.f19721P;
                    if (u10 == null) {
                        return;
                    }
                    this.f19721P = null;
                    this.f10516H.offer(u10);
                    this.f10518J = true;
                    if (f()) {
                        io.reactivex.internal.util.u.d(this.f10516H, this.f10515G, false, this, this);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public boolean d() {
            return this.f10517I;
        }

        @Override
        public void dispose() {
            if (this.f10517I) {
                return;
            }
            this.f10517I = true;
            this.f19720O.dispose();
            this.f19719N.dispose();
            if (f()) {
                this.f10516H.clear();
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19719N, cVar)) {
                this.f19719N = cVar;
                try {
                    this.f19721P = (U) He.b.g(this.f19717L.call(), "The buffer supplied is null");
                    a aVar = new a(this);
                    this.f19720O = aVar;
                    this.f10515G.e(this);
                    if (this.f10517I) {
                        return;
                    }
                    this.f19718M.c(aVar);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f10517I = true;
                    cVar.dispose();
                    Ge.e.h(th2, this.f10515G);
                }
            }
        }

        @Override
        public void h(T t10) {
            synchronized (this) {
                try {
                    U u10 = this.f19721P;
                    if (u10 == null) {
                        return;
                    }
                    u10.add(t10);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void l(Be.I<? super U> i10, U u10) {
            this.f10515G.h(u10);
        }

        public void o() {
            try {
                U u10 = (U) He.b.g(this.f19717L.call(), "The buffer supplied is null");
                synchronized (this) {
                    try {
                        U u11 = this.f19721P;
                        if (u11 == null) {
                            return;
                        }
                        this.f19721P = u10;
                        j(u11, false, this);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                dispose();
                this.f10515G.onError(th3);
            }
        }

        @Override
        public void onError(Throwable th2) {
            dispose();
            this.f10515G.onError(th2);
        }
    }

    public C2904p(Be.G<T> g10, Be.G<B> g11, Callable<U> callable) {
        super(g10);
        this.f19714c = g11;
        this.f19715d = callable;
    }

    @Override
    public void J5(Be.I<? super U> i10) {
        this.f19344b.c(new b(new We.m(i10), this.f19715d, this.f19714c));
    }
}
