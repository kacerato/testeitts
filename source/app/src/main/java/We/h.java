package We;

import Be.InterfaceC2356f;
import java.util.concurrent.atomic.AtomicReference;

public abstract class h implements InterfaceC2356f, De.c {

    public final AtomicReference<De.c> f27732b = new AtomicReference<>();

    public final Ge.f f27733c = new Ge.f();

    public final void b(@Ce.f De.c cVar) {
        He.b.g(cVar, "resource is null");
        this.f27733c.a(cVar);
    }

    public void c() {
    }

    @Override
    public final boolean d() {
        return Ge.d.b(this.f27732b.get());
    }

    @Override
    public final void dispose() {
        if (Ge.d.a(this.f27732b)) {
            this.f27733c.dispose();
        }
    }

    @Override
    public final void e(@Ce.f De.c cVar) {
        if (io.reactivex.internal.util.i.c(this.f27732b, cVar, getClass())) {
            c();
        }
    }
}
