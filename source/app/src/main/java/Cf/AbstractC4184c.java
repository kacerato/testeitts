package cf;

import Be.InterfaceC2367q;
import Ue.j;
import io.reactivex.internal.util.i;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public abstract class AbstractC4184c<T> implements InterfaceC2367q<T>, De.c {

    public final AtomicReference<hn.d> f34806b = new AtomicReference<>();

    public final Ge.f f34807c = new Ge.f();

    public final AtomicLong f34808d = new AtomicLong();

    public final void b(De.c cVar) {
        He.b.g(cVar, "resource is null");
        this.f34807c.a(cVar);
    }

    public void c() {
        e(Long.MAX_VALUE);
    }

    @Override
    public final boolean d() {
        return this.f34806b.get() == j.CANCELLED;
    }

    @Override
    public final void dispose() {
        if (j.a(this.f34806b)) {
            this.f34807c.dispose();
        }
    }

    public final void e(long j10) {
        j.b(this.f34806b, this.f34808d, j10);
    }

    @Override
    public final void j(hn.d dVar) {
        if (i.d(this.f34806b, dVar, getClass())) {
            long andSet = this.f34808d.getAndSet(0L);
            if (andSet != 0) {
                dVar.i(andSet);
            }
            c();
        }
    }
}
