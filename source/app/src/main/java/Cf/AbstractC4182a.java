package cf;

import Be.InterfaceC2367q;
import Ue.j;
import io.reactivex.internal.util.i;

public abstract class AbstractC4182a<T> implements InterfaceC2367q<T> {

    public hn.d f34804b;

    public final void b() {
        hn.d dVar = this.f34804b;
        this.f34804b = j.CANCELLED;
        dVar.cancel();
    }

    public void c() {
        d(Long.MAX_VALUE);
    }

    public final void d(long j10) {
        hn.d dVar = this.f34804b;
        if (dVar != null) {
            dVar.i(j10);
        }
    }

    @Override
    public final void j(hn.d dVar) {
        if (i.f(this.f34804b, dVar, getClass())) {
            this.f34804b = dVar;
            c();
        }
    }
}
