package Hl;

import Bi.InterfaceC2392y;
import Ii.B;
import Ii.N;
import Ii.O;
import Ii.Q;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import kl.m;
import kl.n;
import kl.o;

public class e extends Signature {

    public SecureRandom f8642a;

    public InterfaceC2392y f8643b;

    public o f8644c;

    public static class a extends e {
        public a() {
            super(new B(), new o());
        }
    }

    public static class b extends e {
        public b() {
            super(new N(512), new o());
        }
    }

    public static class c extends e {
        public c() {
            super(new O(), new o());
        }
    }

    public static class d extends e {
        public d() {
            super(new Q(256), new o());
        }
    }

    public e(InterfaceC2392y interfaceC2392y, o oVar) {
        super("Picnic");
        this.f8643b = interfaceC2392y;
        this.f8644c = oVar;
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof Hl.a)) {
            throw new InvalidKeyException("unknown private key passed to Picnic");
        }
        m a10 = ((Hl.a) privateKey).a();
        this.f8643b.reset();
        this.f8644c.a(true, a10);
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof Hl.b)) {
            throw new InvalidKeyException("unknown public key passed to Picnic");
        }
        n a10 = ((Hl.b) publicKey).a();
        this.f8643b.reset();
        this.f8644c.a(false, a10);
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        byte[] bArr = new byte[this.f8643b.f()];
        this.f8643b.c(bArr, 0);
        try {
            return this.f8644c.b(bArr);
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f8643b.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f8643b.f()];
        this.f8643b.c(bArr2, 0);
        return this.f8644c.d(bArr2, bArr);
    }

    @Override
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f8642a = secureRandom;
        engineInitSign(privateKey);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f8643b.update(bArr, i10, i11);
    }
}
