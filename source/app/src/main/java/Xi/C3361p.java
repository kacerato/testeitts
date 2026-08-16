package Xi;

import Bi.InterfaceC2379k;

public class C3361p implements InterfaceC2379k {

    public C3366s f29394b;

    public C3366s f29395c;

    public C3361p(C3366s c3366s, C3366s c3366s2) {
        if (c3366s == null) {
            throw new NullPointerException("staticPublicKey cannot be null");
        }
        if (c3366s2 == null) {
            throw new NullPointerException("ephemeralPublicKey cannot be null");
        }
        if (!c3366s.d().equals(c3366s2.d())) {
            throw new IllegalArgumentException("Static and ephemeral public keys have different domain parameters");
        }
        this.f29394b = c3366s;
        this.f29395c = c3366s2;
    }

    public C3366s a() {
        return this.f29395c;
    }

    public C3366s b() {
        return this.f29394b;
    }
}
