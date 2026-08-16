package Gl;

import Bi.P;
import Bi.Z;
import Xi.C3360o0;
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

public class i extends CipherSpi {

    public final String f7909a;

    public jl.j f7910b;

    public r f7911c;

    public d f7912d;

    public c f7913e;

    public AlgorithmParameters f7914f;

    public static class a extends i {
        public a() throws NoSuchAlgorithmException {
            super("SNTRUPrime");
        }
    }

    public i(String str) throws NoSuchAlgorithmException {
        this.f7909a = str;
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
        if (this.f7914f == null) {
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(this.f7909a, "BCPQC");
                this.f7914f = algorithmParameters;
                algorithmParameters.init(this.f7911c);
            } catch (Exception e10) {
                throw org.bouncycastle.util.h.b(e10.toString(), e10);
            }
        }
        return this.f7914f;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec;
        if (algorithmParameters != null) {
            try {
                parameterSpec = algorithmParameters.getParameterSpec(r.class);
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
            jl.i iVar = new jl.i(this.f7913e.a());
            byte[] b10 = iVar.b(org.bouncycastle.util.a.X(bArr, 0, iVar.a()));
            Z d10 = Ml.g.d(this.f7911c.b());
            C3360o0 c3360o0 = new C3360o0(b10, 0, (this.f7911c.c() + 7) / 8);
            org.bouncycastle.util.a.n(b10);
            d10.a(false, c3360o0);
            byte[] X10 = org.bouncycastle.util.a.X(bArr, iVar.a(), bArr.length);
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
            P a10 = this.f7910b.a(this.f7912d.a());
            Z d10 = Ml.g.d(this.f7911c.b());
            d10.a(true, new C3360o0(a10.f(), 0, (this.f7911c.c() + 7) / 8));
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

    @Override
    public byte[] engineDoFinal(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException {
        throw new IllegalStateException("Not supported in a wrapping mode");
    }

    @Override
    public void engineInit(int i10, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i10, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e10) {
            throw org.bouncycastle.util.h.a(e10.getMessage(), e10);
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
            rVar = new r.a("AES-KWP", 256).a();
        } else {
            if (!(algorithmParameterSpec instanceof r)) {
                throw new InvalidAlgorithmParameterException(this.f7909a + " can only accept KTSParameterSpec");
            }
            rVar = (r) algorithmParameterSpec;
        }
        this.f7911c = rVar;
        if (i10 == 3) {
            if (key instanceof d) {
                this.f7912d = (d) key;
                this.f7910b = new jl.j(Bi.r.i(secureRandom));
                return;
            } else {
                throw new InvalidKeyException("Only a " + this.f7909a + " public key can be used for wrapping");
            }
        }
        if (i10 != 4) {
            throw new InvalidParameterException("Cipher only valid for wrapping/unwrapping");
        }
        if (key instanceof c) {
            this.f7913e = (c) key;
            return;
        }
        throw new InvalidKeyException("Only a " + this.f7909a + " private key can be used for unwrapping");
    }
}
