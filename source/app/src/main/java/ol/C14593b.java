package ol;

import java.util.LinkedList;

public class C14593b {

    public AbstractC14606o f99576a;

    public C14593b(AbstractC14606o abstractC14606o) {
        this.f99576a = abstractC14606o;
    }

    public static int[] a(byte[] bArr, int i10, int i11) {
        int[] iArr = new int[i10];
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            iArr[i13] = 0;
            for (int i14 = 0; i14 < i11; i14++) {
                iArr[i13] = iArr[i13] ^ (((bArr[i12 >> 3] >> (i12 & 7)) & 1) << i14);
                i12++;
            }
        }
        return iArr;
    }

    public byte[] b(C14603l[] c14603lArr, byte[] bArr, byte[] bArr2, C14592a c14592a) {
        int i10 = 2;
        byte[][] bArr3 = new byte[2];
        AbstractC14606o abstractC14606o = this.f99576a;
        int i11 = abstractC14606o.f99611j;
        byte[][] bArr4 = new byte[i11];
        int i12 = abstractC14606o.f99614m;
        int[] a10 = a(bArr, i11, abstractC14606o.f99610i);
        int i13 = 0;
        while (i13 < this.f99576a.f99611j) {
            int i14 = a10[i13];
            byte[] b10 = c14603lArr[i13].b();
            c14592a.m(0);
            int i15 = (i13 * i12) + i14;
            c14592a.n(i15);
            bArr3[0] = this.f99576a.a(bArr2, c14592a, b10);
            byte[][] a11 = c14603lArr[i13].a();
            c14592a.n(i15);
            int i16 = 0;
            while (i16 < this.f99576a.f99610i) {
                int i17 = i16 + 1;
                c14592a.m(i17);
                if ((i14 / (1 << i16)) % i10 == 0) {
                    c14592a.n(c14592a.f() / i10);
                    bArr3[1] = this.f99576a.b(bArr2, c14592a, bArr3[0], a11[i16]);
                } else {
                    c14592a.n((c14592a.f() - 1) / 2);
                    bArr3[1] = this.f99576a.b(bArr2, c14592a, a11[i16], bArr3[0]);
                }
                bArr3[0] = bArr3[1];
                i16 = i17;
                i10 = 2;
            }
            bArr4[i13] = bArr3[0];
            i13++;
            i10 = 2;
        }
        C14592a c14592a2 = new C14592a(c14592a);
        c14592a2.o(4);
        c14592a2.j(c14592a.b());
        return this.f99576a.f(bArr2, c14592a2, org.bouncycastle.util.a.E(bArr4));
    }

    public C14603l[] c(byte[] bArr, byte[] bArr2, byte[] bArr3, C14592a c14592a) {
        C14593b c14593b = this;
        C14592a c14592a2 = new C14592a(c14592a);
        AbstractC14606o abstractC14606o = c14593b.f99576a;
        int[] a10 = a(bArr, abstractC14606o.f99611j, abstractC14606o.f99610i);
        AbstractC14606o abstractC14606o2 = c14593b.f99576a;
        C14603l[] c14603lArr = new C14603l[abstractC14606o2.f99611j];
        int i10 = abstractC14606o2.f99614m;
        int i11 = 0;
        int i12 = 0;
        while (i12 < c14593b.f99576a.f99611j) {
            int i13 = a10[i12];
            c14592a2.o(6);
            c14592a2.j(c14592a.b());
            c14592a2.m(i11);
            int i14 = i12 * i10;
            c14592a2.n(i14 + i13);
            byte[] d10 = c14593b.f99576a.d(bArr3, bArr2, c14592a2);
            c14592a2.a(3);
            byte[][] bArr4 = new byte[c14593b.f99576a.f99610i];
            int i15 = i11;
            while (i15 < c14593b.f99576a.f99610i) {
                int i16 = 1 << i15;
                int i17 = i15;
                byte[][] bArr5 = bArr4;
                bArr5[i17] = d(bArr2, i14 + (((i13 / i16) ^ 1) * i16), i17, bArr3, c14592a2);
                i15 = i17 + 1;
                d10 = d10;
                bArr4 = bArr5;
                c14593b = this;
            }
            c14603lArr[i12] = new C14603l(d10, bArr4);
            i12++;
            i11 = 0;
            c14593b = this;
        }
        return c14603lArr;
    }

    public byte[] d(byte[] bArr, int i10, int i11, byte[] bArr2, C14592a c14592a) {
        LinkedList linkedList = new LinkedList();
        int i12 = 1 << i11;
        if (i10 % i12 != 0) {
            return null;
        }
        C14592a c14592a2 = new C14592a(c14592a);
        for (int i13 = 0; i13 < i12; i13++) {
            c14592a2.o(6);
            c14592a2.j(c14592a.b());
            c14592a2.m(0);
            c14592a2.n(i10 + i13);
            byte[] d10 = this.f99576a.d(bArr2, bArr, c14592a2);
            c14592a2.a(3);
            byte[] a10 = this.f99576a.a(bArr2, c14592a2, d10);
            c14592a2.m(1);
            while (!linkedList.isEmpty() && ((C14600i) linkedList.get(0)).f99590b == c14592a2.e()) {
                c14592a2.n((c14592a2.f() - 1) / 2);
                a10 = this.f99576a.b(bArr2, c14592a2, ((C14600i) linkedList.remove(0)).f99589a, a10);
                c14592a2.m(c14592a2.e() + 1);
            }
            linkedList.add(0, new C14600i(a10, c14592a2.e()));
        }
        return ((C14600i) linkedList.get(0)).f99589a;
    }
}
