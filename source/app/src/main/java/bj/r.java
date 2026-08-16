package bj;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.T;
import Xi.F0;
import Xi.x0;
import Xi.z0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class r implements T {

    public static final int f33327A = 13260;

    public static final int f33328B = 13516;

    public static final int f33329C = 13772;

    public static final int f33330D = 14028;

    public static final int f33331E = 14284;

    public static final int f33332x = 188;

    public static final int f33333y = 12748;

    public static final int f33334z = 13004;

    public InterfaceC2392y f33335g;

    public InterfaceC2370b f33336h;

    public SecureRandom f33337i;

    public byte[] f33338j;

    public int f33339k;

    public int f33340l;

    public int f33341m;

    public byte[] f33342n;

    public byte[] f33343o;

    public int f33344p;

    public int f33345q;

    public boolean f33346r;

    public byte[] f33347s;

    public byte[] f33348t;

    public byte[] f33349u;

    public int f33350v;

    public int f33351w;

    public r(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, int i10) {
        this(interfaceC2370b, interfaceC2392y, i10, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0061  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        F0 f02;
        SecureRandom h10;
        int i10;
        int i11 = this.f33345q;
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            f02 = (F0) x0Var.a();
            if (z10) {
                h10 = x0Var.b();
                this.f33337i = h10;
            }
            this.f33336h.a(z10, f02);
            int bitLength = f02.f().bitLength();
            this.f33341m = bitLength;
            byte[] bArr = new byte[(bitLength + 7) / 8];
            this.f33342n = bArr;
            i10 = this.f33340l;
            int length = bArr.length;
            if (i10 != 188) {
                this.f33343o = new byte[((length - this.f33335g.f()) - i11) - 2];
            } else {
                this.f33343o = new byte[((length - this.f33335g.f()) - i11) - 3];
            }
            reset();
        }
        if (interfaceC2379k instanceof z0) {
            z0 z0Var = (z0) interfaceC2379k;
            f02 = (F0) z0Var.a();
            byte[] b10 = z0Var.b();
            this.f33338j = b10;
            i11 = b10.length;
            if (b10.length != this.f33345q) {
                throw new IllegalArgumentException("Fixed salt is of wrong length");
            }
        } else {
            f02 = (F0) interfaceC2379k;
            if (z10) {
                h10 = Bi.r.h();
                this.f33337i = h10;
            }
        }
        this.f33336h.a(z10, f02);
        int bitLength2 = f02.f().bitLength();
        this.f33341m = bitLength2;
        byte[] bArr2 = new byte[(bitLength2 + 7) / 8];
        this.f33342n = bArr2;
        i10 = this.f33340l;
        int length2 = bArr2.length;
        if (i10 != 188) {
        }
        reset();
    }

    @Override
    public boolean b(byte[] bArr) {
        int i10 = this.f33339k;
        byte[] bArr2 = new byte[i10];
        this.f33335g.c(bArr2, 0);
        byte[] bArr3 = this.f33348t;
        if (bArr3 == null) {
            try {
                d(bArr);
            } catch (Exception unused) {
                return false;
            }
        } else if (!org.bouncycastle.util.a.g(bArr3, bArr)) {
            throw new IllegalStateException("updateWithRecoveredMessage called on different signature");
        }
        byte[] bArr4 = this.f33349u;
        int i11 = this.f33350v;
        int i12 = this.f33351w;
        this.f33348t = null;
        this.f33349u = null;
        byte[] bArr5 = new byte[8];
        h(this.f33347s.length * 8, bArr5);
        this.f33335g.update(bArr5, 0, 8);
        byte[] bArr6 = this.f33347s;
        if (bArr6.length != 0) {
            this.f33335g.update(bArr6, 0, bArr6.length);
        }
        this.f33335g.update(bArr2, 0, i10);
        byte[] bArr7 = this.f33338j;
        if (bArr7 != null) {
            this.f33335g.update(bArr7, 0, bArr7.length);
        } else {
            this.f33335g.update(bArr4, i11 + this.f33347s.length, this.f33345q);
        }
        int f10 = this.f33335g.f();
        byte[] bArr8 = new byte[f10];
        this.f33335g.c(bArr8, 0);
        int length = (bArr4.length - i12) - f10;
        boolean z10 = true;
        for (int i13 = 0; i13 != f10; i13++) {
            if (bArr8[i13] != bArr4[length + i13]) {
                z10 = false;
            }
        }
        i(bArr4);
        i(bArr8);
        if (!z10) {
            this.f33346r = false;
            this.f33344p = 0;
            i(this.f33347s);
            return false;
        }
        if (this.f33344p == 0 || j(this.f33343o, this.f33347s)) {
            this.f33344p = 0;
            i(this.f33343o);
            return true;
        }
        this.f33344p = 0;
        i(this.f33343o);
        return false;
    }

    @Override
    public byte[] c() throws CryptoException {
        int f10 = this.f33335g.f();
        byte[] bArr = new byte[f10];
        this.f33335g.c(bArr, 0);
        byte[] bArr2 = new byte[8];
        h(this.f33344p * 8, bArr2);
        this.f33335g.update(bArr2, 0, 8);
        this.f33335g.update(this.f33343o, 0, this.f33344p);
        this.f33335g.update(bArr, 0, f10);
        byte[] bArr3 = this.f33338j;
        if (bArr3 == null) {
            bArr3 = new byte[this.f33345q];
            this.f33337i.nextBytes(bArr3);
        }
        this.f33335g.update(bArr3, 0, bArr3.length);
        int f11 = this.f33335g.f();
        byte[] bArr4 = new byte[f11];
        this.f33335g.c(bArr4, 0);
        int i10 = this.f33340l == 188 ? 1 : 2;
        byte[] bArr5 = this.f33342n;
        int length = bArr5.length;
        int i11 = this.f33344p;
        int length2 = (((length - i11) - bArr3.length) - this.f33339k) - i10;
        bArr5[length2 - 1] = 1;
        System.arraycopy(this.f33343o, 0, bArr5, length2, i11);
        System.arraycopy(bArr3, 0, this.f33342n, length2 + this.f33344p, bArr3.length);
        byte[] k10 = k(bArr4, 0, f11, (this.f33342n.length - this.f33339k) - i10);
        for (int i12 = 0; i12 != k10.length; i12++) {
            byte[] bArr6 = this.f33342n;
            bArr6[i12] = (byte) (bArr6[i12] ^ k10[i12]);
        }
        byte[] bArr7 = this.f33342n;
        int length3 = bArr7.length;
        int i13 = this.f33339k;
        System.arraycopy(bArr4, 0, bArr7, (length3 - i13) - i10, i13);
        int i14 = this.f33340l;
        if (i14 == 188) {
            byte[] bArr8 = this.f33342n;
            bArr8[bArr8.length - 1] = -68;
        } else {
            byte[] bArr9 = this.f33342n;
            bArr9[bArr9.length - 2] = (byte) (i14 >>> 8);
            bArr9[bArr9.length - 1] = (byte) i14;
        }
        byte[] bArr10 = this.f33342n;
        bArr10[0] = (byte) (bArr10[0] & Byte.MAX_VALUE);
        byte[] b10 = this.f33336h.b(bArr10, 0, bArr10.length);
        int i15 = this.f33344p;
        byte[] bArr11 = new byte[i15];
        this.f33347s = bArr11;
        byte[] bArr12 = this.f33343o;
        this.f33346r = i15 <= bArr12.length;
        System.arraycopy(bArr12, 0, bArr11, 0, bArr11.length);
        i(this.f33343o);
        i(this.f33342n);
        this.f33344p = 0;
        return b10;
    }

    @Override
    public void d(byte[] bArr) throws InvalidCipherTextException {
        int i10;
        byte[] b10 = this.f33336h.b(bArr, 0, bArr.length);
        int length = b10.length;
        int i11 = this.f33341m;
        if (length < (i11 + 7) / 8) {
            int i12 = (i11 + 7) / 8;
            byte[] bArr2 = new byte[i12];
            System.arraycopy(b10, 0, bArr2, i12 - b10.length, b10.length);
            i(b10);
            b10 = bArr2;
        }
        if (((b10[b10.length - 1] & 255) ^ 188) == 0) {
            i10 = 1;
        } else {
            i10 = 2;
            int i13 = ((b10[b10.length - 2] & 255) << 8) | (b10[b10.length - 1] & 255);
            Integer a10 = t.a(this.f33335g);
            if (a10 == null) {
                throw new IllegalArgumentException("unrecognised hash in signature");
            }
            int intValue = a10.intValue();
            if (i13 != intValue && (intValue != 15052 || i13 != 16588)) {
                throw new IllegalStateException("signer initialised with wrong digest for trailer " + i13);
            }
        }
        this.f33335g.c(new byte[this.f33339k], 0);
        int length2 = b10.length;
        int i14 = this.f33339k;
        byte[] k10 = k(b10, (length2 - i14) - i10, i14, (b10.length - i14) - i10);
        for (int i15 = 0; i15 != k10.length; i15++) {
            b10[i15] = (byte) (b10[i15] ^ k10[i15]);
        }
        b10[0] = (byte) (b10[0] & Byte.MAX_VALUE);
        int i16 = 0;
        while (i16 != b10.length && b10[i16] != 1) {
            i16++;
        }
        int i17 = i16 + 1;
        if (i17 >= b10.length) {
            i(b10);
        }
        this.f33346r = i17 > 1;
        byte[] bArr3 = new byte[(k10.length - i17) - this.f33345q];
        this.f33347s = bArr3;
        System.arraycopy(b10, i17, bArr3, 0, bArr3.length);
        byte[] bArr4 = this.f33347s;
        System.arraycopy(bArr4, 0, this.f33343o, 0, bArr4.length);
        this.f33348t = bArr;
        this.f33349u = b10;
        this.f33350v = i17;
        this.f33351w = i10;
    }

    @Override
    public boolean e() {
        return this.f33346r;
    }

    @Override
    public byte[] f() {
        return this.f33347s;
    }

    public final void g(int i10, byte[] bArr) {
        bArr[0] = (byte) (i10 >>> 24);
        bArr[1] = (byte) (i10 >>> 16);
        bArr[2] = (byte) (i10 >>> 8);
        bArr[3] = (byte) i10;
    }

    public final void h(long j10, byte[] bArr) {
        bArr[0] = (byte) (j10 >>> 56);
        bArr[1] = (byte) (j10 >>> 48);
        bArr[2] = (byte) (j10 >>> 40);
        bArr[3] = (byte) (j10 >>> 32);
        bArr[4] = (byte) (j10 >>> 24);
        bArr[5] = (byte) (j10 >>> 16);
        bArr[6] = (byte) (j10 >>> 8);
        bArr[7] = (byte) j10;
    }

    public final void i(byte[] bArr) {
        for (int i10 = 0; i10 != bArr.length; i10++) {
            bArr[i10] = 0;
        }
    }

    public final boolean j(byte[] bArr, byte[] bArr2) {
        boolean z10 = this.f33344p == bArr2.length;
        for (int i10 = 0; i10 != bArr2.length; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                z10 = false;
            }
        }
        return z10;
    }

    public final byte[] k(byte[] bArr, int i10, int i11, int i12) {
        int i13;
        byte[] bArr2 = new byte[i12];
        byte[] bArr3 = new byte[this.f33339k];
        byte[] bArr4 = new byte[4];
        this.f33335g.reset();
        int i14 = 0;
        while (true) {
            i13 = this.f33339k;
            if (i14 >= i12 / i13) {
                break;
            }
            g(i14, bArr4);
            this.f33335g.update(bArr, i10, i11);
            this.f33335g.update(bArr4, 0, 4);
            this.f33335g.c(bArr3, 0);
            int i15 = this.f33339k;
            System.arraycopy(bArr3, 0, bArr2, i14 * i15, i15);
            i14++;
        }
        if (i13 * i14 < i12) {
            g(i14, bArr4);
            this.f33335g.update(bArr, i10, i11);
            this.f33335g.update(bArr4, 0, 4);
            this.f33335g.c(bArr3, 0);
            int i16 = this.f33339k;
            System.arraycopy(bArr3, 0, bArr2, i14 * i16, i12 - (i14 * i16));
        }
        return bArr2;
    }

    @Override
    public void reset() {
        this.f33335g.reset();
        this.f33344p = 0;
        byte[] bArr = this.f33343o;
        if (bArr != null) {
            i(bArr);
        }
        byte[] bArr2 = this.f33347s;
        if (bArr2 != null) {
            i(bArr2);
            this.f33347s = null;
        }
        this.f33346r = false;
        if (this.f33348t != null) {
            this.f33348t = null;
            i(this.f33349u);
            this.f33349u = null;
        }
    }

    @Override
    public void update(byte b10) {
        if (this.f33348t == null) {
            int i10 = this.f33344p;
            byte[] bArr = this.f33343o;
            if (i10 < bArr.length) {
                this.f33344p = i10 + 1;
                bArr[i10] = b10;
                return;
            }
        }
        this.f33335g.update(b10);
    }

    public r(InterfaceC2370b interfaceC2370b, InterfaceC2392y interfaceC2392y, int i10, boolean z10) {
        int intValue;
        this.f33336h = interfaceC2370b;
        this.f33335g = interfaceC2392y;
        this.f33339k = interfaceC2392y.f();
        this.f33345q = i10;
        if (z10) {
            intValue = 188;
        } else {
            Integer a10 = t.a(interfaceC2392y);
            if (a10 == null) {
                throw new IllegalArgumentException("no valid trailer for digest: " + interfaceC2392y.b());
            }
            intValue = a10.intValue();
        }
        this.f33340l = intValue;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        if (this.f33348t == null) {
            while (i11 > 0 && this.f33344p < this.f33343o.length) {
                update(bArr[i10]);
                i10++;
                i11--;
            }
        }
        if (i11 > 0) {
            this.f33335g.update(bArr, i10, i11);
        }
    }
}
