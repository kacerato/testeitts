package cf;

import Be.InterfaceC2367q;
import Ue.j;
import io.reactivex.internal.util.i;
import java.util.concurrent.atomic.AtomicReference;

public abstract class AbstractC4183b<T> implements InterfaceC2367q<T>, De.c {

    public final AtomicReference<hn.d> f34805b = new AtomicReference<>();

    public final void b() {
        dispose();
    }

    @Override
    public final boolean d() {
        return this.f34805b.get() == j.CANCELLED;
    }

    @Override
    public final void dispose() {
        j.a(this.f34805b);
    }

    public void e() {
        this.f34805b.get().i(Long.MAX_VALUE);
    }

    public final void f(long j10) {
        this.f34805b.get().i(j10);
    }

    @Override
    public final void j(hn.d dVar) {
        if (i.d(this.f34805b, dVar, getClass())) {
            e();
        }
    }
}
