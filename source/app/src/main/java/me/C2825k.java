package Me;

import Be.AbstractC2368s;
import java.util.concurrent.Callable;

public final class C2825k<T> extends AbstractC2368s<T> {

    public final Callable<? extends Be.y<? extends T>> f15095b;

    public C2825k(Callable<? extends Be.y<? extends T>> callable) {
        this.f15095b = callable;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        try {
            ((Be.y) He.b.g(this.f15095b.call(), "The maybeSupplier returned a null MaybeSource")).d(vVar);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.g(th2, vVar);
        }
    }
}
