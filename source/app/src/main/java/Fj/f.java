package Fj;

import Dj.l;
import Ek.C2493d;
import Ek.K;
import dk.C12948d;
import dk.InterfaceC12950f;
import java.security.Provider;
import java.security.interfaces.ECPublicKey;

public class f extends l {

    public InterfaceC12950f f6985g;

    public f(Gj.d dVar, K.a aVar) {
        this(dVar, aVar, new C12948d());
    }

    public Dj.j j(C2493d c2493d, ECPublicKey eCPublicKey) {
        return k(c2493d, eCPublicKey, null);
    }

    public Dj.j k(C2493d c2493d, ECPublicKey eCPublicKey, ECPublicKey eCPublicKey2) {
        return super.i(c2493d, new h(eCPublicKey, this.f6985g), eCPublicKey2 != null ? new k(eCPublicKey2, this.f6985g) : null);
    }

    public f l(String str) {
        this.f6985g = new dk.i(str);
        return this;
    }

    public f m(Provider provider) {
        this.f6985g = new dk.k(provider);
        return this;
    }

    public f(Gj.d dVar, K.a aVar, InterfaceC12950f interfaceC12950f) {
        super(dVar, aVar);
        this.f6985g = interfaceC12950f;
    }
}
