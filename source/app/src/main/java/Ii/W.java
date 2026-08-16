package Ii;

import Li.s0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class W implements Bi.D {

    public static final int f9615i = 16;

    public static final int f9616j = 4;

    public String f9617a;

    public final int[] f9618b;

    public final int f9620d;

    public final int f9621e;

    public final int f9622f;

    public final int f9623g;

    public final byte[] f9619c = new byte[16];

    public int f9624h = 0;

    public static class a {

        public static final int[] f9625a;

        static {
            int[] iArr = new int[c.values().length];
            f9625a = iArr;
            try {
                iArr[c.ESCH256.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9625a[c.ESCH384.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class b {

        public static final b f9626a = new b();
    }

    public enum c {
        ESCH256,
        ESCH384
    }

    public W(c cVar) {
        int i10 = a.f9625a[cVar.ordinal()];
        if (i10 == 1) {
            this.f9617a = "ESCH-256";
            this.f9620d = 32;
            this.f9621e = 7;
            this.f9622f = 11;
            this.f9623g = 12;
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("Invalid definition of SCHWAEMM instance");
            }
            this.f9617a = "ESCH-384";
            this.f9620d = 48;
            this.f9621e = 8;
            this.f9622f = 12;
            this.f9623g = 16;
        }
        this.f9618b = new int[this.f9623g];
    }

    public static int a(int i10) {
        return (i10 & 65535) ^ org.bouncycastle.util.k.i(i10, 16);
    }

    @Override
    public String b() {
        return this.f9617a;
    }

    @Override
    public int c(byte[] bArr, int i10) {
        if (i10 > bArr.length - this.f9620d) {
            throw new OutputLengthException(this.f9617a + " input buffer too short");
        }
        int i11 = this.f9624h;
        if (i11 < 16) {
            int[] iArr = this.f9618b;
            int i12 = (this.f9623g >> 1) - 1;
            iArr[i12] = iArr[i12] ^ 16777216;
            this.f9619c[i11] = Byte.MIN_VALUE;
            while (true) {
                int i13 = this.f9624h + 1;
                this.f9624h = i13;
                if (i13 >= 16) {
                    break;
                }
                this.f9619c[i13] = 0;
            }
        } else {
            int[] iArr2 = this.f9618b;
            int i14 = (this.f9623g >> 1) - 1;
            iArr2[i14] = iArr2[i14] ^ 33554432;
        }
        d(this.f9619c, 0, this.f9622f);
        org.bouncycastle.util.p.n(this.f9618b, 0, 4, bArr, i10);
        if (this.f9623g == 16) {
            s0.z(b.f9626a, this.f9618b, this.f9621e);
            org.bouncycastle.util.p.n(this.f9618b, 0, 4, bArr, i10 + 16);
            s0.z(b.f9626a, this.f9618b, this.f9621e);
            org.bouncycastle.util.p.n(this.f9618b, 0, 4, bArr, i10 + 32);
        } else {
            s0.x(b.f9626a, this.f9618b, this.f9621e);
            org.bouncycastle.util.p.n(this.f9618b, 0, 4, bArr, i10 + 16);
        }
        reset();
        return this.f9620d;
    }

    public final void d(byte[] bArr, int i10, int i11) {
        int r10 = org.bouncycastle.util.p.r(bArr, i10);
        int r11 = org.bouncycastle.util.p.r(bArr, i10 + 4);
        int r12 = org.bouncycastle.util.p.r(bArr, i10 + 8);
        int r13 = org.bouncycastle.util.p.r(bArr, i10 + 12);
        int a10 = a(r10 ^ r12);
        int a11 = a(r11 ^ r13);
        int[] iArr = this.f9618b;
        iArr[0] = (r10 ^ a11) ^ iArr[0];
        iArr[1] = (r11 ^ a10) ^ iArr[1];
        iArr[2] = iArr[2] ^ (r12 ^ a11);
        iArr[3] = (r13 ^ a10) ^ iArr[3];
        iArr[4] = iArr[4] ^ a11;
        iArr[5] = iArr[5] ^ a10;
        if (this.f9623g != 16) {
            s0.x(b.f9626a, this.f9618b, i11);
            return;
        }
        iArr[6] = iArr[6] ^ a11;
        iArr[7] = a10 ^ iArr[7];
        s0.z(b.f9626a, this.f9618b, i11);
    }

    @Override
    public int f() {
        return this.f9620d;
    }

    @Override
    public int i() {
        return 16;
    }

    @Override
    public void reset() {
        org.bouncycastle.util.a.i0(this.f9618b, 0);
        org.bouncycastle.util.a.e0(this.f9619c, (byte) 0);
        this.f9624h = 0;
    }

    @Override
    public void update(byte b10) {
        if (this.f9624h == 16) {
            d(this.f9619c, 0, this.f9621e);
            this.f9624h = 0;
        }
        byte[] bArr = this.f9619c;
        int i10 = this.f9624h;
        this.f9624h = i10 + 1;
        bArr[i10] = b10;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        if (i10 > bArr.length - i11) {
            throw new DataLengthException(this.f9617a + " input buffer too short");
        }
        if (i11 < 1) {
            return;
        }
        int i12 = this.f9624h;
        int i13 = 16 - i12;
        if (i11 <= i13) {
            System.arraycopy(bArr, i10, this.f9619c, i12, i11);
            this.f9624h += i11;
            return;
        }
        if (i12 > 0) {
            System.arraycopy(bArr, i10, this.f9619c, i12, i13);
            d(this.f9619c, 0, this.f9621e);
        } else {
            i13 = 0;
        }
        while (true) {
            int i14 = i11 - i13;
            if (i14 <= 16) {
                System.arraycopy(bArr, i10 + i13, this.f9619c, 0, i14);
                this.f9624h = i14;
                return;
            } else {
                d(bArr, i10 + i13, this.f9621e);
                i13 += 16;
            }
        }
    }
}
