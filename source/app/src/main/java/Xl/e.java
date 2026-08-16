package xl;

import Xi.x0;
import dl.C12963m;
import dl.C12964n;
import dl.r;
import hi.h0;
import java.io.ByteArrayOutputStream;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.util.w;

public class e extends Signature {

    public ByteArrayOutputStream f129857a;

    public r f129858b;

    public SecureRandom f129859c;

    public C12963m f129860d;

    public static class a extends e {
        public a() {
            super(new r());
        }
    }

    public static class b extends e {
        public b() {
            super(new r(), C12963m.f84813f);
        }
    }

    public static class c extends e {
        public c() {
            super(new r(), C12963m.f84812e);
        }
    }

    public e(r rVar) {
        super("FALCON");
        this.f129857a = new ByteArrayOutputStream();
        this.f129858b = rVar;
        this.f129860d = null;
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof C16121a)) {
            throw new InvalidKeyException("unknown private key passed to Falcon");
        }
        C16121a c16121a = (C16121a) privateKey;
        C12964n a10 = c16121a.a();
        C12963m c12963m = this.f129860d;
        if (c12963m != null) {
            String p10 = w.p(c12963m.b());
            if (!p10.equals(c16121a.getAlgorithm())) {
                throw new InvalidKeyException("signature configured for " + p10);
            }
        }
        SecureRandom secureRandom = this.f129859c;
        if (secureRandom != null) {
            this.f129858b.a(true, new x0(a10, secureRandom));
        } else {
            this.f129858b.a(true, a10);
        }
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof C16122b)) {
            try {
                publicKey = new C16122b(h0.w(publicKey.getEncoded()));
            } catch (Exception e10) {
                throw new InvalidKeyException("unknown public key passed to Falcon: " + e10.getMessage(), e10);
            }
        }
        C16122b c16122b = (C16122b) publicKey;
        C12963m c12963m = this.f129860d;
        if (c12963m != null) {
            String p10 = w.p(c12963m.b());
            if (!p10.equals(c16122b.getAlgorithm())) {
                throw new InvalidKeyException("signature configured for " + p10);
            }
        }
        this.f129858b.a(false, c16122b.a());
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        try {
            byte[] byteArray = this.f129857a.toByteArray();
            this.f129857a.reset();
            return this.f129858b.b(byteArray);
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f129857a.write(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] byteArray = this.f129857a.toByteArray();
        this.f129857a.reset();
        return this.f129858b.d(byteArray, bArr);
    }

    public e(r rVar, C12963m c12963m) {
        super(w.p(c12963m.b()));
        this.f129860d = c12963m;
        this.f129857a = new ByteArrayOutputStream();
        this.f129858b = rVar;
    }

    @Override
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f129859c = secureRandom;
        engineInitSign(privateKey);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f129857a.write(bArr, i10, i11);
    }
}
