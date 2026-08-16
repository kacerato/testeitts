package We;

import Be.I;
import java.util.concurrent.atomic.AtomicReference;

public abstract class j<T> implements I<T>, De.c {

    public final AtomicReference<De.c> f27736b = new AtomicReference<>();

    public final Ge.f f27737c = new Ge.f();

    public final void b(@Ce.f De.c cVar) {
        He.b.g(cVar, "resource is null");
        this.f27737c.a(cVar);
    }

    public void c() {
    }

    @Override
    public final boolean d() {
        return Ge.d.b(this.f27736b.get());
    }

    @Override
    public final void dispose() {
        if (Ge.d.a(this.f27736b)) {
            this.f27737c.dispose();
        }
    }

    @Override
    public final void e(De.c cVar) {
        if (io.reactivex.internal.util.i.c(this.f27736b, cVar, getClass())) {
            c();
        }
    }
}
