package Me;

import Be.AbstractC2368s;
import java.util.concurrent.Callable;

public final class J<T> extends AbstractC2368s<T> implements Callable<T> {

    public final Callable<? extends T> f14928b;

    public J(Callable<? extends T> callable) {
        this.f14928b = callable;
    }

    @Override
    public T call() throws Exception {
        return this.f14928b.call();
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        De.c b10 = De.d.b();
        vVar.e(b10);
        if (b10.d()) {
            return;
        }
        try {
            T call = this.f14928b.call();
            if (b10.d()) {
                return;
            }
            if (call == null) {
                vVar.a();
            } else {
                vVar.b(call);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            if (b10.d()) {
                Ye.a.Y(th2);
            } else {
                vVar.onError(th2);
            }
        }
    }
}
