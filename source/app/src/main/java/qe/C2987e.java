package Qe;

import java.util.concurrent.Callable;

public final class C2987e<T> extends Be.K<T> {

    public final Callable<? extends Be.Q<? extends T>> f22222b;

    public C2987e(Callable<? extends Be.Q<? extends T>> callable) {
        this.f22222b = callable;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        try {
            ((Be.Q) He.b.g(this.f22222b.call(), "The singleSupplier returned a null SingleSource")).a(n10);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.i(th2, n10);
        }
    }
}
