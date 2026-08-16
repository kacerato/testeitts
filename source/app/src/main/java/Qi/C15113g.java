package qi;

import Qk.t;
import dk.C12948d;
import dk.k;
import hi.C13486b;
import java.io.InputStream;
import java.security.Key;
import java.security.PrivateKey;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import oi.InterfaceC14577w;
import org.bouncycastle.cert.crmf.CRMFException;
import org.bouncycastle.operator.OperatorException;

public class C15113g implements InterfaceC14577w {

    public PrivateKey f108187a;

    public C15107a f108188b = new C15107a(new C12948d());

    public Provider f108189c = null;

    public String f108190d = null;

    public class a implements t {

        public final C13486b f108191a;

        public final Cipher f108192b;

        public a(C13486b c13486b, Cipher cipher) {
            this.f108191a = c13486b;
            this.f108192b = cipher;
        }

        @Override
        public C13486b a() {
            return this.f108191a;
        }

        @Override
        public InputStream d(InputStream inputStream) {
            return new Jj.a(inputStream, this.f108192b);
        }
    }

    public C15113g(PrivateKey privateKey) {
        this.f108187a = privateKey;
    }

    @Override
    public t a(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CRMFException {
        return new a(c13486b2, this.f108188b.d(b(c13486b, c13486b2, bArr), c13486b2));
    }

    public final Key b(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CRMFException {
        try {
            org.bouncycastle.operator.jcajce.e eVar = new org.bouncycastle.operator.jcajce.e(c13486b, this.f108187a);
            Provider provider = this.f108189c;
            if (provider != null) {
                eVar.f(provider);
            }
            String str = this.f108190d;
            if (str != null) {
                eVar.e(str);
            }
            return new SecretKeySpec((byte[]) eVar.b(c13486b2, bArr).b(), c13486b2.u().J());
        } catch (OperatorException e10) {
            throw new CRMFException("key invalid in message: " + e10.getMessage(), e10);
        }
    }

    public C15113g c(String str) {
        this.f108188b = new C15107a(new dk.i(str));
        this.f108189c = null;
        this.f108190d = str;
        return this;
    }

    public C15113g d(Provider provider) {
        this.f108188b = new C15107a(new k(provider));
        this.f108189c = provider;
        this.f108190d = null;
        return this;
    }
}
