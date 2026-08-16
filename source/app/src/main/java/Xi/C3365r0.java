package Xi;

import Bi.InterfaceC2379k;

public class C3365r0 implements InterfaceC2379k {

    public M f29409b;

    public M f29410c;

    public C3365r0(M m10, M m11) {
        if (m10 == null) {
            throw new NullPointerException("staticPublicKey cannot be null");
        }
        if (m11 == null) {
            throw new NullPointerException("ephemeralPublicKey cannot be null");
        }
        if (!m10.d().equals(m11.d())) {
            throw new IllegalArgumentException("Static and ephemeral public keys have different domain parameters");
        }
        this.f29409b = m10;
        this.f29410c = m11;
    }

    public M a() {
        return this.f29410c;
    }

    public M b() {
        return this.f29409b;
    }
}
