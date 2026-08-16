package Si;

import Bi.EnumC2383o;
import Bi.I;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import Xi.w0;
import Xi.y0;
import org.bouncycastle.crypto.DataLengthException;

public class j implements I {

    public static final int f23420i = 8;

    public static final int f23421j = 4;

    public final EnumC2383o f23422a;

    public int f23423b;

    public byte[] f23424c;

    public byte[] f23425d;

    public boolean f23426e;

    public int[] f23427f;

    public byte[] f23428g;

    public byte[] f23429h;

    public j() {
        this(EnumC2383o.AUTHENTICATION);
    }

    public static void e(byte[] bArr, int i10, byte[] bArr2, byte[] bArr3) {
        for (int i11 = 0; i11 < 8; i11++) {
            bArr3[i11] = (byte) (bArr[i10 + i11] ^ bArr2[i11]);
        }
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        reset();
        this.f23424c = new byte[8];
        this.f23428g = null;
        i(interfaceC2379k);
        Bi.r.a(new Hi.c(b(), 178, interfaceC2379k, this.f23422a));
    }

    @Override
    public String b() {
        return "GOST28147Mac";
    }

    @Override
    public int c(byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        while (true) {
            int i11 = this.f23423b;
            if (i11 >= 8) {
                break;
            }
            this.f23424c[i11] = 0;
            this.f23423b = i11 + 1;
        }
        byte[] bArr2 = this.f23424c;
        byte[] bArr3 = new byte[bArr2.length];
        if (this.f23426e) {
            this.f23426e = false;
            System.arraycopy(bArr2, 0, bArr3, 0, this.f23425d.length);
        } else {
            e(bArr2, 0, this.f23425d, bArr3);
        }
        g(this.f23427f, bArr3, 0, this.f23425d, 0);
        byte[] bArr4 = this.f23425d;
        System.arraycopy(bArr4, (bArr4.length / 2) - 4, bArr, i10, 4);
        reset();
        return 4;
    }

    @Override
    public int d() {
        return 4;
    }

