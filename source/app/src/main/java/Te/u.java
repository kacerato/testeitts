package Te;

import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public class u<T> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

    public static final long f24938h = -4945028590049415624L;

    public final hn.c<? super T> f24939b;

    public final io.reactivex.internal.util.c f24940c = new io.reactivex.internal.util.c();

    public final AtomicLong f24941d = new AtomicLong();

    public final AtomicReference<hn.d> f24942e = new AtomicReference<>();

    public final AtomicBoolean f24943f = new AtomicBoolean();

    public volatile boolean f24944g;

    public u(hn.c<? super T> cVar) {
        this.f24939b = cVar;
    }

    @Override
    public void a() {
        this.f24944g = true;
        io.reactivex.internal.util.k.b(this.f24939b, this, this.f24940c);
    }

    @Override
    public void cancel() {
        if (this.f24944g) {
            return;
        }
        Ue.j.a(this.f24942e);
    }

    @Override
    public void h(T t10) {
        io.reactivex.internal.util.k.f(this.f24939b, t10, this, this.f24940c);
    }

    @Override
    public void i(long j10) {
        if (j10 > 0) {
            Ue.j.b(this.f24942e, this.f24941d, j10);
            return;
        }
        cancel();
        onError(new IllegalArgumentException("\u00a73.9 violated: positive request amount required but it was " + j10));
    }

    @Override
    public void j(hn.d dVar) {
        if (this.f24943f.compareAndSet(false, true)) {
            this.f24939b.j(this);
            Ue.j.c(this.f24942e, this.f24941d, dVar);
        } else {
            dVar.cancel();
            cancel();
            onError(new IllegalStateException("\u00a72.12 violated: onSubscribe must be called at most once"));
        }
    }

    @Override
    public void onError(Throwable th2) {
        this.f24944g = true;
        io.reactivex.internal.util.k.d(this.f24939b, th2, this, this.f24940c);
    }
}
