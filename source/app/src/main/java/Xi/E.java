package Xi;

import Bi.InterfaceC2379k;

public class E implements InterfaceC2379k {

    public L f29205b;

    public L f29206c;

    public M f29207d;

    public E(L l10, L l11) {
        this(l10, l11, null);
    }

    public L a() {
        return this.f29206c;
    }

    public M b() {
        return this.f29207d;
    }

    public L c() {
        return this.f29205b;
    }

    public E(L l10, L l11, M m10) {
        if (l10 == null) {
            throw new NullPointerException("staticPrivateKey cannot be null");
        }
        if (l11 == null) {
            throw new NullPointerException("ephemeralPrivateKey cannot be null");
        }
        G d10 = l10.d();
        if (!d10.equals(l11.d())) {
            throw new IllegalArgumentException("static and ephemeral private keys have different domain parameters");
        }
        if (m10 == null) {
            m10 = new M(new jk.k().a(d10.b(), l11.e()), d10);
        } else if (!d10.equals(m10.d())) {
            throw new IllegalArgumentException("ephemeral public key has different domain parameters");
        }
        this.f29205b = l10;
        this.f29206c = l11;
        this.f29207d = m10;
    }
}
