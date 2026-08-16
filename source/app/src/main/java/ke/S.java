package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

public final class S<R> extends AbstractC2353c {

    public final Callable<R> f11216b;

    public final Fe.o<? super R, ? extends InterfaceC2359i> f11217c;

    public final Fe.g<? super R> f11218d;

    public final boolean f11219e;

    public static final class a<R> extends AtomicReference<Object> implements InterfaceC2356f, De.c {

        public static final long f11220f = -674404550052917487L;

        public final InterfaceC2356f f11221b;

        public final Fe.g<? super R> f11222c;

        public final boolean f11223d;

        public De.c f11224e;

        public a(InterfaceC2356f interfaceC2356f, R r10, Fe.g<? super R> gVar, boolean z10) {
            super(r10);
            this.f11221b = interfaceC2356f;
            this.f11222c = gVar;
            this.f11223d = z10;
        }

        @Override
        public void a() {
            this.f11224e = Ge.d.DISPOSED;
            if (this.f11223d) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f11222c.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f11221b.onError(th2);
                    return;
                }
            }
            this.f11221b.a();
            if (this.f11223d) {
                return;
            }
            b();
        }

        public void b() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f11222c.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            }
        }

        @Override
        public boolean d() {
            return this.f11224e.d();
        }

        @Override
        public void dispose() {
            this.f11224e.dispose();
            this.f11224e = Ge.d.DISPOSED;
            b();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f11224e, cVar)) {
                this.f11224e = cVar;
                this.f11221b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f11224e = Ge.d.DISPOSED;
            if (this.f11223d) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f11222c.accept(andSet);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    th2 = new CompositeException(th2, th3);
                }
            }
            this.f11221b.onError(th2);
            if (this.f11223d) {
                return;
            }
            b();
        }
    }

    public S(Callable<R> callable, Fe.o<? super R, ? extends InterfaceC2359i> oVar, Fe.g<? super R> gVar, boolean z10) {
        this.f11216b = callable;
        this.f11217c = oVar;
        this.f11218d = gVar;
        this.f11219e = z10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        try {
            R call = this.f11216b.call();
            try {
                ((InterfaceC2359i) He.b.g(this.f11217c.apply(call), "The completableFunction returned a null CompletableSource")).b(new a(interfaceC2356f, call, this.f11218d, this.f11219e));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                if (this.f11219e) {
                    try {
                        this.f11218d.accept(call);
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        Ge.e.e(new CompositeException(th2, th3), interfaceC2356f);
                        return;
                    }
                }
                Ge.e.e(th2, interfaceC2356f);
                if (this.f11219e) {
                    return;
                }
                try {
                    this.f11218d.accept(call);
                } catch (Throwable th4) {
                    io.reactivex.exceptions.a.b(th4);
                    Ye.a.Y(th4);
                }
            }
        } catch (Throwable th5) {
            io.reactivex.exceptions.a.b(th5);
            Ge.e.e(th5, interfaceC2356f);
        }
    }
}
