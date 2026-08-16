package Ll;

import Bi.InterfaceC2392y;
import Ii.B;
import Xi.x0;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;
import ol.C14612u;
import ol.C14614w;

public class e extends SignatureSpi {

    public final InterfaceC2392y f14447a;

    public final C14614w f14448b;

    public static class a extends e {
        public a() {
            super(new B(), new C14614w());
        }
    }

    public e(InterfaceC2392y interfaceC2392y, C14614w c14614w) {
        this.f14447a = interfaceC2392y;
        this.f14448b = c14614w;
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof Ll.a)) {
            throw new InvalidKeyException("unknown private key passed to SPHINCS+");
        }
        C14612u a10 = ((Ll.a) privateKey).a();
        SecureRandom secureRandom = this.appRandom;
        if (secureRandom != null) {
            this.f14448b.a(true, new x0(a10, secureRandom));
        } else {
            this.f14448b.a(true, a10);
        }
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof b)) {
            throw new InvalidKeyException("unknown public key passed to SPHINCS+");
        }
        this.f14448b.a(false, ((b) publicKey).a());
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        byte[] bArr = new byte[this.f14447a.f()];
        this.f14447a.c(bArr, 0);
        try {
            return this.f14448b.b(bArr);
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f14447a.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f14447a.f()];
        this.f14447a.c(bArr2, 0);
        return this.f14448b.d(bArr2, bArr);
    }

    @Override
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.appRandom = secureRandom;
        engineInitSign(privateKey);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f14447a.update(bArr, i10, i11);
    }
}
