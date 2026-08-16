package Qe;

import java.util.concurrent.Callable;

public final class C3004w<T> extends Be.K<T> {

    public final Callable<? extends Throwable> f22315b;

    public C3004w(Callable<? extends Throwable> callable) {
        this.f22315b = callable;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        try {
            th = (Throwable) He.b.g(this.f22315b.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th2) {
            th = th2;
            io.reactivex.exceptions.a.b(th);
        }
        Ge.e.i(th, n10);
    }
}
