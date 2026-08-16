package vl;

import Bi.P;
import Bi.Z;
import Ml.g;
import Xi.C3360o0;
import al.C3675e;
import al.C3676f;
import al.j;
import ck.q;
import ck.r;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.DestroyFailedException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.util.h;
import org.bouncycastle.util.w;

public class C15862c extends CipherSpi {

    public final String f121692a;

    public C3676f f121693b;

    public r f121694c;

    public C15861b f121695d;

    public C15860a f121696e;

    public AlgorithmParameters f121697f;

    public j f121698g;

    public static class a extends C15862c {
        public a() throws NoSuchAlgorithmException {
            super("CMCE");
        }
    }

    public static class b extends C15862c {
        public b() throws NoSuchAlgorithmException {
            super(j.f32371n);
        }
    }

    public static class C2076c extends C15862c {
        public C2076c() throws NoSuchAlgorithmException {
            super(j.f32373p);
        }
    }

    public static class d extends C15862c {
        public d() throws NoSuchAlgorithmException {
            super(j.f32375r);
        }
    }

    public static class e extends C15862c {
        public e() throws NoSuchAlgorithmException {
            super(j.f32377t);
        }
    }

    public static class f extends C15862c {
        public f() throws NoSuchAlgorithmException {
            super(j.f32379v);
        }
    }

    public C15862c(j jVar) {
        this.f121698g = jVar;
        this.f121692a = w.p(jVar.e());
    }

    @Override
    public int engineDoFinal(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override
    public int engineGetBlockSize() {
        return 0;
    }

    @Override
    public byte[] engineGetIV() {
        return null;
    }

    @Override
    public int engineGetKeySize(Key key) {
        return 2048;
    }

    @Override
    public int engineGetOutputSize(int i10) {
        return -1;
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        if (this.f121697f == null) {
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(this.f121692a, "BCPQC");
                this.f121697f = algorithmParameters;
                algorithmParameters.init(this.f121694c);
            } catch (Exception e10) {
                throw h.b(e10.toString(), e10);
            }
        }
        return this.f121697f;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec;
        if (algorithmParameters != null) {
            try {
                parameterSpec = algorithmParameters.getParameterSpec(q.class);
            } catch (Exception unused) {
                throw new InvalidAlgorithmParameterException("can't handle parameter " + algorithmParameters.toString());
            }
        } else {
            parameterSpec = null;
        }
        engineInit(i10, key, parameterSpec, secureRandom);
    }

    @Override
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        throw new NoSuchAlgorithmException("Cannot support mode " + str);
    }

    @Override
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        throw new NoSuchPaddingException("Padding " + str + " unknown");
    }

    @Override
    public Key engineUnwrap(byte[] bArr, String str, int i10) throws InvalidKeyException, NoSuchAlgorithmException {
        if (i10 != 3) {
            throw new InvalidKeyException("only SECRET_KEY supported");
        }
        try {
            C3675e c3675e = new C3675e(this.f121696e.a());
            byte[] b10 = c3675e.b(org.bouncycastle.util.a.X(bArr, 0, c3675e.a()));
            Z d10 = g.d(this.f121694c.b());
            C3360o0 c3360o0 = new C3360o0(b10);
            org.bouncycastle.util.a.n(b10);
            d10.a(false, c3360o0);
            byte[] X10 = org.bouncycastle.util.a.X(bArr, c3675e.a(), bArr.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec(d10.d(X10, 0, X10.length), str);
            org.bouncycastle.util.a.n(c3360o0.b());
            return secretKeySpec;
        } catch (IllegalArgumentException e10) {
            throw new NoSuchAlgorithmException("unable to extract KTS secret: " + e10.getMessage());
        } catch (InvalidCipherTextException e11) {
            throw new InvalidKeyException("unable to extract KTS secret: " + e11.getMessage());
        }
    }

    @Override
    public int engineUpdate(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override
    public byte[] engineWrap(Key key) throws IllegalBlockSizeException, InvalidKeyException {
        if (key.getEncoded() == null) {
            throw new InvalidKeyException("Cannot wrap key, null encoding.");
        }
        try {
            P a10 = this.f121693b.a(this.f121695d.a());
            Z d10 = g.d(this.f121694c.b());
            d10.a(true, new C3360o0(a10.f()));
            byte[] e10 = a10.e();
            a10.destroy();
            byte[] encoded = key.getEncoded();
            byte[] B10 = org.bouncycastle.util.a.B(e10, d10.c(encoded, 0, encoded.length));
            org.bouncycastle.util.a.n(encoded);
            return B10;
        } catch (IllegalArgumentException e11) {
            throw new IllegalBlockSizeException("unable to generate KTS secret: " + e11.getMessage());
        } catch (DestroyFailedException e12) {
            throw new IllegalBlockSizeException("unable to destroy interim values: " + e12.getMessage());
        }
    }

    public C15862c(String str) {
        this.f121692a = str;
    }

    @Override
    public byte[] engineDoFinal(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override
    public void engineInit(int i10, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i10, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e10) {
            throw h.a(e10.getMessage(), e10);
        }
    }

    @Override
    public byte[] engineUpdate(byte[] bArr, int i10, int i11) {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        r rVar;
        if (algorithmParameterSpec == null) {
            rVar = new q("AES-KWP");
        } else {
            if (!(algorithmParameterSpec instanceof r)) {
                throw new InvalidAlgorithmParameterException(this.f121692a + " can only accept KTSParameterSpec");
            }
            rVar = (r) algorithmParameterSpec;
        }
        this.f121694c = rVar;
        if (i10 == 3) {
            if (!(key instanceof C15861b)) {
                throw new InvalidKeyException("Only a " + this.f121692a + " public key can be used for wrapping");
            }
            this.f121695d = (C15861b) key;
            this.f121693b = new C3676f(Bi.r.i(secureRandom));
        } else {
            if (i10 != 4) {
                throw new InvalidParameterException("Cipher only valid for wrapping/unwrapping");
            }
            if (!(key instanceof C15860a)) {
                throw new InvalidKeyException("Only a " + this.f121692a + " private key can be used for unwrapping");
            }
            this.f121696e = (C15860a) key;
        }
        j jVar = this.f121698g;
        if (jVar != null) {
            String p10 = w.p(jVar.e());
            if (p10.equals(key.getAlgorithm())) {
                return;
            }
            throw new InvalidKeyException("cipher locked to " + p10);
        }
    }
}