    public final int[] f(byte[] bArr) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
        }
        int[] iArr = new int[8];
        for (int i10 = 0; i10 != 8; i10++) {
            iArr[i10] = org.bouncycastle.util.p.r(bArr, i10 * 4);
        }
        return iArr;
    }

    public final void g(int[] iArr, byte[] bArr, int i10, byte[] bArr2, int i11) {
        int r10 = org.bouncycastle.util.p.r(bArr, i10);
        int r11 = org.bouncycastle.util.p.r(bArr, i10 + 4);
        for (int i12 = 0; i12 < 2; i12++) {
            int i13 = 0;
            while (i13 < 8) {
                int h10 = r11 ^ h(r10, iArr[i13]);
                i13++;
                int i14 = r10;
                r10 = h10;
                r11 = i14;
            }
        }
        org.bouncycastle.util.p.m(r10, bArr2, i11);
        org.bouncycastle.util.p.m(r11, bArr2, i11 + 4);
    }

    public final int h(int i10, int i11) {
        int i12 = i11 + i10;
        byte[] bArr = this.f23429h;
        int i13 = bArr[i12 & 15] + (bArr[((i12 >> 4) & 15) + 16] << 4) + (bArr[((i12 >> 8) & 15) + 32] << 8) + (bArr[((i12 >> 12) & 15) + 48] << 12) + (bArr[((i12 >> 16) & 15) + 64] << 16) + (bArr[((i12 >> 20) & 15) + 80] << 20) + (bArr[((i12 >> 24) & 15) + 96] << 24) + (bArr[((i12 >> 28) & 15) + 112] << 28);
        return (i13 << 11) | (i13 >>> 21);
    }

    public final void i(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        InterfaceC2379k b10;
        if (interfaceC2379k == null) {
            return;
        }
        if (interfaceC2379k instanceof y0) {
            y0 y0Var = (y0) interfaceC2379k;
            System.arraycopy(y0Var.b(), 0, this.f23429h, 0, y0Var.b().length);
            b10 = y0Var.a();
        } else if (interfaceC2379k instanceof C3360o0) {
            this.f23427f = f(((C3360o0) interfaceC2379k).b());
            b10 = null;
        } else {
            if (!(interfaceC2379k instanceof w0)) {
                throw new IllegalArgumentException("invalid parameter passed to GOST28147 init - " + interfaceC2379k.getClass().getName());
            }
            w0 w0Var = (w0) interfaceC2379k;
            byte[] a10 = w0Var.a();
            byte[] bArr = this.f23425d;
            System.arraycopy(a10, 0, bArr, 0, bArr.length);
            this.f23428g = w0Var.a();
            b10 = w0Var.b();
        }
        i(b10);
    }

    @Override
    public void reset() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f23424c;
            if (i10 >= bArr.length) {
                this.f23423b = 0;
                this.f23426e = true;
                return;
            } else {
                bArr[i10] = 0;
                i10++;
            }
        }
    }

    @Override
    public void update(byte b10) throws IllegalStateException {
        int i10 = this.f23423b;
        byte[] bArr = this.f23424c;
        if (i10 == bArr.length) {
            byte[] bArr2 = new byte[bArr.length];
            if (this.f23426e) {
                this.f23426e = false;
                byte[] bArr3 = this.f23428g;
                if (bArr3 != null) {
                    e(bArr, 0, bArr3, bArr2);
                } else {
                    System.arraycopy(bArr, 0, bArr2, 0, this.f23425d.length);
                }
            } else {
                e(bArr, 0, this.f23425d, bArr2);
            }
            g(this.f23427f, bArr2, 0, this.f23425d, 0);
            this.f23423b = 0;
        }
        byte[] bArr4 = this.f23424c;
        int i11 = this.f23423b;
        this.f23423b = i11 + 1;
        bArr4[i11] = b10;
    }

    public j(EnumC2383o enumC2383o) {
        this.f23426e = true;
        this.f23427f = null;
        this.f23428g = null;
        this.f23429h = new byte[]{9, 6, 3, 2, 8, 11, 1, 7, 10, 4, 14, 15, 12, 0, 13, 5, 3, 7, 14, 9, 8, 10, 15, 0, 5, 2, 6, 12, 11, 4, 13, 1, 14, 4, 6, 2, 11, 3, 13, 8, 12, 15, 5, 10, 0, 7, 1, 9, 14, 7, 10, 12, 13, 1, 3, 9, 0, 2, 11, 4, 15, 8, 5, 6, 11, 5, 1, 9, 8, 13, 15, 0, 14, 4, 2, 3, 12, 7, 10, 6, 3, 10, 13, 12, 1, 2, 0, 11, 7, 5, 9, 4, 8, 15, 14, 6, 1, 13, 2, 9, 7, 10, 6, 0, 8, 12, 4, 5, 15, 3, 11, 14, 11, 10, 15, 5, 0, 12, 14, 8, 6, 2, 3, 9, 1, 7, 13, 4};
        this.f23422a = enumC2383o;
        this.f23425d = new byte[8];
        this.f23424c = new byte[8];
        this.f23423b = 0;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalStateException {
        if (i11 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int i12 = this.f23423b;
        int i13 = 8 - i12;
        if (i11 > i13) {
            System.arraycopy(bArr, i10, this.f23424c, i12, i13);
            byte[] bArr2 = this.f23424c;
            byte[] bArr3 = new byte[bArr2.length];
            if (this.f23426e) {
                this.f23426e = false;
                byte[] bArr4 = this.f23428g;
                if (bArr4 != null) {
                    e(bArr2, 0, bArr4, bArr3);
                } else {
                    System.arraycopy(bArr2, 0, bArr3, 0, this.f23425d.length);
                }
            } else {
                e(bArr2, 0, this.f23425d, bArr3);
            }
            g(this.f23427f, bArr3, 0, this.f23425d, 0);
            this.f23423b = 0;
            i11 -= i13;
            i10 += i13;
            while (i11 > 8) {
                e(bArr, i10, this.f23425d, bArr3);
                g(this.f23427f, bArr3, 0, this.f23425d, 0);
                i11 -= 8;
                i10 += 8;
            }
        }
        System.arraycopy(bArr, i10, this.f23424c, this.f23423b, i11);
        this.f23423b += i11;
    }
}
