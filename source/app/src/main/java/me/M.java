package Me;

import Be.AbstractC2368s;
import java.util.concurrent.Callable;

public final class M<T> extends AbstractC2368s<T> implements Callable<T> {

    public final Runnable f14935b;

    public M(Runnable runnable) {
        this.f14935b = runnable;
    }

    @Override
    public T call() throws Exception {
        this.f14935b.run();
        return null;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        De.c b10 = De.d.b();
        vVar.e(b10);
        if (b10.d()) {
            return;
        }
        try {
            this.f14935b.run();
            if (b10.d()) {
                return;
            }
            vVar.a();
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
