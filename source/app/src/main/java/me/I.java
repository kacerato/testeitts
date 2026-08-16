package Me;

import Be.AbstractC2368s;
import java.util.concurrent.Callable;

public final class I<T> extends AbstractC2368s<T> implements Callable<T> {

    public final Fe.a f14927b;

    public I(Fe.a aVar) {
        this.f14927b = aVar;
    }

    @Override
    public T call() throws Exception {
        this.f14927b.run();
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
            this.f14927b.run();
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
