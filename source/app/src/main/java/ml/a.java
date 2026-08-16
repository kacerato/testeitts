package Ml;

import Bi.r;
import java.io.ByteArrayOutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;

public abstract class a extends d {

    public AlgorithmParameterSpec f15437e;

    public ByteArrayOutputStream f15438f = new ByteArrayOutputStream();

    public int f15439g;

    public int f15440h;

    @Override
    public final int a(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        if (bArr2.length < i(i11)) {
            throw new ShortBufferException("Output buffer too short.");
        }
        byte[] d10 = d(bArr, i10, i11);
        System.arraycopy(d10, 0, bArr2, i12, d10.length);
        return d10.length;
    }

    @Override
    public final byte[] d(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException {
        r(i11);
        q(bArr, i10, i11);
        byte[] byteArray = this.f15438f.toByteArray();
        this.f15438f.reset();
        int i12 = this.f15446b;
        if (i12 == 1) {
            return z(byteArray);
        }
        if (i12 != 2) {
            return null;
        }
        return y(byteArray);
    }

    @Override
    public final int e() {
        return this.f15446b == 1 ? this.f15439g : this.f15440h;
    }

    @Override
    public final byte[] f() {
        return null;
    }

    @Override
    public final int i(int i10) {
        if (i10 + this.f15438f.size() > e()) {
            return 0;
        }
        return this.f15446b == 1 ? this.f15440h : this.f15439g;
    }

    @Override
    public final AlgorithmParameterSpec j() {
        return this.f15437e;
    }

    @Override
    public final void k(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f15446b = 2;
        s(key, algorithmParameterSpec);
    }

    @Override
    public final void l(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f15446b = 1;
        t(key, algorithmParameterSpec, secureRandom);
    }

    @Override
    public final void m(String str) {
    }

    @Override
    public final void n(String str) {
    }

    @Override
    public final int o(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        q(bArr, i10, i11);
        return 0;
    }

    @Override
    public final byte[] q(byte[] bArr, int i10, int i11) {
        if (i11 != 0) {
            this.f15438f.write(bArr, i10, i11);
        }
        return new byte[0];
    }

    public void r(int i10) throws IllegalBlockSizeException {
        int size = i10 + this.f15438f.size();
        int i11 = this.f15446b;
        if (i11 == 1) {
            if (size <= this.f15439g) {
                return;
            }
            throw new IllegalBlockSizeException("The length of the plaintext (" + size + " bytes) is not supported by the cipher (max. " + this.f15439g + " bytes).");
        }
        if (i11 != 2 || size == this.f15440h) {
            return;
        }
        throw new IllegalBlockSizeException("Illegal ciphertext length (expected " + this.f15440h + " bytes, was " + size + " bytes).");
    }

    public abstract void s(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException;

    public abstract void t(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException;

    public final void u(Key key) throws InvalidKeyException {
        try {
            k(key, null);
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("This cipher needs algorithm parameters for initialization (cannot be null).");
        }
    }

    public final void v(Key key) throws InvalidKeyException {
        try {
            l(key, null, r.h());
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("This cipher needs algorithm parameters for initialization (cannot be null).");
        }
    }

    public final void w(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            l(key, null, secureRandom);
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("This cipher needs algorithm parameters for initialization (cannot be null).");
        }
    }

    public final void x(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        l(key, algorithmParameterSpec, r.h());
    }

    public abstract byte[] y(byte[] bArr) throws IllegalBlockSizeException, BadPaddingException;

    public abstract byte[] z(byte[] bArr) throws IllegalBlockSizeException, BadPaddingException;
}
