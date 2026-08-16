package Qe;

import java.util.concurrent.Callable;

public final class D<T> extends Be.K<T> {

    public final Callable<? extends T> f22092b;

    public D(Callable<? extends T> callable) {
        this.f22092b = callable;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        De.c b10 = De.d.b();
        n10.e(b10);
        if (b10.d()) {
            return;
        }
        try {
            A0.a aVar = (Object) He.b.g(this.f22092b.call(), "The callable returned a null value");
            if (b10.d()) {
                return;
            }
            n10.b(aVar);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            if (b10.d()) {
                Ye.a.Y(th2);
            } else {
                n10.onError(th2);
            }
        }
    }
}
