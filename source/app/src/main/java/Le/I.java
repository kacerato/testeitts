package Le;

import Be.AbstractC2362l;
import java.util.concurrent.Callable;

public final class I<T> extends AbstractC2362l<T> {

    public final Callable<? extends hn.b<? extends T>> f11922c;

    public I(Callable<? extends hn.b<? extends T>> callable) {
        this.f11922c = callable;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        try {
            ((hn.b) He.b.g(this.f11922c.call(), "The publisher supplied is null")).l(cVar);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ue.g.b(th2, cVar);
        }
    }
}
