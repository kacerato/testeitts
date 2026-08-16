package qi;

import Xh.v;
import fi.C13228d;
import hi.C13481E;
import java.security.PrivateKey;
import javax.security.auth.x500.X500Principal;
import oi.C14570p;

public class C15112f extends C14570p {
    public C15112f(PrivateKey privateKey, C13228d c13228d) {
        this(privateKey, new C13481E(c13228d));
    }

    public C15112f(PrivateKey privateKey, C13481E c13481e) {
        super(v.v(privateKey.getEncoded()), c13481e);
    }

    public C15112f(PrivateKey privateKey, X500Principal x500Principal) {
        this(privateKey, C13228d.x(x500Principal.getEncoded()));
    }
}
