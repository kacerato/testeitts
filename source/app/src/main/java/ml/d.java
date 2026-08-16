package Ml;

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

public abstract class d extends CipherSpi {

    public static final int f15444c = 1;

    public static final int f15445d = 2;

    public int f15446b;

    public abstract int a(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException;

    public final byte[] b() throws IllegalBlockSizeException, BadPaddingException {
        return d(null, 0, 0);
    }

    public final byte[] c(byte[] bArr) throws IllegalBlockSizeException, BadPaddingException {
        return d(bArr, 0, bArr.length);
    }

    public abstract byte[] d(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException;

    public abstract int e();

    @Override
    public final int engineDoFinal(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        return a(bArr, i10, i11, bArr2, i12);
    }

    @Override
    public final int engineGetBlockSize() {
        return e();
    }

    @Override
    public final byte[] engineGetIV() {
        return f();
    }

    @Override
    public final int engineGetKeySize(Key key) throws InvalidKeyException {
        if (key != null) {
            return g(key);
        }
        throw new InvalidKeyException("Unsupported key.");
    }

    @Override
    public final int engineGetOutputSize(int i10) {
        return i(i10);
    }

    @Override
    public final AlgorithmParameters engineGetParameters() {
        return null;
    }

    @Override
    public final void engineInit(int i10, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameters == null) {
            engineInit(i10, key, secureRandom);
        } else {
            engineInit(i10, key, (AlgorithmParameterSpec) null, secureRandom);
        }
    }

    @Override
    public final void engineSetMode(String str) throws NoSuchAlgorithmException {
        m(str);
    }

    @Override
    public final void engineSetPadding(String str) throws NoSuchPaddingException {
        n(str);
    }

    @Override
    public final int engineUpdate(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException {
        return o(bArr, i10, i11, bArr2, i12);
    }

    public abstract byte[] f();

    public abstract int g(Key key) throws InvalidKeyException;

    public abstract String h();

    public abstract int i(int i10);

    public abstract AlgorithmParameterSpec j();

    public abstract void k(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException;

    public abstract void l(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException;

    public abstract void m(String str) throws NoSuchAlgorithmException;

    public abstract void n(String str) throws NoSuchPaddingException;

    public abstract int o(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException;

    public final byte[] p(byte[] bArr) {
        return q(bArr, 0, bArr.length);
    }

    public abstract byte[] q(byte[] bArr, int i10, int i11);

    @Override
    public final byte[] engineDoFinal(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException {
        return d(bArr, i10, i11);
    }

    @Override
    public final void engineInit(int i10, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i10, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e10) {
            throw new InvalidParameterException(e10.getMessage());
        }
    }

    @Override
    public final byte[] engineUpdate(byte[] bArr, int i10, int i11) {
        return q(bArr, i10, i11);
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (key == null) {
            throw new InvalidKeyException();
        }
        this.f15446b = i10;
        if (i10 == 1) {
            l(key, algorithmParameterSpec, secureRandom);
        } else if (i10 == 2) {
            k(key, algorithmParameterSpec);
        }
    }
}
