package Cl;

import Bi.InterfaceC2392y;
import Ii.B;
import Yk.g;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.pqc.crypto.ExhaustedPrivateKeyException;
import org.bouncycastle.pqc.crypto.lms.o;
import org.bouncycastle.pqc.crypto.lms.p;
import org.bouncycastle.pqc.crypto.lms.q;

public class f extends Signature {

    public InterfaceC2392y f4489a;

    public g f4490b;

    public SecureRandom f4491c;

    public p f4492d;

    public q f4493e;

    public static class a extends f {
        public a() {
            super("LMS", new B());
        }
    }

    public f(String str) {
        super(str);
    }

    public final InterfaceC2392y a() throws SignatureException {
        try {
            return this.f4492d.T0();
        } catch (ExhaustedPrivateKeyException e10) {
            throw new SignatureException(e10.getMessage(), e10);
        }
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof Cl.a)) {
            throw new InvalidKeyException("unknown private key passed to LMS");
        }
        p pVar = (p) ((Cl.a) privateKey).a();
        this.f4492d = pVar;
        if (pVar.S0() == 0) {
            throw new InvalidKeyException("private key exhausted");
        }
        this.f4489a = null;
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof b)) {
            throw new InvalidKeyException("unknown public key passed to LMS");
        }
        B b10 = new B();
        this.f4489a = b10;
        b10.reset();
        this.f4493e = (q) ((b) publicKey).a();
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        if (this.f4489a == null) {
            this.f4489a = a();
        }
        try {
            byte[] U02 = this.f4492d.U0((o) this.f4489a);
            this.f4489a = null;
            return U02;
        } catch (Exception e10) {
            if (e10 instanceof IllegalStateException) {
                throw new SignatureException(e10.getMessage(), e10);
            }
            throw new SignatureException(e10.toString(), e10);
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        if (this.f4489a == null) {
            this.f4489a = a();
        }
        this.f4489a.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        o b10 = this.f4493e.b(bArr);
        byte[] a10 = c.a(this.f4489a);
        b10.update(a10, 0, a10.length);
        return this.f4493e.a(b10);
    }

    public f(String str, InterfaceC2392y interfaceC2392y) {
        super(str);
        this.f4489a = interfaceC2392y;
    }

    @Override
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f4491c = secureRandom;
        engineInitSign(privateKey);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        if (this.f4489a == null) {
            this.f4489a = a();
        }
        this.f4489a.update(bArr, i10, i11);
    }
}
