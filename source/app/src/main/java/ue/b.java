package Ue;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class b extends AtomicLong implements hn.d, De.c {

    public static final long f26018d = 7028635084060361255L;

    public final AtomicReference<hn.d> f26019b;

    public final AtomicReference<De.c> f26020c;

    public b() {
        this.f26020c = new AtomicReference<>();
        this.f26019b = new AtomicReference<>();
    }

    public boolean a(De.c cVar) {
        return Ge.d.c(this.f26020c, cVar);
    }

    public boolean b(De.c cVar) {
        return Ge.d.g(this.f26020c, cVar);
    }

    public void c(hn.d dVar) {
        j.c(this.f26019b, this, dVar);
    }

    @Override
    public void cancel() {
        dispose();
    }

    @Override
    public boolean d() {
        return this.f26019b.get() == j.CANCELLED;
    }

    @Override
    public void dispose() {
        j.a(this.f26019b);
        Ge.d.a(this.f26020c);
    }

    @Override
    public void i(long j10) {
        j.b(this.f26019b, this, j10);
    }

    public b(De.c cVar) {
        this();
        this.f26020c.lazySet(cVar);
    }
}
