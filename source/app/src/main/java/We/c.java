package We;

import Be.InterfaceC2356f;
import java.util.concurrent.atomic.AtomicReference;

public abstract class c implements InterfaceC2356f, De.c {

    public final AtomicReference<De.c> f27728b = new AtomicReference<>();

    public void b() {
    }

    @Override
    public final boolean d() {
        return this.f27728b.get() == Ge.d.DISPOSED;
    }

    @Override
    public final void dispose() {
        Ge.d.a(this.f27728b);
    }

    @Override
    public final void e(@Ce.f De.c cVar) {
        if (io.reactivex.internal.util.i.c(this.f27728b, cVar, getClass())) {
            b();
        }
    }
}
