package qi;

import fi.C13228d;
import hi.C13481E;
import hi.h0;
import java.math.BigInteger;
import java.security.PublicKey;
import javax.security.auth.x500.X500Principal;
import oi.C14562h;

public class C15110d extends C14562h {
    public C15110d(BigInteger bigInteger) {
        super(bigInteger);
    }

    public C15110d u(X500Principal x500Principal) {
        if (x500Principal != null) {
            h(new C13481E(C13228d.x(x500Principal.getEncoded())));
        }
        return this;
    }

    public C15110d v(X500Principal x500Principal) {
        if (x500Principal != null) {
            i(C13228d.x(x500Principal.getEncoded()));
        }
        return this;
    }

    public C15110d w(PublicKey publicKey) {
        o(h0.w(publicKey.getEncoded()));
        return this;
    }

    public C15110d x(X500Principal x500Principal) {
        if (x500Principal != null) {
            s(C13228d.x(x500Principal.getEncoded()));
        }
        return this;
    }
}
