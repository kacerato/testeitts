package Xi;

import Bi.InterfaceC2379k;

public class H0 implements InterfaceC2379k {

    public final boolean f29231b;

    public final L f29232c;

    public final jk.i f29233d;

    public final L f29234e;

    public final jk.i f29235f;

    public H0(boolean z10, L l10, L l11) {
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
        jk.k kVar = new jk.k();
        this.f29231b = z10;
        this.f29232c = l10;
        this.f29233d = kVar.a(d10.b(), l10.e()).B();
        this.f29234e = l11;
        this.f29235f = kVar.a(d10.b(), l11.e()).B();
    }

    public L a() {
        return this.f29234e;
    }

    public jk.i b() {
        return this.f29235f;
    }

    public L c() {
        return this.f29232c;
    }

    public jk.i d() {
        return this.f29233d;
    }

    public boolean e() {
        return this.f29231b;
    }
}
