package qi;

import dk.C12948d;
import dk.k;
import hi.C13486b;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.Provider;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import oi.InterfaceC14574t;
import org.bouncycastle.cert.crmf.CRMFException;

public class i implements InterfaceC14574t {

    public MessageDigest f108203a;

    public Mac f108204b;

    public C15107a f108205c = new C15107a(new C12948d());

    @Override
    public byte[] a(byte[] bArr) {
        return this.f108203a.digest(bArr);
    }

    @Override
    public byte[] b(byte[] bArr, byte[] bArr2) throws CRMFException {
        try {
            this.f108204b.init(new SecretKeySpec(bArr, this.f108204b.getAlgorithm()));
            return this.f108204b.doFinal(bArr2);
        } catch (GeneralSecurityException e10) {
            throw new CRMFException("failure in setup: " + e10.getMessage(), e10);
        }
    }

    @Override
    public void c(C13486b c13486b, C13486b c13486b2) throws CRMFException {
        this.f108203a = this.f108205c.e(c13486b.u());
        this.f108204b = this.f108205c.h(c13486b2.u());
    }

    public i d(String str) {
        this.f108205c = new C15107a(new dk.i(str));
        return this;
    }

    public i e(Provider provider) {
        this.f108205c = new C15107a(new k(provider));
        return this;
    }
}
