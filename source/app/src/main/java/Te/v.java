package Te;

import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicReference;

public final class v<T> extends AtomicReference<De.c> implements InterfaceC2367q<T>, De.c, hn.d {

    public static final long f24945d = -8612022020200669122L;

    public final hn.c<? super T> f24946b;

    public final AtomicReference<hn.d> f24947c = new AtomicReference<>();

    public v(hn.c<? super T> cVar) {
        this.f24946b = cVar;
    }

    @Override
    public void a() {
        Ge.d.a(this);
        this.f24946b.a();
    }

    public void b(De.c cVar) {
        Ge.d.g(this, cVar);
    }

    @Override
    public void cancel() {
        dispose();
    }

    @Override
    public boolean d() {
        return this.f24947c.get() == Ue.j.CANCELLED;
    }

    @Override
    public void dispose() {
        Ue.j.a(this.f24947c);
        Ge.d.a(this);
    }

    @Override
    public void h(T t10) {
        this.f24946b.h(t10);
    }

    @Override
    public void i(long j10) {
        if (Ue.j.m(j10)) {
            this.f24947c.get().i(j10);
        }
    }

    @Override
    public void j(hn.d dVar) {
        if (Ue.j.j(this.f24947c, dVar)) {
            this.f24946b.j(this);
        }
    }

    @Override
    public void onError(Throwable th2) {
        Ge.d.a(this);
        this.f24946b.onError(th2);
    }
}
