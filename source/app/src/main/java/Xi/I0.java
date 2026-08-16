package Xi;

import Bi.InterfaceC2379k;

public class I0 implements InterfaceC2379k {

    public final M f29237b;

    public final M f29238c;

    public I0(M m10, M m11) {
        if (m10 == null) {
            throw new NullPointerException("staticPublicKey cannot be null");
        }
        if (m11 == null) {
            throw new NullPointerException("ephemeralPublicKey cannot be null");
        }
        if (!m10.d().equals(m11.d())) {
            throw new IllegalArgumentException("Static and ephemeral public keys have different domain parameters");
        }
        this.f29237b = m10;
        this.f29238c = m11;
    }

    public M a() {
        return this.f29238c;
    }

    public M b() {
        return this.f29237b;
    }
}
