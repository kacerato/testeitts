package Pk;

import Qk.F;
import Xh.v;
import java.security.PrivateKey;
import org.bouncycastle.openssl.k;
import org.bouncycastle.util.io.pem.PemGenerationException;

public class d extends k {
    public d(PrivateKey privateKey, F f10) throws PemGenerationException {
        super(v.v(privateKey.getEncoded()), f10);
    }
}
