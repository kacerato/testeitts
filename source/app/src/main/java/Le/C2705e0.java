package Le;

import Be.AbstractC2362l;

public final class C2705e0<T, U> extends AbstractC2362l<U> {

    public final hn.b<T> f12689c;

    public final Fe.o<? super T, ? extends hn.b<? extends U>> f12690d;

    public final boolean f12691e;

    public final int f12692f;

    public final int f12693g;

    public C2705e0(hn.b<T> bVar, Fe.o<? super T, ? extends hn.b<? extends U>> oVar, boolean z10, int i10, int i11) {
        this.f12689c = bVar;
        this.f12690d = oVar;
        this.f12691e = z10;
        this.f12692f = i10;
        this.f12693g = i11;
    }

    @Override
    public void m6(hn.c<? super U> cVar) {
        if (C2724k1.b(this.f12689c, cVar, this.f12690d)) {
            return;
        }
        this.f12689c.l(C2693a0.O8(cVar, this.f12690d, this.f12691e, this.f12692f, this.f12693g));
    }
}
