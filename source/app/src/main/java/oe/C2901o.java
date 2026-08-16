package Oe;

import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

public final class C2901o<T, U extends Collection<? super T>, B> extends AbstractC2859a<T, U> {

    public final Callable<? extends Be.G<B>> f19697c;

    public final Callable<U> f19698d;

    public static final class a<T, U extends Collection<? super T>, B> extends We.e<B> {

        public final b<T, U, B> f19699c;

        public boolean f19700d;

        public a(b<T, U, B> bVar) {
            this.f19699c = bVar;
        }

        @Override
        public void a() {
            if (this.f19700d) {
                return;
            }
            this.f19700d = true;
            this.f19699c.p();
        }

        @Override
        public void h(B b10) {
            if (this.f19700d) {
                return;
            }
            this.f19700d = true;
            dispose();
            this.f19699c.p();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19700d) {
                Ye.a.Y(th2);
            } else {
                this.f19700d = true;
                this.f19699c.onError(th2);
            }
        }
    }

    public static final class b<T, U extends Collection<? super T>, B> extends Je.v<T, U, U> implements Be.I<T>, De.c {

        public final Callable<U> f19701L;

        public final Callable<? extends Be.G<B>> f19702M;

        public De.c f19703N;

        public final AtomicReference<De.c> f19704O;

        public U f19705P;

        public b(Be.I<? super U> i10, Callable<U> callable, Callable<? extends Be.G<B>> callable2) {
            super(i10, new Re.a());
            this.f19704O = new AtomicReference<>();
            this.f19701L = callable;
            this.f19702M = callable2;
        }

        @Override
        public void a() {
            synchronized (this) {
                try {
                    U u10 = this.f19705P;
                    if (u10 == null) {
                        return;
                    }
                    this.f19705P = null;
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
            this.f19703N.dispose();
            o();
            if (f()) {
                this.f10516H.clear();
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19703N, cVar)) {
                this.f19703N = cVar;
                Be.I<? super V> i10 = this.f10515G;
                try {
                    this.f19705P = (U) He.b.g(this.f19701L.call(), "The buffer supplied is null");
                    try {
                        Be.G g10 = (Be.G) He.b.g(this.f19702M.call(), "The boundary ObservableSource supplied is null");
                        a aVar = new a(this);
                        this.f19704O.set(aVar);
                        i10.e(this);
                        if (this.f10517I) {
                            return;
                        }
                        g10.c(aVar);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f10517I = true;
                        cVar.dispose();
                        Ge.e.h(th2, i10);
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    this.f10517I = true;
                    cVar.dispose();
                    Ge.e.h(th3, i10);
                }
            }
        }

        @Override
        public void h(T t10) {
            synchronized (this) {
                try {
                    U u10 = this.f19705P;
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
            Ge.d.a(this.f19704O);
        }

        @Override
        public void onError(Throwable th2) {
            dispose();
            this.f10515G.onError(th2);
        }

        public void p() {
            try {
                U u10 = (U) He.b.g(this.f19701L.call(), "The buffer supplied is null");
                try {
                    Be.G g10 = (Be.G) He.b.g(this.f19702M.call(), "The boundary ObservableSource supplied is null");
                    a aVar = new a(this);
                    if (Ge.d.c(this.f19704O, aVar)) {
                        synchronized (this) {
                            try {
                                U u11 = this.f19705P;
                                if (u11 == null) {
                                    return;
                                }
                                this.f19705P = u10;
                                g10.c(aVar);
                                j(u11, false, this);
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    this.f10517I = true;
                    this.f19703N.dispose();
                    this.f10515G.onError(th3);
                }
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                dispose();
                this.f10515G.onError(th4);
            }
        }
    }

    public C2901o(Be.G<T> g10, Callable<? extends Be.G<B>> callable, Callable<U> callable2) {
        super(g10);
        this.f19697c = callable;
        this.f19698d = callable2;
    }

    @Override
    public void J5(Be.I<? super U> i10) {
        this.f19344b.c(new b(new We.m(i10), this.f19698d, this.f19697c));
    }
}
