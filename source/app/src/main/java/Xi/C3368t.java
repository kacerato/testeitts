package Xi;

import Bi.InterfaceC2379k;

public class C3368t implements InterfaceC2379k {

    public r f29417b;

    public r f29418c;

    public C3366s f29419d;

    public C3368t(r rVar, r rVar2) {
        this(rVar, rVar2, null);
    }

    public r a() {
        return this.f29418c;
    }

    public C3366s b() {
        return this.f29419d;
    }

    public r c() {
        return this.f29417b;
    }

    public C3368t(r rVar, r rVar2, C3366s c3366s) {
        if (rVar == null) {
            throw new NullPointerException("staticPrivateKey cannot be null");
        }
        if (rVar2 == null) {
            throw new NullPointerException("ephemeralPrivateKey cannot be null");
        }
        C3363q d10 = rVar.d();
        if (!d10.equals(rVar2.d())) {
            throw new IllegalArgumentException("static and ephemeral private keys have different domain parameters");
        }
        if (c3366s == null) {
            c3366s = new C3366s(d10.b().modPow(rVar2.e(), d10.f()), d10);
        } else if (!d10.equals(c3366s.d())) {
            throw new IllegalArgumentException("ephemeral public key has different domain parameters");
        }
        this.f29417b = rVar;
        this.f29418c = rVar2;
        this.f29419d = c3366s;
    }
}
