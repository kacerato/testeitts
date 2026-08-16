package Oe;

import java.util.concurrent.Callable;

public final class V<T> extends Be.B<T> {

    public final Callable<? extends Throwable> f19234b;

    public V(Callable<? extends Throwable> callable) {
        this.f19234b = callable;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        try {
            th = (Throwable) He.b.g(this.f19234b.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th2) {
            th = th2;
            io.reactivex.exceptions.a.b(th);
        }
        Ge.e.h(th, i10);
    }
}
