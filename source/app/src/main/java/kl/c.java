package Kl;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Ii.N;
import Ii.O;
import Ii.P;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;
import nl.C14463g;
import oh.C14549x;

public class c extends SignatureSpi {

    public final C14549x f11476a;

    public InterfaceC2392y f11477b;

    public C14463g f11478c;

    public SecureRandom f11479d;

    public static class a extends c {
        public a() {
            super(new N(512), Sh.d.f23351j, new C14463g(new N(256), new N(512)));
        }
    }

    public static class b extends c {
        public b() {
            super(new O(), Sh.d.f23347h, new C14463g(new P(256), new O()));
        }
    }

    public c(InterfaceC2392y interfaceC2392y, C14549x c14549x, C14463g c14463g) {
        this.f11477b = interfaceC2392y;
        this.f11476a = c14549x;
        this.f11478c = c14463g;
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof Kl.a)) {
            throw new InvalidKeyException("unknown private key passed to SPHINCS-256");
        }
        Kl.a aVar = (Kl.a) privateKey;
        if (this.f11476a.A(aVar.b())) {
            InterfaceC2379k a10 = aVar.a();
            this.f11477b.reset();
            this.f11478c.a(true, a10);
        } else {
            throw new InvalidKeyException("SPHINCS-256 signature for tree digest: " + ((Object) aVar.b()));
        }
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof Kl.b)) {
            throw new InvalidKeyException("unknown public key passed to SPHINCS-256");
        }
        Kl.b bVar = (Kl.b) publicKey;
        if (this.f11476a.A(bVar.b())) {
            InterfaceC2379k a10 = bVar.a();
            this.f11477b.reset();
            this.f11478c.a(false, a10);
        } else {
            throw new InvalidKeyException("SPHINCS-256 signature for tree digest: " + ((Object) bVar.b()));
        }
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        byte[] bArr = new byte[this.f11477b.f()];
        this.f11477b.c(bArr, 0);
        try {
            return this.f11478c.b(bArr);
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f11477b.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f11477b.f()];
        this.f11477b.c(bArr2, 0);
        return this.f11478c.d(bArr2, bArr);
    }

    @Override
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f11479d = secureRandom;
        engineInitSign(privateKey);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f11477b.update(bArr, i10, i11);
    }
}
