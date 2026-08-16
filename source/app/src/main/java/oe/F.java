package Oe;

import java.util.concurrent.Callable;

public final class F<T> extends Be.B<T> {

    public final Callable<? extends Be.G<? extends T>> f18815b;

    public F(Callable<? extends Be.G<? extends T>> callable) {
        this.f18815b = callable;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        try {
            ((Be.G) He.b.g(this.f18815b.call(), "null ObservableSource supplied")).c(i10);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.h(th2, i10);
        }
    }
}
