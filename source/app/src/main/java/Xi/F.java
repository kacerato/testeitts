package Xi;

import Bi.InterfaceC2379k;

public class F implements InterfaceC2379k {

    public M f29210b;

    public M f29211c;

    public F(M m10, M m11) {
        if (m10 == null) {
            throw new NullPointerException("staticPublicKey cannot be null");
        }
        if (m11 == null) {
            throw new NullPointerException("ephemeralPublicKey cannot be null");
        }
        if (!m10.d().equals(m11.d())) {
            throw new IllegalArgumentException("static and ephemeral public keys have different domain parameters");
        }
        this.f29210b = m10;
        this.f29211c = m11;
    }

    public M a() {
        return this.f29211c;
    }

    public M b() {
        return this.f29210b;
    }
}
