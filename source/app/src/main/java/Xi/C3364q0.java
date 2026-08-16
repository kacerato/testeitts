package Xi;

import Bi.InterfaceC2379k;

public class C3364q0 implements InterfaceC2379k {

    public L f29405b;

    public L f29406c;

    public M f29407d;

    public C3364q0(L l10, L l11) {
        this(l10, l11, null);
    }

    public L a() {
        return this.f29406c;
    }

    public M b() {
        return this.f29407d;
    }

    public L c() {
        return this.f29405b;
    }

    public C3364q0(L l10, L l11, M m10) {
        if (l10 == null) {
            throw new NullPointerException("staticPrivateKey cannot be null");
        }
        if (l11 == null) {
            throw new NullPointerException("ephemeralPrivateKey cannot be null");
        }
        G d10 = l10.d();
        if (!d10.equals(l11.d())) {
            throw new IllegalArgumentException("Static and ephemeral private keys have different domain parameters");
        }
        if (m10 == null) {
            m10 = new M(new jk.k().a(d10.b(), l11.e()), d10);
        } else if (!d10.equals(m10.d())) {
            throw new IllegalArgumentException("Ephemeral public key has different domain parameters");
        }
        this.f29405b = l10;
        this.f29406c = l11;
        this.f29407d = m10;
    }
}
