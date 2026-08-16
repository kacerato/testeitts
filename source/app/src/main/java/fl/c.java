package Fl;

import Bi.P;
import Bi.Z;
import Ml.g;
import ck.q;
import ck.r;
import il.C13754a;
import il.C13755b;
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

public class c extends CipherSpi {

    public final String f7200a;

    public C13755b f7201b;

    public r f7202c;

    public b f7203d;

    public Fl.a f7204e;

    public AlgorithmParameters f7205f;

    public static class a extends c {
        public a() throws NoSuchAlgorithmException {
            super("NTRU");
        }
    }

    public c(String str) throws NoSuchAlgorithmException {
        this.f7200a = str;
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
        if (this.f7205f == null) {
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(this.f7200a, "BCPQC");
                this.f7205f = algorithmParameters;
                algorithmParameters.init(this.f7202c);
            } catch (Exception e10) {
                throw h.b(e10.toString(), e10);
            }
        }
        return this.f7205f;
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
        byte[] bArr2 = null;
        try {
            try {
                C13754a c13754a = new C13754a(this.f7204e.a());
                bArr2 = c13754a.b(org.bouncycastle.util.a.X(bArr, 0, c13754a.a()));
                Z b10 = g.b(this.f7202c, bArr2);
                byte[] X10 = org.bouncycastle.util.a.X(bArr, c13754a.a(), bArr.length);
                return new SecretKeySpec(b10.d(X10, 0, X10.length), str);
            } catch (IllegalArgumentException e10) {
                throw new NoSuchAlgorithmException("unable to extract KTS secret: " + e10.getMessage());
            } catch (InvalidCipherTextException e11) {
                throw new InvalidKeyException("unable to extract KTS secret: " + e11.getMessage());
            }
        } finally {
            if (bArr2 != null) {
                org.bouncycastle.util.a.n(bArr2);
            }
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
        P p10 = null;
        try {
            try {
                p10 = this.f7201b.a(this.f7203d.a());
                Z c10 = g.c(this.f7202c, p10.f());
                byte[] e10 = p10.e();
                byte[] encoded = key.getEncoded();
                byte[] B10 = org.bouncycastle.util.a.B(e10, c10.c(encoded, 0, encoded.length));
                org.bouncycastle.util.a.n(encoded);
                try {
                    p10.destroy();
                    return B10;
                } catch (DestroyFailedException e11) {
                    throw new IllegalBlockSizeException("unable to destroy interim values: " + e11.getMessage());
                }
            } catch (IllegalArgumentException e12) {
                throw new IllegalBlockSizeException("unable to generate KTS secret: " + e12.getMessage());
            }
        } catch (Throwable th2) {
            if (p10 != null) {
                try {
                    p10.destroy();
                } catch (DestroyFailedException e13) {
                    throw new IllegalBlockSizeException("unable to destroy interim values: " + e13.getMessage());
                }
            }
            throw th2;
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
                throw new InvalidAlgorithmParameterException(this.f7200a + " can only accept KTSParameterSpec");
            }
            rVar = (r) algorithmParameterSpec;
        }
        this.f7202c = rVar;
        if (i10 == 3) {
            if (key instanceof b) {
                this.f7203d = (b) key;
                this.f7201b = new C13755b(Bi.r.i(secureRandom));
                return;
            } else {
                throw new InvalidKeyException("Only a " + this.f7200a + " public key can be used for wrapping");
            }
        }
        if (i10 != 4) {
            throw new InvalidParameterException("Cipher only valid for wrapping/unwrapping");
        }
        if (key instanceof Fl.a) {
            this.f7204e = (Fl.a) key;
            return;
        }
        throw new InvalidKeyException("Only a " + this.f7200a + " private key can be used for unwrapping");
    }
}
