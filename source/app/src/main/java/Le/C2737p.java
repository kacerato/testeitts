package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import cf.AbstractC4183b;
import cf.C4186e;
import java.util.Collection;
import java.util.concurrent.Callable;

public final class C2737p<T, U extends Collection<? super T>, B> extends AbstractC2692a<T, U> {

    public final hn.b<B> f13057d;

    public final Callable<U> f13058e;

    public static final class a<T, U extends Collection<? super T>, B> extends AbstractC4183b<B> {

        public final b<T, U, B> f13059c;

        public a(b<T, U, B> bVar) {
            this.f13059c = bVar;
        }

        @Override
        public void a() {
            this.f13059c.a();
        }

        @Override
        public void h(B b10) {
            this.f13059c.s();
        }

        @Override
        public void onError(Throwable th2) {
            this.f13059c.onError(th2);
        }
    }

    public static final class b<T, U extends Collection<? super T>, B> extends Te.n<T, U, U> implements InterfaceC2367q<T>, hn.d, De.c {

        public final hn.b<B> f13060D0;

        public hn.d f13061b1;

        public De.c f13062i1;

        public U f13063m1;

        public final Callable<U> f13064v0;

        public b(hn.c<? super U> cVar, Callable<U> callable, hn.b<B> bVar) {
            super(cVar, new Re.a());
            this.f13064v0 = callable;
            this.f13060D0 = bVar;
        }

        @Override
        public void a() {
            synchronized (this) {
                try {
                    U u10 = this.f13063m1;
                    if (u10 == null) {
                        return;
                    }
                    this.f13063m1 = null;
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
            this.f13062i1.dispose();
            this.f13061b1.cancel();
            if (f()) {
                this.f24880X.clear();
            }
        }

        @Override
        public boolean d() {
            return this.f24881Y;
        }

        @Override
        public void dispose() {
            cancel();
        }

        @Override
        public void h(T t10) {
            synchronized (this) {
                try {
                    U u10 = this.f13063m1;
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
            if (Ue.j.o(this.f13061b1, dVar)) {
                this.f13061b1 = dVar;
                try {
                    this.f13063m1 = (U) He.b.g(this.f13064v0.call(), "The buffer supplied is null");
                    a aVar = new a(this);
                    this.f13062i1 = aVar;
                    this.f24879W.j(this);
                    if (this.f24881Y) {
                        return;
                    }
                    dVar.i(Long.MAX_VALUE);
                    this.f13060D0.l(aVar);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f24881Y = true;
                    dVar.cancel();
                    Ue.g.b(th2, this.f24879W);
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
            try {
                U u10 = (U) He.b.g(this.f13064v0.call(), "The buffer supplied is null");
                synchronized (this) {
                    try {
                        U u11 = this.f13063m1;
                        if (u11 == null) {
                            return;
                        }
                        this.f13063m1 = u10;
                        o(u11, false, this);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                cancel();
                this.f24879W.onError(th3);
            }
        }
    }

    public C2737p(AbstractC2362l<T> abstractC2362l, hn.b<B> bVar, Callable<U> callable) {
        super(abstractC2362l);
        this.f13057d = bVar;
        this.f13058e = callable;
    }

    @Override
    public void m6(hn.c<? super U> cVar) {
        this.f12507c.l6(new b(new C4186e(cVar), this.f13058e, this.f13057d));
    }
}
