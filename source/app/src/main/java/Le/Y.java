package Le;

import Be.AbstractC2362l;
import java.util.concurrent.Callable;

public final class Y<T> extends AbstractC2362l<T> {

    public final Callable<? extends Throwable> f12466c;

    public Y(Callable<? extends Throwable> callable) {
        this.f12466c = callable;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        try {
            th = (Throwable) He.b.g(this.f12466c.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th2) {
            th = th2;
            io.reactivex.exceptions.a.b(th);
        }
        Ue.g.b(th, cVar);
    }
}
