package Sl;

import Bi.InterfaceC2392y;

public class a {

    public byte[] f23632a;

    public int f23633b;

    public int f23634c;

    public int f23635d;

    public C0566a f23638g;

    public boolean f23640i;

    public InterfaceC2392y f23641j;

    public int f23642k;

    public int f23636e = 0;

    public int f23637f = 0;

    public int f23639h = 0;

    public static class C0566a {

        public byte[] f23643a = new byte[4];

        public int f23644b;

        public int f23645c;

        public void a(byte b10) {
            int i10 = this.f23644b;
            byte[] bArr = this.f23643a;
            if (i10 == bArr.length) {
                this.f23643a = a.c(bArr, bArr.length * 2);
            }
            int i11 = this.f23644b;
            if (i11 == 0) {
                this.f23644b = 1;
                this.f23643a[0] = b10;
                this.f23645c = 8;
                return;
            }
            int i12 = this.f23645c;
            if (i12 == 8) {
                byte[] bArr2 = this.f23643a;
                this.f23644b = i11 + 1;
                bArr2[i11] = b10;
                return;
            }
            byte[] bArr3 = this.f23643a;
            int i13 = i11 - 1;
            int i14 = b10 & 255;
            bArr3[i13] = (byte) ((i14 << i12) | bArr3[i13]);
            this.f23644b = i11 + 1;
            bArr3[i11] = (byte) (i14 >> (8 - i12));
        }

        public void b(byte[] bArr) {
            for (int i10 = 0; i10 != bArr.length; i10++) {
                a(bArr[i10]);
            }
        }

        public byte[] c() {
            return org.bouncycastle.util.a.p(this.f23643a);
        }

        public int d(int i10) {
            int i11 = (((this.f23644b - 1) * 8) + this.f23645c) - i10;
            int i12 = i11 / 8;
            int i13 = i11 % 8;
            int i14 = (this.f23643a[i12] & 255) >>> i13;
            int i15 = 8 - i13;
            while (true) {
                i12++;
                if (i12 >= this.f23644b) {
                    return i14;
                }
                i14 |= (this.f23643a[i12] & 255) << i15;
                i15 += 8;
            }
        }

        public C0566a e(int i10) {
            int i11;
            C0566a c0566a = new C0566a();
            int i12 = (i10 + 7) / 8;
            c0566a.f23644b = i12;
            c0566a.f23643a = new byte[i12];
            int i13 = 0;
            while (true) {
                i11 = c0566a.f23644b;
                if (i13 >= i11) {
                    break;
                }
                c0566a.f23643a[i13] = this.f23643a[i13];
                i13++;
            }
            int i14 = i10 % 8;
            c0566a.f23645c = i14;
            if (i14 == 0) {
                c0566a.f23645c = 8;
            } else {
                int i15 = 32 - i14;
                byte[] bArr = c0566a.f23643a;
                bArr[i11 - 1] = (byte) ((bArr[i11 - 1] << i15) >>> i15);
            }
            return c0566a;
        }
    }

    public a(byte[] bArr, e eVar) {
        this.f23632a = bArr;
        this.f23633b = eVar.f23684b;
        this.f23634c = eVar.f23702t;
        this.f23635d = eVar.f23703u;
        InterfaceC2392y interfaceC2392y = eVar.f23683B;
        this.f23641j = interfaceC2392y;
        this.f23642k = interfaceC2392y.f();
        this.f23640i = false;
    }

    public static byte[] c(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[i10];
        if (i10 >= bArr.length) {
            i10 = bArr.length;
        }
        System.arraycopy(bArr, 0, bArr2, 0, i10);
        return bArr2;
    }

    public final void b(C0566a c0566a, byte[] bArr) {
        InterfaceC2392y interfaceC2392y = this.f23641j;
        byte[] bArr2 = this.f23632a;
        interfaceC2392y.update(bArr2, 0, bArr2.length);
        e(this.f23641j, this.f23639h);
        this.f23641j.c(bArr, 0);
        c0566a.b(bArr);
    }

    public int d() {
        int d10;
        int i10;
        int i11;
        int i12;
        if (!this.f23640i) {
            this.f23638g = new C0566a();
            byte[] bArr = new byte[this.f23641j.f()];
            while (true) {
                int i13 = this.f23639h;
                i12 = this.f23635d;
                if (i13 >= i12) {
                    break;
                }
                b(this.f23638g, bArr);
                this.f23639h++;
            }
            int i14 = i12 * 8 * this.f23642k;
            this.f23636e = i14;
            this.f23637f = i14;
            this.f23640i = true;
        }
        do {
            this.f23636e += this.f23634c;
            C0566a e10 = this.f23638g.e(this.f23637f);
            int i15 = this.f23637f;
            int i16 = this.f23634c;
            if (i15 < i16) {
                int i17 = i16 - i15;
                int i18 = this.f23639h;
                int i19 = this.f23642k;
                int i20 = i18 + (((i17 + i19) - 1) / i19);
                byte[] bArr2 = new byte[this.f23641j.f()];
                while (this.f23639h < i20) {
                    b(e10, bArr2);
                    this.f23639h++;
                    int i21 = this.f23642k;
                    if (i17 > i21 * 8) {
                        i17 -= i21 * 8;
                    }
                }
                this.f23637f = (this.f23642k * 8) - i17;
                C0566a c0566a = new C0566a();
                this.f23638g = c0566a;
                c0566a.b(bArr2);
            } else {
                this.f23637f = i15 - i16;
            }
            d10 = e10.d(this.f23634c);
            i10 = this.f23634c;
            i11 = this.f23633b;
        } while (d10 >= (1 << i10) - ((1 << i10) % i11));
        return d10 % i11;
    }

    public final void e(InterfaceC2392y interfaceC2392y, int i10) {
        interfaceC2392y.update((byte) (i10 >> 24));
        interfaceC2392y.update((byte) (i10 >> 16));
        interfaceC2392y.update((byte) (i10 >> 8));
        interfaceC2392y.update((byte) i10);
    }
}
