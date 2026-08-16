package Te;

import Be.InterfaceC2367q;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;

public final class f<T> extends AtomicReference<hn.d> implements InterfaceC2367q<T>, hn.d {

    public static final long f24844c = -4875965440900746268L;

    public static final Object f24845d = new Object();

    public final Queue<Object> f24846b;

    public f(Queue<Object> queue) {
        this.f24846b = queue;
    }

    @Override
    public void a() {
        this.f24846b.offer(io.reactivex.internal.util.p.e());
    }

    public boolean b() {
        return get() == Ue.j.CANCELLED;
    }

    @Override
    public void cancel() {
        if (Ue.j.a(this)) {
            this.f24846b.offer(f24845d);
        }
    }

    @Override
    public void h(T t10) {
        this.f24846b.offer(io.reactivex.internal.util.p.u(t10));
    }

    @Override
    public void i(long j10) {
        get().i(j10);
    }

    @Override
    public void j(hn.d dVar) {
        if (Ue.j.j(this, dVar)) {
            this.f24846b.offer(io.reactivex.internal.util.p.v(this));
        }
    }

    @Override
    public void onError(Throwable th2) {
        this.f24846b.offer(io.reactivex.internal.util.p.h(th2));
    }
}
