package ui;

import Qk.p;
import fi.C13228d;
import hi.h0;
import java.security.PublicKey;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.cert.ocsp.OCSPException;
import ti.C15459l;

public class C15637c extends C15459l {
    public C15637c(PublicKey publicKey, p pVar) throws OCSPException {
        super(h0.w(publicKey.getEncoded()), pVar);
    }

    public C15637c(X500Principal x500Principal) {
        super(C13228d.x(x500Principal.getEncoded()));
    }
}
