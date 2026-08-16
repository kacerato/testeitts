package Al;

import Bi.P;
import Bi.Z;
import Ml.g;
import Xi.C3360o0;
import ck.q;
import ck.r;
import gl.C13392e;
import gl.C13393f;
import gl.C13397j;
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

public class c extends CipherSpi {

    public final String f1028a;

    public C13393f f1029b;

    public r f1030c;

    public Al.b f1031d;

    public Al.a f1032e;

    public AlgorithmParameters f1033f;

    public C13397j f1034g;

    public static class a extends c {
        public a() throws NoSuchAlgorithmException {
            super("HQC");
        }
    }

    public static class b extends c {
        public b() {
            super(C13397j.f90084p);
        }
    }

    public static class C0020c extends c {
        public C0020c() {
            super(C13397j.f90085q);
        }
    }

    public static class d extends c {
        public d() {
            super(C13397j.f90086r);
        }
    }

    public c(C13397j c13397j) {
        this.f1034g = c13397j;
        this.f1028a = w.p(c13397j.i());
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
        if (this.f1033f == null) {
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(this.f1028a, "BCPQC");
                this.f1033f = algorithmParameters;
                algorithmParameters.init(this.f1030c);
            } catch (Exception e10) {
                throw h.b(e10.toString(), e10);
            }
        }
        return this.f1033f;
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
            C13392e c13392e = new C13392e(this.f1032e.a());
            byte[] b10 = c13392e.b(org.bouncycastle.util.a.X(bArr, 0, c13392e.a()));
            Z d10 = g.d(this.f1030c.b());
            C3360o0 c3360o0 = new C3360o0(b10);
            org.bouncycastle.util.a.n(b10);
            d10.a(false, c3360o0);
            byte[] X10 = org.bouncycastle.util.a.X(bArr, c13392e.a(), bArr.length);
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
            P a10 = this.f1029b.a(this.f1031d.a());
            Z d10 = g.d(this.f1030c.b());
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

    public c(String str) throws NoSuchAlgorithmException {
        this.f1028a = str;
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
                throw new InvalidAlgorithmParameterException(this.f1028a + " can only accept KTSParameterSpec");
            }
            rVar = (r) algorithmParameterSpec;
        }
        this.f1030c = rVar;
        if (i10 == 3) {
            if (!(key instanceof Al.b)) {
                throw new InvalidKeyException("Only a " + this.f1028a + " public key can be used for wrapping");
            }
            this.f1031d = (Al.b) key;
            this.f1029b = new C13393f(Bi.r.i(secureRandom));
        } else {
            if (i10 != 4) {
                throw new InvalidParameterException("Cipher only valid for wrapping/unwrapping");
            }
            if (!(key instanceof Al.a)) {
                throw new InvalidKeyException("Only a " + this.f1028a + " private key can be used for unwrapping");
            }
            this.f1032e = (Al.a) key;
        }
        C13397j c13397j = this.f1034g;
        if (c13397j != null) {
            String p10 = w.p(c13397j.i());
            if (p10.equals(key.getAlgorithm())) {
                return;
            }
            throw new InvalidKeyException("cipher locked to " + p10);
        }
    }
}
