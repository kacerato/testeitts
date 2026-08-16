package Xi;

import Bi.InterfaceC2379k;

public class C3359o implements InterfaceC2379k {

    public r f29390b;

    public r f29391c;

    public C3366s f29392d;

    public C3359o(r rVar, r rVar2) {
        this(rVar, rVar2, null);
    }

    public r a() {
        return this.f29391c;
    }

    public C3366s b() {
        return this.f29392d;
    }

    public r c() {
        return this.f29390b;
    }

    public C3359o(r rVar, r rVar2, C3366s c3366s) {
        if (rVar == null) {
            throw new NullPointerException("staticPrivateKey cannot be null");
        }
        if (rVar2 == null) {
            throw new NullPointerException("ephemeralPrivateKey cannot be null");
        }
        C3363q d10 = rVar.d();
        if (!d10.equals(rVar2.d())) {
            throw new IllegalArgumentException("Static and ephemeral private keys have different domain parameters");
        }
        if (c3366s == null) {
            c3366s = new C3366s(d10.b().modPow(rVar2.e(), d10.f()), d10);
        } else if (!d10.equals(c3366s.d())) {
            throw new IllegalArgumentException("Ephemeral public key has different domain parameters");
        }
        this.f29390b = rVar;
        this.f29391c = rVar2;
        this.f29392d = c3366s;
    }
}
