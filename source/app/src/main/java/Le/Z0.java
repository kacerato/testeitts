package Le;

import Le.Y0;
import java.util.concurrent.Callable;

public final class Z0<T, R> extends Be.K<R> {

    public final hn.b<T> f12487b;

    public final Callable<R> f12488c;

    public final Fe.c<R, ? super T, R> f12489d;

    public Z0(hn.b<T> bVar, Callable<R> callable, Fe.c<R, ? super T, R> cVar) {
        this.f12487b = bVar;
        this.f12488c = callable;
        this.f12489d = cVar;
    }

    @Override
    public void d1(Be.N<? super R> n10) {
        try {
            this.f12487b.l(new Y0.a(n10, this.f12489d, He.b.g(this.f12488c.call(), "The seedSupplier returned a null value")));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.i(th2, n10);
        }
    }
}
