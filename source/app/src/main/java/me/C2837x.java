package Me;

import Be.AbstractC2368s;
import java.util.concurrent.Callable;

public final class C2837x<T> extends AbstractC2368s<T> {

    public final Callable<? extends Throwable> f15224b;

    public C2837x(Callable<? extends Throwable> callable) {
        this.f15224b = callable;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        vVar.e(De.d.a());
        try {
            th = (Throwable) He.b.g(this.f15224b.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th2) {
            th = th2;
            io.reactivex.exceptions.a.b(th);
        }
        vVar.onError(th);
    }
}
