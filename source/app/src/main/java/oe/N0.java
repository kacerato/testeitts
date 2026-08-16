package Oe;

import Oe.M0;
import java.util.concurrent.Callable;

public final class N0<T, R> extends Be.K<R> {

    public final Be.G<T> f19081b;

    public final Callable<R> f19082c;

    public final Fe.c<R, ? super T, R> f19083d;

    public N0(Be.G<T> g10, Callable<R> callable, Fe.c<R, ? super T, R> cVar) {
        this.f19081b = g10;
        this.f19082c = callable;
        this.f19083d = cVar;
    }

    @Override
    public void d1(Be.N<? super R> n10) {
        try {
            this.f19081b.c(new M0.a(n10, this.f19083d, He.b.g(this.f19082c.call(), "The seedSupplier returned a null value")));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.i(th2, n10);
        }
    }
}
