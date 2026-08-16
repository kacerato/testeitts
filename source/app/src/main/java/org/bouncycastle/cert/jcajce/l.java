package org.bouncycastle.cert.jcajce;

import fi.C13228d;
import hi.h0;
import java.math.BigInteger;
import java.security.PublicKey;
import java.util.Date;
import javax.security.auth.x500.X500Principal;
import li.C14149k;

public class l extends C14149k {
    public l(C13228d c13228d, BigInteger bigInteger, Date date, Date date2, C13228d c13228d2, PublicKey publicKey) {
        super(c13228d, bigInteger, date, date2, c13228d2, h0.w(publicKey.getEncoded()));
    }

    public l(X500Principal x500Principal, BigInteger bigInteger, Date date, Date date2, X500Principal x500Principal2, PublicKey publicKey) {
        super(C13228d.x(x500Principal.getEncoded()), bigInteger, date, date2, C13228d.x(x500Principal2.getEncoded()), h0.w(publicKey.getEncoded()));
    }
}
