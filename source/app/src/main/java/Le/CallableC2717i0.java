package Le;

import Be.AbstractC2362l;
import java.util.concurrent.Callable;

public final class CallableC2717i0<T> extends AbstractC2362l<T> implements Callable<T> {

    public final Callable<? extends T> f12834c;

    public CallableC2717i0(Callable<? extends T> callable) {
        this.f12834c = callable;
    }

    @Override
    public T call() throws Exception {
        return (T) He.b.g(this.f12834c.call(), "The callable returned a null value");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void m6(hn.c<? super T> cVar) {
        Ue.f fVar = new Ue.f(cVar);
        cVar.j(fVar);
        try {
            fVar.d(He.b.g(this.f12834c.call(), "The callable returned a null value"));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            if (fVar.n()) {
                Ye.a.Y(th2);
            } else {
                cVar.onError(th2);
            }
        }
    }
}
