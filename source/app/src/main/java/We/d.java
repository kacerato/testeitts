package We;

import Be.v;
import java.util.concurrent.atomic.AtomicReference;

public abstract class d<T> implements v<T>, De.c {

    public final AtomicReference<De.c> f27729b = new AtomicReference<>();

    public void c() {
    }

    @Override
    public final boolean d() {
        return this.f27729b.get() == Ge.d.DISPOSED;
    }

    @Override
    public final void dispose() {
        Ge.d.a(this.f27729b);
    }

    @Override
    public final void e(@Ce.f De.c cVar) {
        if (io.reactivex.internal.util.i.c(this.f27729b, cVar, getClass())) {
            c();
        }
    }
}
