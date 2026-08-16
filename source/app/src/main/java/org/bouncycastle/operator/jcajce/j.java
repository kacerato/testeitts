package org.bouncycastle.operator.jcajce;

import Qk.AbstractC3011d;
import Xh.t;
import ck.r;
import dk.C12948d;
import hi.C13486b;
import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import javax.crypto.Cipher;
import ki.r;
import org.bouncycastle.crypto.util.f;
import org.bouncycastle.operator.OperatorException;
import uh.C15633y;
import uh.T;

public class j extends AbstractC3011d {

    public final String f101974b;

    public final int f101975c;

    public final byte[] f101976d;

    public final byte[] f101977e;

    public OperatorHelper f101978f;

    public PublicKey f101979g;

    public SecureRandom f101980h;

    public j(PublicKey publicKey, String str, int i10, byte[] bArr, byte[] bArr2) {
        super(new C13486b(t.f29043P2, new C15633y(new C13486b(Nh.a.f16379h, new T(new C13486b(r.f95320P6, new C13486b(Sh.d.f23337c)), (i10 + 7) / 8)), l.c(str, i10))));
        this.f101978f = new OperatorHelper(new C12948d());
        this.f101979g = publicKey;
        this.f101974b = str;
        this.f101975c = i10;
        this.f101976d = org.bouncycastle.util.a.p(bArr);
        this.f101977e = org.bouncycastle.util.a.p(bArr2);
    }

    @Override
    public byte[] b(Qk.r rVar) throws OperatorException {
        Cipher d10 = this.f101978f.d(a().u(), new HashMap());
        try {
            d10.init(3, this.f101979g, new r.a(this.f101974b, this.f101975c, new f.b(l.c(this.f101974b, this.f101975c), this.f101976d, this.f101977e).a().a()).a(), this.f101980h);
            return d10.wrap(m.a(rVar));
        } catch (Exception e10) {
            throw new OperatorException("Unable to wrap contents key: " + e10.getMessage(), e10);
        }
    }

    public j c(String str) {
        this.f101978f = new OperatorHelper(new dk.i(str));
        return this;
    }

    public j d(Provider provider) {
        this.f101978f = new OperatorHelper(new dk.k(provider));
        return this;
    }

    public j e(SecureRandom secureRandom) {
        this.f101980h = secureRandom;
        return this;
    }

    public j(X509Certificate x509Certificate, String str, int i10, byte[] bArr, byte[] bArr2) {
        this(x509Certificate.getPublicKey(), str, i10, bArr, bArr2);
    }
}
