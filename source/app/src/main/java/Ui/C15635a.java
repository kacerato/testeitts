package ui;

import Qk.p;
import hi.h0;
import java.security.PublicKey;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.cert.ocsp.OCSPException;
import ti.C15449b;

public class C15635a extends C15449b {
    public C15635a(PublicKey publicKey, p pVar) throws OCSPException {
        super(h0.w(publicKey.getEncoded()), pVar);
    }

    public C15635a(X500Principal x500Principal) {
        super(new C15637c(x500Principal));
    }
}
