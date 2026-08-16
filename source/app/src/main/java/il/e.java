package Il;

import Xi.x0;
import hi.h0;
import java.io.ByteArrayOutputStream;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import ll.h;
import ll.i;
import ll.l;
import org.bouncycastle.util.w;

public class e extends Signature {

    public ByteArrayOutputStream f10063a;

    public l f10064b;

    public SecureRandom f10065c;

    public h f10066d;

    public static class a extends e {
        public a() {
            super(new l());
        }
    }

    public static class b extends e {
        public b() {
            super(new l(), h.f96579l);
        }
    }

    public static class c extends e {
        public c() {
            super(new l(), h.f96578k);
        }
    }

    public static class d extends e {
        public d() {
            super(new l(), h.f96580m);
        }
    }

    public static class C0241e extends e {
        public C0241e() {
            super(new l(), h.f96582o);
        }
    }

    public static class f extends e {
        public f() {
            super(new l(), h.f96581n);
        }
    }

    public static class g extends e {
        public g() {
            super(new l(), h.f96583p);
        }
    }

    public e(l lVar) {
        super("RAINBOW");
        this.f10063a = new ByteArrayOutputStream();
        this.f10064b = lVar;
        this.f10066d = null;
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof Il.a)) {
            throw new InvalidKeyException("unknown private key passed to Rainbow");
        }
        Il.a aVar = (Il.a) privateKey;
        i a10 = aVar.a();
        h hVar = this.f10066d;
        if (hVar != null) {
            String p10 = w.p(hVar.g());
            if (!p10.equals(aVar.getAlgorithm())) {
                throw new InvalidKeyException("signature configured for " + p10);
            }
        }
        SecureRandom secureRandom = this.f10065c;
        if (secureRandom != null) {
            this.f10064b.a(true, new x0(a10, secureRandom));
        } else {
            this.f10064b.a(true, a10);
        }
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof Il.b)) {
            try {
                publicKey = new Il.b(h0.w(publicKey.getEncoded()));
            } catch (Exception e10) {
                throw new InvalidKeyException("unknown public key passed to Rainbow: " + e10.getMessage(), e10);
            }
        }
        Il.b bVar = (Il.b) publicKey;
        h hVar = this.f10066d;
        if (hVar != null) {
            String p10 = w.p(hVar.g());
            if (!p10.equals(bVar.getAlgorithm())) {
                throw new InvalidKeyException("signature configured for " + p10);
            }
        }
        this.f10064b.a(false, bVar.a());
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        try {
            byte[] byteArray = this.f10063a.toByteArray();
            this.f10063a.reset();
            return this.f10064b.b(byteArray);
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f10063a.write(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] byteArray = this.f10063a.toByteArray();
        this.f10063a.reset();
        return this.f10064b.d(byteArray, bArr);
    }

    public e(l lVar, h hVar) {
        super(w.p(hVar.g()));
        this.f10066d = hVar;
        this.f10063a = new ByteArrayOutputStream();
        this.f10064b = lVar;
    }

    @Override
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f10065c = secureRandom;
        engineInitSign(privateKey);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f10063a.write(bArr, i10, i11);
    }
}
