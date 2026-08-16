package yl;

import Bi.P;
import Bi.Z;
import Bi.r;
import Ml.g;
import Xi.C3360o0;
import ck.q;
import el.C13162b;
import el.C13163c;
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

public class C16209c extends CipherSpi {

    public final String f130495a;

    public C13163c f130496b;

    public q f130497c;

    public C16208b f130498d;

    public C16207a f130499e;

    public AlgorithmParameters f130500f;

    public static class a extends C16209c {
        public a() throws NoSuchAlgorithmException {
            super("Frodo");
        }
    }

    public C16209c(String str) throws NoSuchAlgorithmException {
        this.f130495a = str;
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
        if (this.f130500f == null) {
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(this.f130495a, "BCPQC");
                this.f130500f = algorithmParameters;
                algorithmParameters.init(this.f130497c);
            } catch (Exception e10) {
                throw h.b(e10.toString(), e10);
            }
        }
        return this.f130500f;
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
            C13162b c13162b = new C13162b(this.f130499e.a());
            byte[] b10 = c13162b.b(org.bouncycastle.util.a.X(bArr, 0, c13162b.a()));
            Z d10 = g.d(this.f130497c.b());
            C3360o0 c3360o0 = new C3360o0(b10);
            org.bouncycastle.util.a.n(b10);
            d10.a(false, c3360o0);
            byte[] X10 = org.bouncycastle.util.a.X(bArr, c13162b.a(), bArr.length);
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
            P a10 = this.f130496b.a(this.f130498d.a());
            Z d10 = g.d(this.f130497c.b());
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
        q qVar;
        if (algorithmParameterSpec == null) {
            qVar = new q("AES-KWP");
        } else {
            if (!(algorithmParameterSpec instanceof q)) {
                throw new InvalidAlgorithmParameterException(this.f130495a + " can only accept KTSParameterSpec");
            }
            qVar = (q) algorithmParameterSpec;
        }
        this.f130497c = qVar;
        if (i10 == 3) {
            if (key instanceof C16208b) {
                this.f130498d = (C16208b) key;
                this.f130496b = new C13163c(r.i(secureRandom));
                return;
            } else {
                throw new InvalidKeyException("Only a " + this.f130495a + " public key can be used for wrapping");
            }
        }
        if (i10 != 4) {
            throw new InvalidParameterException("Cipher only valid for wrapping/unwrapping");
        }
        if (key instanceof C16207a) {
            this.f130499e = (C16207a) key;
            return;
        }
        throw new InvalidKeyException("Only a " + this.f130495a + " private key can be used for unwrapping");
    }
}
