package Xi;

import Bi.InterfaceC2379k;

public class T0 implements InterfaceC2379k {

    public C3335c f29282b;

    public C3335c f29283c;

    public T0(C3335c c3335c, C3335c c3335c2) {
        if (c3335c == null) {
            throw new NullPointerException("staticPublicKey cannot be null");
        }
        if (!(c3335c instanceof R0) && !(c3335c instanceof O0)) {
            throw new IllegalArgumentException("only X25519 and X448 paramaters can be used");
        }
        if (c3335c2 == null) {
            throw new NullPointerException("ephemeralPublicKey cannot be null");
        }
        if (!c3335c.getClass().isAssignableFrom(c3335c2.getClass())) {
            throw new IllegalArgumentException("static and ephemeral public keys have different domain parameters");
        }
        this.f29282b = c3335c;
        this.f29283c = c3335c2;
    }

    public C3335c a() {
        return this.f29283c;
    }

    public C3335c b() {
        return this.f29282b;
    }
}
