package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import cf.AbstractC4183b;
import cf.C4186e;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

public final class C2734o<T, U extends Collection<? super T>, B> extends AbstractC2692a<T, U> {

    public final Callable<? extends hn.b<B>> f12998d;

    public final Callable<U> f12999e;

    public static final class a<T, U extends Collection<? super T>, B> extends AbstractC4183b<B> {

        public final b<T, U, B> f13000c;

        public boolean f13001d;

        public a(b<T, U, B> bVar) {
            this.f13000c = bVar;
        }

        @Override
        public void a() {
            if (this.f13001d) {
                return;
            }
            this.f13001d = true;
            this.f13000c.t();
        }

        @Override
        public void h(B b10) {
            if (this.f13001d) {
                return;
            }
            this.f13001d = true;
            b();
            this.f13000c.t();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f13001d) {
                Ye.a.Y(th2);
            } else {
                this.f13001d = true;
                this.f13000c.onError(th2);
            }
        }
    }

    public static final class b<T, U extends Collection<? super T>, B> extends Te.n<T, U, U> implements InterfaceC2367q<T>, hn.d, De.c {

        public final Callable<? extends hn.b<B>> f13002D0;

        public hn.d f13003b1;

        public final AtomicReference<De.c> f13004i1;

        public U f13005m1;

        public final Callable<U> f13006v0;

        public b(hn.c<? super U> cVar, Callable<U> callable, Callable<? extends hn.b<B>> callable2) {
            super(cVar, new Re.a());
            this.f13004i1 = new AtomicReference<>();
            this.f13006v0 = callable;
            this.f13002D0 = callable2;
        }

        @Override
        public void a() {
            synchronized (this) {
                try {
                    U u10 = this.f13005m1;
                    if (u10 == null) {
                        return;
                    }
                    this.f13005m1 = null;
                    this.f24880X.offer(u10);
                    this.f24882Z = true;
                    if (f()) {
                        io.reactivex.internal.util.u.e(this.f24880X, this.f24879W, false, this, this);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void cancel() {
            if (this.f24881Y) {
                return;
            }
            this.f24881Y = true;
            this.f13003b1.cancel();
            s();
            if (f()) {
                this.f24880X.clear();
            }
        }

        @Override
        public boolean d() {
            return this.f13004i1.get() == Ge.d.DISPOSED;
        }

        @Override
        public void dispose() {
            this.f13003b1.cancel();
            s();
        }

        @Override
        public void h(T t10) {
            synchronized (this) {
                try {
                    U u10 = this.f13005m1;
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
        public void i(long j10) {
            q(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13003b1, dVar)) {
                this.f13003b1 = dVar;
                hn.c<? super V> cVar = this.f24879W;
                try {
                    this.f13005m1 = (U) He.b.g(this.f13006v0.call(), "The buffer supplied is null");
                    try {
                        hn.b bVar = (hn.b) He.b.g(this.f13002D0.call(), "The boundary publisher supplied is null");
                        a aVar = new a(this);
                        this.f13004i1.set(aVar);
                        cVar.j(this);
                        if (this.f24881Y) {
                            return;
                        }
                        dVar.i(Long.MAX_VALUE);
                        bVar.l(aVar);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f24881Y = true;
                        dVar.cancel();
                        Ue.g.b(th2, cVar);
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    this.f24881Y = true;
                    dVar.cancel();
                    Ue.g.b(th3, cVar);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            cancel();
            this.f24879W.onError(th2);
        }

        @Override
        public boolean e(hn.c<? super U> cVar, U u10) {
            this.f24879W.h(u10);
            return true;
        }

        public void s() {
            Ge.d.a(this.f13004i1);
        }

        public void t() {
            try {
                U u10 = (U) He.b.g(this.f13006v0.call(), "The buffer supplied is null");
                try {
                    hn.b bVar = (hn.b) He.b.g(this.f13002D0.call(), "The boundary publisher supplied is null");
                    a aVar = new a(this);
                    if (Ge.d.c(this.f13004i1, aVar)) {
                        synchronized (this) {
                            try {
                                U u11 = this.f13005m1;
                                if (u11 == null) {
                                    return;
                                }
                                this.f13005m1 = u10;
                                bVar.l(aVar);
                                o(u11, false, this);
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    this.f24881Y = true;
                    this.f13003b1.cancel();
                    this.f24879W.onError(th3);
                }
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                cancel();
                this.f24879W.onError(th4);
            }
        }
    }

    public C2734o(AbstractC2362l<T> abstractC2362l, Callable<? extends hn.b<B>> callable, Callable<U> callable2) {
        super(abstractC2362l);
        this.f12998d = callable;
        this.f12999e = callable2;
    }

    @Override
    public void m6(hn.c<? super U> cVar) {
        this.f12507c.l6(new b(new C4186e(cVar), this.f12999e, this.f12998d));
    }
}
