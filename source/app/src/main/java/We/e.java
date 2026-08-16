package We;

import Be.I;
import java.util.concurrent.atomic.AtomicReference;

public abstract class e<T> implements I<T>, De.c {

    public final AtomicReference<De.c> f27730b = new AtomicReference<>();

    public void b() {
    }

    @Override
    public final boolean d() {
        return this.f27730b.get() == Ge.d.DISPOSED;
    }

    @Override
    public final void dispose() {
        Ge.d.a(this.f27730b);
    }

    @Override
    public final void e(@Ce.f De.c cVar) {
        if (io.reactivex.internal.util.i.c(this.f27730b, cVar, getClass())) {
            b();
        }
    }
}
