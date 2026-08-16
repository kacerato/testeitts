package De;

import java.util.concurrent.atomic.AtomicReference;

public final class h implements c {

    public final AtomicReference<c> f5163b;

    public h() {
        this.f5163b = new AtomicReference<>();
    }

    @Ce.g
    public c a() {
        c cVar = this.f5163b.get();
        return cVar == Ge.d.DISPOSED ? d.a() : cVar;
    }

    public boolean b(@Ce.g c cVar) {
        return Ge.d.c(this.f5163b, cVar);
    }

    public boolean c(@Ce.g c cVar) {
        return Ge.d.g(this.f5163b, cVar);
    }

    @Override
    public boolean d() {
        return Ge.d.b(this.f5163b.get());
    }

    @Override
    public void dispose() {
        Ge.d.a(this.f5163b);
    }

    public h(@Ce.g c cVar) {
        this.f5163b = new AtomicReference<>(cVar);
    }
}
