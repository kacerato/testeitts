package Bl;

import Bi.P;
import Bi.Z;
import Ml.g;
import ck.q;
import ck.r;
import cl.C4221d;
import cl.C4222e;
import cl.i;
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

    public final String f1937a;

    public C4222e f1938b;

    public r f1939c;

    public Bl.b f1940d;

    public Bl.a f1941e;

    public AlgorithmParameters f1942f;

    public i f1943g;

    public static class a extends c {
        public a() throws NoSuchAlgorithmException {
            super("KYBER");
        }
    }

    public static class b extends c {
        public b() {
            super(i.f35010h);
        }
    }

    public static class C0038c extends c {
        public C0038c() {
            super(i.f35008f);
        }
    }

    public static class d extends c {
        public d() {
            super(i.f35009g);
        }
    }

    public c(i iVar) {
        this.f1943g = iVar;
        this.f1937a = w.p(iVar.b());
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
        if (this.f1942f == null) {
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(this.f1937a, "BCPQC");
                this.f1942f = algorithmParameters;
                algorithmParameters.init(this.f1939c);
            } catch (Exception e10) {
                throw h.b(e10.toString(), e10);
            }
        }
        return this.f1942f;
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
                C4221d c4221d = new C4221d(this.f1941e.a());
                bArr2 = c4221d.b(org.bouncycastle.util.a.X(bArr, 0, c4221d.a()));
                Z b10 = g.b(this.f1939c, bArr2);
                byte[] X10 = org.bouncycastle.util.a.X(bArr, c4221d.a(), bArr.length);
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
                p10 = this.f1938b.a(this.f1940d.a());
                Z c10 = g.c(this.f1939c, p10.f());
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

    public c(String str) {
        this.f1937a = str;
        this.f1943g = null;
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
                throw new InvalidAlgorithmParameterException(this.f1937a + " can only accept KTSParameterSpec");
            }
            rVar = (r) algorithmParameterSpec;
        }
        this.f1939c = rVar;
        if (i10 == 3) {
            if (!(key instanceof Bl.b)) {
                throw new InvalidKeyException("Only a " + this.f1937a + " public key can be used for wrapping");
            }
            this.f1940d = (Bl.b) key;
            this.f1938b = new C4222e(Bi.r.i(secureRandom));
        } else {
            if (i10 != 4) {
                throw new InvalidParameterException("Cipher only valid for wrapping/unwrapping");
            }
            if (!(key instanceof Bl.a)) {
                throw new InvalidKeyException("Only a " + this.f1937a + " private key can be used for unwrapping");
            }
            this.f1941e = (Bl.a) key;
        }
        i iVar = this.f1943g;
        if (iVar != null) {
            String p10 = w.p(iVar.b());
            if (p10.equals(key.getAlgorithm())) {
                return;
            }
            throw new InvalidKeyException("cipher locked to " + p10);
        }
    }
}
