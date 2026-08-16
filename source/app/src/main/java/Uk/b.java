package Uk;

import Qk.InterfaceC3013f;
import fi.C13228d;
import hi.h0;
import java.security.PublicKey;
import javax.security.auth.x500.X500Principal;

public class b extends Sk.f {
    public b(C13228d c13228d, PublicKey publicKey) {
        super(c13228d, h0.w(publicKey.getEncoded()));
    }

    public Sk.e h(InterfaceC3013f interfaceC3013f, PublicKey publicKey, InterfaceC3013f interfaceC3013f2) {
        return super.d(interfaceC3013f, h0.w(publicKey.getEncoded()), interfaceC3013f2);
    }

    public b(X500Principal x500Principal, PublicKey publicKey) {
        super(C13228d.x(x500Principal.getEncoded()), h0.w(publicKey.getEncoded()));
    }
}
