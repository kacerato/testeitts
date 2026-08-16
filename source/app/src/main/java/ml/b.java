package Ml;

import Bi.r;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.ShortBufferException;

public abstract class b extends d {

    public AlgorithmParameterSpec f15441e;

    @Override
    public final int a(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException, BadPaddingException {
        if (bArr2.length < i(i11)) {
            throw new ShortBufferException("Output buffer too short.");
        }
        byte[] d10 = d(bArr, i10, i11);
        System.arraycopy(d10, 0, bArr2, i12, d10.length);
        return d10.length;
    }

    @Override
    public abstract byte[] d(byte[] bArr, int i10, int i11) throws BadPaddingException;

    @Override
    public final int e() {
        return 0;
    }

    @Override
    public final byte[] f() {
        return null;
    }

    @Override
    public final int i(int i10) {
        return this.f15446b == 1 ? s(i10) : r(i10);
    }

    @Override
    public final AlgorithmParameterSpec j() {
        return this.f15441e;
    }

    @Override
    public final void k(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f15446b = 2;
        t(key, algorithmParameterSpec);
    }

    @Override
    public final void l(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f15446b = 1;
        u(key, algorithmParameterSpec, secureRandom);
    }

    @Override
    public final void m(String str) {
    }

    @Override
    public final void n(String str) {
    }

    @Override
    public final int o(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException {
        if (bArr2.length < i(i11)) {
            throw new ShortBufferException("output");
        }
        byte[] q10 = q(bArr, i10, i11);
        System.arraycopy(q10, 0, bArr2, i12, q10.length);
        return q10.length;
    }

    @Override
    public abstract byte[] q(byte[] bArr, int i10, int i11);

    public abstract int r(int i10);

    public abstract int s(int i10);

    public abstract void t(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException;

    public abstract void u(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException;

    public final void v(Key key) throws InvalidKeyException {
        try {
            k(key, null);
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("This cipher needs algorithm parameters for initialization (cannot be null).");
        }
    }

    public final void w(Key key) throws InvalidKeyException {
        try {
            l(key, null, r.h());
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("This cipher needs algorithm parameters for initialization (cannot be null).");
        }
    }

    public final void x(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            l(key, null, secureRandom);
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("This cipher needs algorithm parameters for initialization (cannot be null).");
        }
    }

    public final void y(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        l(key, algorithmParameterSpec, r.h());
    }
}
