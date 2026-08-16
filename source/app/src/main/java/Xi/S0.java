package Xi;

import Bi.InterfaceC2379k;

public class S0 implements InterfaceC2379k {

    public C3335c f29277b;

    public C3335c f29278c;

    public C3335c f29279d;

    public S0(C3335c c3335c, C3335c c3335c2) {
        this(c3335c, c3335c2, null);
    }

    public C3335c a() {
        return this.f29278c;
    }

    public C3335c b() {
        return this.f29279d;
    }

    public C3335c c() {
        return this.f29277b;
    }

    public S0(C3335c c3335c, C3335c c3335c2, C3335c c3335c3) {
        if (c3335c == null) {
            throw new NullPointerException("staticPrivateKey cannot be null");
        }
        boolean z10 = c3335c instanceof Q0;
        if (!z10 && !(c3335c instanceof N0)) {
            throw new IllegalArgumentException("only X25519 and X448 paramaters can be used");
        }
        if (c3335c2 == null) {
            throw new NullPointerException("ephemeralPrivateKey cannot be null");
        }
        if (!c3335c.getClass().isAssignableFrom(c3335c2.getClass())) {
            throw new IllegalArgumentException("static and ephemeral private keys have different domain parameters");
        }
        if (c3335c3 == null) {
            c3335c3 = c3335c2 instanceof Q0 ? ((Q0) c3335c2).e() : ((N0) c3335c2).e();
        } else {
            if ((c3335c3 instanceof R0) && !z10) {
                throw new IllegalArgumentException("ephemeral public key has different domain parameters");
            }
            if ((c3335c3 instanceof O0) && !(c3335c instanceof N0)) {
                throw new IllegalArgumentException("ephemeral public key has different domain parameters");
            }
        }
        this.f29277b = c3335c;
        this.f29278c = c3335c2;
        this.f29279d = c3335c3;
    }
}
