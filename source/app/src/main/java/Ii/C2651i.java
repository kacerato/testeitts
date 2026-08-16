package Ii;

import Bi.EnumC2383o;

public class C2651i extends Q {

    public static final byte[] f9861j = new byte[100];

    public final byte[] f9862i;

    public C2651i(int i10, EnumC2383o enumC2383o, byte[] bArr, byte[] bArr2) {
        super(i10, enumC2383o);
        if ((bArr == null || bArr.length == 0) && (bArr2 == null || bArr2.length == 0)) {
            this.f9862i = null;
        } else {
            this.f9862i = org.bouncycastle.util.a.C(b0.c(this.f9971d / 8), v(bArr), v(bArr2));
            u();
        }
    }

    @Override
    public String b() {
        return "CSHAKE" + this.f9973f;
    }

    @Override
    public int h(byte[] bArr, int i10, int i11) {
        if (this.f9862i == null) {
            return super.h(bArr, i10, i11);
        }
        if (!this.f9974g) {
            l(0, 2);
        }
        r(bArr, i10, i11 * 8);
        return i11;
    }

    @Override
    public void reset() {
        super.reset();
        if (this.f9862i != null) {
            u();
        }
    }

    public final void u() {
        int i10 = this.f9971d / 8;
        byte[] bArr = this.f9862i;
        k(bArr, 0, bArr.length);
        int length = this.f9862i.length % i10;
        if (length == 0) {
            return;
        }
        while (true) {
            i10 -= length;
            byte[] bArr2 = f9861j;
            if (i10 <= bArr2.length) {
                k(bArr2, 0, i10);
                return;
            } else {
                k(bArr2, 0, bArr2.length);
                length = bArr2.length;
            }
        }
    }

    public final byte[] v(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? b0.c(0L) : org.bouncycastle.util.a.B(b0.c(bArr.length * 8), bArr);
    }

    public C2651i(int i10, byte[] bArr, byte[] bArr2) {
        this(i10, EnumC2383o.ANY, bArr, bArr2);
    }

    public C2651i(C2651i c2651i) {
        super(c2651i);
        this.f9862i = org.bouncycastle.util.a.p(c2651i.f9862i);
    }
}
