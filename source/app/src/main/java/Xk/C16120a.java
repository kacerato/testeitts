package xk;

import Rh.b;
import dk.C12948d;
import dk.InterfaceC12950f;
import dk.i;
import dk.k;
import hi.h0;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import wk.C16013a;

public class C16120a extends C16013a {

    public InterfaceC12950f f129840c;

    public C16120a(b bVar, InterfaceC12950f interfaceC12950f) {
        super(bVar);
        new C12948d();
        this.f129840c = interfaceC12950f;
    }

    public PublicKey j() throws NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException {
        try {
            h0 x10 = this.f127589b.v().x();
            return this.f129840c.b(x10.u().u().J()).generatePublic(new X509EncodedKeySpec(x10.getEncoded()));
        } catch (Exception unused) {
            throw new InvalidKeyException("error encoding public key");
        }
    }

    public C16120a k(String str) {
        return new C16120a(this.f127589b, new i(str));
    }

    public C16120a l(Provider provider) {
        return new C16120a(this.f127589b, new k(provider));
    }

    public C16120a(byte[] bArr) {
        super(bArr);
        this.f129840c = new C12948d();
    }
}
