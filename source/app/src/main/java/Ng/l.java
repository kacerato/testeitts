package Ng;

import java.util.Arrays;

public final class l {

    public static final int f16362c = 65535;

    public static final int f16363d = 1;

    public static final int f16364e = 2;

    public static final int f16365f = 4;

    public static final int f16366g = 5;

    public static final int f16367h = 6;

    public static final int f16368i = 7;

    public static final int f16369j = 10;

    public int f16370a;

    public final int[] f16371b = new int[10];

    public void a() {
        this.f16370a = 0;
        Arrays.fill(this.f16371b, 0);
    }

    public int b(int i10) {
        return this.f16371b[i10];
    }

    public boolean c(boolean z10) {
        return ((this.f16370a & 4) != 0 ? this.f16371b[2] : z10 ? 1 : 0) == 1;
    }

    public int d() {
        if ((this.f16370a & 2) != 0) {
            return this.f16371b[1];
        }
        return -1;
    }

    public int e() {
        if ((this.f16370a & 128) != 0) {
            return this.f16371b[7];
        }
        return 65535;
    }

    public int f(int i10) {
        return (this.f16370a & 16) != 0 ? this.f16371b[4] : i10;
    }

    public int g(int i10) {
        return (this.f16370a & 32) != 0 ? this.f16371b[5] : i10;
    }

    public int h(int i10) {
        return (this.f16370a & 64) != 0 ? this.f16371b[6] : i10;
    }

    public boolean i(int i10) {
        return ((1 << i10) & this.f16370a) != 0;
    }

    public void j(l lVar) {
        for (int i10 = 0; i10 < 10; i10++) {
            if (lVar.i(i10)) {
                k(i10, lVar.b(i10));
            }
        }
    }

    public l k(int i10, int i11) {
        if (i10 >= 0) {
            int[] iArr = this.f16371b;
            if (i10 < iArr.length) {
                this.f16370a = (1 << i10) | this.f16370a;
                iArr[i10] = i11;
            }
        }
        return this;
    }

    public int l() {
        return Integer.bitCount(this.f16370a);
    }
}
