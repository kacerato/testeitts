package ol;

public class C14615x {

    public final AbstractC14606o f99701a;

    public final int f99702b;

    public C14615x(AbstractC14606o abstractC14606o) {
        this.f99701a = abstractC14606o;
        this.f99702b = abstractC14606o.f99604c;
    }

    public void a(byte[] bArr, int i10, int i11, int[] iArr, int i12, int i13) {
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i14 < i13) {
            if (i15 == 0) {
                i15 += 8;
                i16 = bArr[i10];
                i10++;
            }
            i15 -= this.f99701a.f99605d;
            iArr[i12] = (i16 >>> i15) & (i11 - 1);
            i14++;
            i12++;
        }
    }

    public byte[] b(byte[] bArr, int i10, int i11, byte[] bArr2, C14592a c14592a) {
        if (i11 == 0) {
            return org.bouncycastle.util.a.p(bArr);
        }
        if (i10 + i11 > this.f99702b - 1) {
            return null;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            c14592a.i(i10 + i12);
            bArr = this.f99701a.a(bArr2, c14592a, bArr);
        }
        return bArr;
    }

    public byte[] c(byte[] bArr, byte[] bArr2, byte[] bArr3, C14592a c14592a) {
        AbstractC14606o abstractC14606o;
        C14592a c14592a2 = new C14592a(c14592a);
        AbstractC14606o abstractC14606o2 = this.f99701a;
        int[] iArr = new int[abstractC14606o2.f99606e];
        a(bArr2, 0, this.f99702b, iArr, 0, abstractC14606o2.f99607f);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            abstractC14606o = this.f99701a;
            if (i10 >= abstractC14606o.f99607f) {
                break;
            }
            i11 += (this.f99702b - 1) - iArr[i10];
            i10++;
        }
        int i12 = abstractC14606o.f99608g;
        int i13 = abstractC14606o.f99605d;
        byte[] k10 = org.bouncycastle.util.p.k(i11 << (8 - ((i12 * i13) % 8)));
        int i14 = 4 - (((i12 * i13) + 7) / 8);
        int i15 = this.f99702b;
        AbstractC14606o abstractC14606o3 = this.f99701a;
        a(k10, i14, i15, iArr, abstractC14606o3.f99607f, abstractC14606o3.f99608g);
        AbstractC14606o abstractC14606o4 = this.f99701a;
        byte[] bArr4 = new byte[abstractC14606o4.f99603b];
        byte[][] bArr5 = new byte[abstractC14606o4.f99606e];
        for (int i16 = 0; i16 < this.f99701a.f99606e; i16++) {
            c14592a.h(i16);
            int i17 = this.f99701a.f99603b;
            System.arraycopy(bArr, i16 * i17, bArr4, 0, i17);
            int i18 = iArr[i16];
            bArr5[i16] = b(bArr4, i18, (this.f99702b - 1) - i18, bArr3, c14592a);
        }
        c14592a2.o(1);
        c14592a2.j(c14592a.b());
        return this.f99701a.f(bArr3, c14592a2, org.bouncycastle.util.a.E(bArr5));
    }

    public byte[] d(byte[] bArr, byte[] bArr2, C14592a c14592a) {
        C14592a c14592a2 = new C14592a(c14592a);
        byte[][] bArr3 = new byte[this.f99701a.f99606e];
        for (int i10 = 0; i10 < this.f99701a.f99606e; i10++) {
            C14592a c14592a3 = new C14592a(c14592a);
            c14592a3.o(5);
            c14592a3.j(c14592a.b());
            c14592a3.h(i10);
            c14592a3.i(0);
            byte[] d10 = this.f99701a.d(bArr2, bArr, c14592a3);
            c14592a3.o(0);
            c14592a3.j(c14592a.b());
            c14592a3.h(i10);
            c14592a3.i(0);
            bArr3[i10] = b(d10, 0, this.f99702b - 1, bArr2, c14592a3);
        }
        c14592a2.o(1);
        c14592a2.j(c14592a.b());
        return this.f99701a.f(bArr2, c14592a2, org.bouncycastle.util.a.E(bArr3));
    }

    public byte[] e(byte[] bArr, byte[] bArr2, byte[] bArr3, C14592a c14592a) {
        AbstractC14606o abstractC14606o;
        C14592a c14592a2 = new C14592a(c14592a);
        AbstractC14606o abstractC14606o2 = this.f99701a;
        int[] iArr = new int[abstractC14606o2.f99606e];
        a(bArr, 0, this.f99702b, iArr, 0, abstractC14606o2.f99607f);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            abstractC14606o = this.f99701a;
            if (i10 >= abstractC14606o.f99607f) {
                break;
            }
            i11 += (this.f99702b - 1) - iArr[i10];
            i10++;
        }
        int i12 = abstractC14606o.f99605d;
        if (i12 % 8 != 0) {
            i11 <<= 8 - ((abstractC14606o.f99608g * i12) % 8);
        }
        int i13 = ((abstractC14606o.f99608g * i12) + 7) / 8;
        int i14 = this.f99702b;
        AbstractC14606o abstractC14606o3 = this.f99701a;
        a(org.bouncycastle.util.p.k(i11), 4 - i13, i14, iArr, abstractC14606o3.f99607f, abstractC14606o3.f99608g);
        byte[][] bArr4 = new byte[this.f99701a.f99606e];
        for (int i15 = 0; i15 < this.f99701a.f99606e; i15++) {
            c14592a2.o(5);
            c14592a2.j(c14592a.b());
            c14592a2.h(i15);
            c14592a2.i(0);
            byte[] d10 = this.f99701a.d(bArr3, bArr2, c14592a2);
            c14592a2.o(0);
            c14592a2.j(c14592a.b());
            c14592a2.h(i15);
            c14592a2.i(0);
            bArr4[i15] = b(d10, 0, iArr[i15], bArr3, c14592a2);
        }
        return org.bouncycastle.util.a.E(bArr4);
    }
}
