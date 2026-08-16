package wl;

import Xi.x0;
import bl.C3904e;
import bl.C3905f;
import bl.h;
import hi.h0;
import java.io.ByteArrayOutputStream;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.util.w;

public class C16018e extends Signature {

    public ByteArrayOutputStream f127606a;

    public h f127607b;

    public SecureRandom f127608c;

    public C3904e f127609d;

    public static class a extends C16018e {
        public a() {
            super(new h(), C3904e.f33472d);
        }
    }

    public static class b extends C16018e {
        public b() {
            super(new h(), C3904e.f33473e);
        }
    }

    public static class c extends C16018e {
        public c() throws NoSuchAlgorithmException {
            super(new h(), C3904e.f33474f);
        }
    }

    public static class d extends C16018e {
        public d() {
            super(new h());
        }
    }

    public C16018e(h hVar) {
        super("Dilithium");
        this.f127606a = new ByteArrayOutputStream();
        this.f127607b = hVar;
        this.f127609d = null;
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof C16014a)) {
            throw new InvalidKeyException("unknown private key passed to Dilithium");
        }
        C16014a c16014a = (C16014a) privateKey;
        C3905f a10 = c16014a.a();
        C3904e c3904e = this.f127609d;
        if (c3904e != null) {
            String p10 = w.p(c3904e.b());
            if (!p10.equals(c16014a.getAlgorithm())) {
                throw new InvalidKeyException("signature configured for " + p10);
            }
        }
        SecureRandom secureRandom = this.f127608c;
        if (secureRandom != null) {
            this.f127607b.a(true, new x0(a10, secureRandom));
        } else {
            this.f127607b.a(true, a10);
        }
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof C16015b)) {
            try {
                publicKey = new C16015b(h0.w(publicKey.getEncoded()));
            } catch (Exception e10) {
                throw new InvalidKeyException("unknown public key passed to Dilithium: " + e10.getMessage(), e10);
            }
        }
        C16015b c16015b = (C16015b) publicKey;
        C3904e c3904e = this.f127609d;
        if (c3904e != null) {
            String p10 = w.p(c3904e.b());
            if (!p10.equals(c16015b.getAlgorithm())) {
                throw new InvalidKeyException("signature configured for " + p10);
            }
        }
        this.f127607b.a(false, c16015b.a());
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        try {
            byte[] byteArray = this.f127606a.toByteArray();
            this.f127606a.reset();
            return this.f127607b.b(byteArray);
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f127606a.write(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] byteArray = this.f127606a.toByteArray();
        this.f127606a.reset();
        return this.f127607b.d(byteArray, bArr);
    }

    public C16018e(h hVar, C3904e c3904e) {
        super(w.p(c3904e.b()));
        this.f127606a = new ByteArrayOutputStream();
        this.f127607b = hVar;
        this.f127609d = c3904e;
    }

    @Override
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f127608c = secureRandom;
        engineInitSign(privateKey);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f127606a.write(bArr, i10, i11);
    }
}
