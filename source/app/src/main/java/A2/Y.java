package A2;

import A2.C;

@InterfaceC2284t
public final class Y<N> extends AbstractC2287w<N> implements P<N> {

    public final S<N, C.a> f187a;

    public Y(AbstractC2272g<? super N> abstractC2272g) {
        this.f187a = new a0(abstractC2272g);
    }

    @Override
    public boolean I(AbstractC2285u<N> abstractC2285u) {
        P(abstractC2285u);
        return K(abstractC2285u.h(), abstractC2285u.i());
    }

    @Override
    public boolean K(N n10, N n11) {
        return this.f187a.y(n10, n11, C.a.EDGE_EXISTS) == null;
    }

    @Override
    public InterfaceC2276k<N> Q() {
        return this.f187a;
    }

    @Override
    public boolean o(N n10) {
        return this.f187a.o(n10);
    }

    @Override
    public boolean p(N n10) {
        return this.f187a.p(n10);
    }

    @Override
    public boolean r(N n10, N n11) {
        return this.f187a.r(n10, n11) != null;
    }

    @Override
    public boolean t(AbstractC2285u<N> abstractC2285u) {
        P(abstractC2285u);
        return r(abstractC2285u.h(), abstractC2285u.i());
    }
}
