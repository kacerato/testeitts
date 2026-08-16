package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;

public abstract class AbstractC2658p implements Bi.D, org.bouncycastle.util.n {

    public static final int f9918e = 64;

    public final EnumC2383o f9919a;

    public final byte[] f9920b;

    public int f9921c;

    public long f9922d;

    public AbstractC2658p() {
        this(EnumC2383o.ANY);
    }

    public void d(AbstractC2658p abstractC2658p) {
        byte[] bArr = abstractC2658p.f9920b;
        System.arraycopy(bArr, 0, this.f9920b, 0, bArr.length);
        this.f9921c = abstractC2658p.f9921c;
        this.f9922d = abstractC2658p.f9922d;
    }

    @Override
    public int i() {
        return 64;
    }

    public abstract InterfaceC2382n k();

    public void l() {
        long j10 = this.f9922d << 3;
        byte b10 = Byte.MIN_VALUE;
        while (true) {
            update(b10);
            if (this.f9921c == 0) {
                o(j10);
                n();
                return;
            }
            b10 = 0;
        }
    }

    public void m(byte[] bArr) {
        System.arraycopy(this.f9920b, 0, bArr, 0, this.f9921c);
        org.bouncycastle.util.p.h(this.f9921c, bArr, 4);
        org.bouncycastle.util.p.D(this.f9922d, bArr, 8);
    }

    public abstract void n();

    public abstract void o(long j10);

    public abstract void p(byte[] bArr, int i10);

    @Override
    public void reset() {
        this.f9922d = 0L;
        this.f9921c = 0;
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f9920b;
            if (i10 >= bArr.length) {
                return;
            }
            bArr[i10] = 0;
            i10++;
        }
    }

    @Override
    public void update(byte b10) {
        byte[] bArr = this.f9920b;
        int i10 = this.f9921c;
        int i11 = i10 + 1;
        this.f9921c = i11;
        bArr[i10] = b10;
        if (i11 == bArr.length) {
            p(bArr, 0);
            this.f9921c = 0;
        }
        this.f9922d++;
    }

    public AbstractC2658p(EnumC2383o enumC2383o) {
        this.f9920b = new byte[4];
        this.f9919a = enumC2383o;
        this.f9921c = 0;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        int i12 = 0;
        int max = Math.max(0, i11);
        if (this.f9921c != 0) {
            int i13 = 0;
            while (true) {
                if (i13 >= max) {
                    i12 = i13;
                    break;
                }
                byte[] bArr2 = this.f9920b;
                int i14 = this.f9921c;
                int i15 = i14 + 1;
                this.f9921c = i15;
                int i16 = i13 + 1;
                bArr2[i14] = bArr[i13 + i10];
                if (i15 == 4) {
                    p(bArr2, 0);
                    this.f9921c = 0;
                    i12 = i16;
                    break;
                }
                i13 = i16;
            }
        }
        int i17 = max - 3;
        while (i12 < i17) {
            p(bArr, i10 + i12);
            i12 += 4;
        }
        while (i12 < max) {
            byte[] bArr3 = this.f9920b;
            int i18 = this.f9921c;
            this.f9921c = i18 + 1;
            bArr3[i18] = bArr[i12 + i10];
            i12++;
        }
        this.f9922d += max;
    }

    public AbstractC2658p(AbstractC2658p abstractC2658p) {
        this.f9920b = new byte[4];
        this.f9919a = abstractC2658p.f9919a;
        d(abstractC2658p);
    }

    public AbstractC2658p(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        this.f9920b = bArr2;
        this.f9919a = EnumC2383o.values()[bArr[bArr.length - 1]];
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.f9921c = org.bouncycastle.util.p.a(bArr, 4);
        this.f9922d = org.bouncycastle.util.p.d(bArr, 8);
    }
}
