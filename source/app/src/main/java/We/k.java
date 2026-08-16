package We;

import Be.N;
import java.util.concurrent.atomic.AtomicReference;

public abstract class k<T> implements N<T>, De.c {

    public final AtomicReference<De.c> f27738b = new AtomicReference<>();

    public final Ge.f f27739c = new Ge.f();

    public final void a(@Ce.f De.c cVar) {
        He.b.g(cVar, "resource is null");
        this.f27739c.a(cVar);
    }

    public void c() {
    }

    @Override
    public final boolean d() {
        return Ge.d.b(this.f27738b.get());
    }

    @Override
    public final void dispose() {
        if (Ge.d.a(this.f27738b)) {
            this.f27739c.dispose();
        }
    }

    @Override
    public final void e(@Ce.f De.c cVar) {
        if (io.reactivex.internal.util.i.c(this.f27738b, cVar, getClass())) {
            c();
        }
    }
}
