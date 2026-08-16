package We;

import Be.N;
import java.util.concurrent.atomic.AtomicReference;

public abstract class f<T> implements N<T>, De.c {

    public final AtomicReference<De.c> f27731b = new AtomicReference<>();

    public void a() {
    }

    @Override
    public final boolean d() {
        return this.f27731b.get() == Ge.d.DISPOSED;
    }

    @Override
    public final void dispose() {
        Ge.d.a(this.f27731b);
    }

    @Override
    public final void e(@Ce.f De.c cVar) {
        if (io.reactivex.internal.util.i.c(this.f27731b, cVar, getClass())) {
            a();
        }
    }
}
