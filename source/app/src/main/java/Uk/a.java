package Uk;

import Xh.C3330e;
import Xh.t;
import android.security.keystore.KeyProperties;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.h0;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.Hashtable;
import ki.r;

public class a extends Sk.e {

    public static Hashtable f26228h;

    public InterfaceC12950f f26229g;

    static {
        Hashtable hashtable = new Hashtable();
        f26228h = hashtable;
        hashtable.put(t.f29017H0, KeyProperties.KEY_ALGORITHM_RSA);
        f26228h.put(r.f95349s6, "DSA");
        f26228h.put(r.f95305I5, KeyProperties.KEY_ALGORITHM_EC);
    }

    public a(Sk.e eVar) {
        super(eVar.n());
        this.f26229g = new C12948d();
    }

    public PublicKey o() throws InvalidKeyException, NoSuchAlgorithmException {
        KeyFactory b10;
        try {
            h0 i10 = i();
            X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(i10.getEncoded());
            try {
                b10 = this.f26229g.b(i10.u().u().J());
            } catch (NoSuchAlgorithmException e10) {
                if (f26228h.get(i10.u().u()) == null) {
                    throw e10;
                }
                b10 = this.f26229g.b((String) f26228h.get(i10.u().u()));
            }
            return b10.generatePublic(x509EncodedKeySpec);
        } catch (IOException unused) {
            throw new InvalidKeyException("error extracting key encoding");
        } catch (NoSuchProviderException e11) {
            throw new NoSuchAlgorithmException("cannot find provider: " + e11.getMessage());
        } catch (InvalidKeySpecException unused2) {
            throw new InvalidKeyException("error decoding public key");
        }
    }

    public a p(String str) {
        this.f26229g = new dk.i(str);
        return this;
    }

    public a q(Provider provider) {
        this.f26229g = new dk.k(provider);
        return this;
    }

    public a(C3330e c3330e) {
        super(c3330e);
        this.f26229g = new C12948d();
    }

    public a(byte[] bArr) throws IOException {
        super(bArr);
        this.f26229g = new C12948d();
    }
}
