package ol;

import java.util.LinkedList;

public class C14594c {

    public final byte[] f99577a;

    public final byte[] f99578b;

    public AbstractC14606o f99579c;

    public C14615x f99580d;

    public final byte[] f99581e;

    public C14594c(AbstractC14606o abstractC14606o, byte[] bArr, byte[] bArr2) {
        this.f99577a = bArr;
        this.f99578b = bArr2;
        this.f99579c = abstractC14606o;
        this.f99580d = new C14615x(abstractC14606o);
        C14592a c14592a = new C14592a();
        c14592a.k(abstractC14606o.f99609h - 1);
        c14592a.l(0L);
        if (bArr != null) {
            this.f99581e = d(bArr, bArr2, c14592a);
        } else {
            this.f99581e = null;
        }
    }

    public byte[] a(byte[] bArr, long j10, int i10) {
        long j11 = j10;
        C14592a c14592a = new C14592a();
        c14592a.k(0);
        c14592a.l(j11);
        C14604m f10 = f(bArr, this.f99577a, i10, this.f99578b, c14592a);
        int i11 = this.f99579c.f99609h;
        C14604m[] c14604mArr = new C14604m[i11];
        c14604mArr[0] = f10;
        c14592a.k(0);
        c14592a.l(j11);
        byte[] e10 = e(i10, f10, bArr, this.f99578b, c14592a);
        int i12 = 1;
        while (true) {
            AbstractC14606o abstractC14606o = this.f99579c;
            if (i12 >= abstractC14606o.f99609h) {
                break;
            }
            int i13 = (int) (((1 << r0) - 1) & j11);
            j11 >>>= abstractC14606o.f99613l;
            c14592a.k(i12);
            c14592a.l(j11);
            C14604m f11 = f(e10, this.f99577a, i13, this.f99578b, c14592a);
            c14604mArr[i12] = f11;
            if (i12 < this.f99579c.f99609h - 1) {
                e10 = e(i13, f11, e10, this.f99578b, c14592a);
            }
            i12++;
        }
        byte[][] bArr2 = new byte[i11];
        for (int i14 = 0; i14 != i11; i14++) {
            C14604m c14604m = c14604mArr[i14];
            bArr2[i14] = org.bouncycastle.util.a.B(c14604m.f99598a, org.bouncycastle.util.a.E(c14604m.f99599b));
        }
        return org.bouncycastle.util.a.E(bArr2);
    }

    public byte[] b(byte[] bArr, int i10, int i11, byte[] bArr2, C14592a c14592a) {
        C14592a c14592a2 = new C14592a(c14592a);
        LinkedList linkedList = new LinkedList();
        int i12 = 1 << i11;
        if (i10 % i12 != 0) {
            return null;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            c14592a2.o(0);
            int i14 = i10 + i13;
            c14592a2.j(i14);
            byte[] d10 = this.f99580d.d(bArr, bArr2, c14592a2);
            c14592a2.o(2);
            c14592a2.m(1);
            c14592a2.n(i14);
            while (!linkedList.isEmpty() && ((C14600i) linkedList.get(0)).f99590b == c14592a2.e()) {
                c14592a2.n((c14592a2.f() - 1) / 2);
                d10 = this.f99579c.b(bArr2, c14592a2, ((C14600i) linkedList.remove(0)).f99589a, d10);
                c14592a2.m(c14592a2.e() + 1);
            }
            linkedList.add(0, new C14600i(d10, c14592a2.e()));
        }
        return ((C14600i) linkedList.get(0)).f99589a;
    }

    public boolean c(byte[] bArr, C14604m[] c14604mArr, byte[] bArr2, long j10, int i10, byte[] bArr3) {
        C14592a c14592a = new C14592a();
        C14604m c14604m = c14604mArr[0];
        c14592a.k(0);
        c14592a.l(j10);
        byte[] e10 = e(i10, c14604m, bArr, bArr2, c14592a);
        int i11 = 1;
        while (true) {
            AbstractC14606o abstractC14606o = this.f99579c;
            if (i11 >= abstractC14606o.f99609h) {
                return org.bouncycastle.util.a.g(bArr3, e10);
            }
            int i12 = (int) (((1 << r0) - 1) & j10);
            j10 >>>= abstractC14606o.f99613l;
            C14604m c14604m2 = c14604mArr[i11];
            c14592a.k(i11);
            c14592a.l(j10);
            e10 = e(i12, c14604m2, e10, bArr2, c14592a);
            i11++;
        }
    }

    public byte[] d(byte[] bArr, byte[] bArr2, C14592a c14592a) {
        return b(bArr, 0, this.f99579c.f99613l, bArr2, c14592a);
    }

    public byte[] e(int i10, C14604m c14604m, byte[] bArr, byte[] bArr2, C14592a c14592a) {
        C14592a c14592a2 = new C14592a(c14592a);
        int i11 = 0;
        c14592a2.o(0);
        c14592a2.j(i10);
        byte[] a10 = c14604m.a();
        byte[][] b10 = c14604m.b();
        byte[] c10 = this.f99580d.c(a10, bArr, bArr2, c14592a2);
        c14592a2.o(2);
        c14592a2.n(i10);
        while (i11 < this.f99579c.f99613l) {
            int i12 = i11 + 1;
            c14592a2.m(i12);
            if ((i10 / (1 << i11)) % 2 == 0) {
                c14592a2.n(c14592a2.f() / 2);
                c10 = this.f99579c.b(bArr2, c14592a2, c10, b10[i11]);
            } else {
                c14592a2.n((c14592a2.f() - 1) / 2);
                c10 = this.f99579c.b(bArr2, c14592a2, b10[i11], c10);
            }
            i11 = i12;
        }
        return c10;
    }

    public C14604m f(byte[] bArr, byte[] bArr2, int i10, byte[] bArr3, C14592a c14592a) {
        byte[][] bArr4 = new byte[this.f99579c.f99613l];
        C14592a c14592a2 = new C14592a(c14592a);
        c14592a2.o(2);
        c14592a2.k(c14592a.c());
        c14592a2.l(c14592a.d());
        for (int i11 = 0; i11 < this.f99579c.f99613l; i11++) {
            int i12 = 1 << i11;
            bArr4[i11] = b(bArr2, (1 ^ (i10 / i12)) * i12, i11, bArr3, c14592a2);
        }
        C14592a c14592a3 = new C14592a(c14592a);
        c14592a3.o(1);
        c14592a3.j(i10);
        return new C14604m(this.f99580d.e(bArr, bArr2, bArr3, c14592a3), bArr4);
    }
}
