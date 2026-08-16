package Oe;

import java.util.concurrent.Callable;

public final class CallableC2872e0<T> extends Be.B<T> implements Callable<T> {

    public final Callable<? extends T> f19455b;

    public CallableC2872e0(Callable<? extends T> callable) {
        this.f19455b = callable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void J5(Be.I<? super T> i10) {
        Je.l lVar = new Je.l(i10);
        i10.e(lVar);
        if (lVar.d()) {
            return;
        }
        try {
            lVar.f(He.b.g(this.f19455b.call(), "Callable returned null"));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            if (lVar.d()) {
                Ye.a.Y(th2);
            } else {
                i10.onError(th2);
            }
        }
    }

    @Override
    public T call() throws Exception {
        return (T) He.b.g(this.f19455b.call(), "The callable returned a null value");
    }
}
