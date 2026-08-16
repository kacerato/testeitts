package We;

import Be.v;
import java.util.concurrent.atomic.AtomicReference;

public abstract class i<T> implements v<T>, De.c {

    public final AtomicReference<De.c> f27734b = new AtomicReference<>();

    public final Ge.f f27735c = new Ge.f();

    public final void c(@Ce.f De.c cVar) {
        He.b.g(cVar, "resource is null");
        this.f27735c.a(cVar);
    }

    @Override
    public final boolean d() {
        return Ge.d.b(this.f27734b.get());
    }

    @Override
    public final void dispose() {
        if (Ge.d.a(this.f27734b)) {
            this.f27735c.dispose();
        }
    }

    @Override
    public final void e(@Ce.f De.c cVar) {
        if (io.reactivex.internal.util.i.c(this.f27734b, cVar, getClass())) {
            f();
        }
    }

    public void f() {
    }
}
