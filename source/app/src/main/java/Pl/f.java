package Pl;

public class f {

    public int f21645a;

    public int[] f21646b;

    public int[] f21647c;

    public int[] f21648d;

    public f(int i10) throws IllegalArgumentException {
        if (i10 <= 10) {
            e(1, new int[]{10}, new int[]{3}, new int[]{2});
        } else if (i10 <= 20) {
            e(2, new int[]{10, 10}, new int[]{5, 4}, new int[]{2, 2});
        } else {
            e(4, new int[]{10, 10, 10, 10}, new int[]{9, 9, 9, 3}, new int[]{2, 2, 2, 2});
        }
    }

    public int[] a() {
        return org.bouncycastle.util.a.s(this.f21646b);
    }

    public int[] b() {
        return org.bouncycastle.util.a.s(this.f21648d);
    }

    public int c() {
        return this.f21645a;
    }

    public int[] d() {
        return org.bouncycastle.util.a.s(this.f21647c);
    }

    public final void e(int i10, int[] iArr, int[] iArr2, int[] iArr3) throws IllegalArgumentException {
        String str;
        boolean z10;
        this.f21645a = i10;
        if (i10 == iArr2.length && i10 == iArr.length && i10 == iArr3.length) {
            z10 = true;
            str = "";
        } else {
            str = "Unexpected parameterset format";
            z10 = false;
        }
        for (int i11 = 0; i11 < this.f21645a; i11++) {
            int i12 = iArr3[i11];
            if (i12 < 2 || (iArr[i11] - i12) % 2 != 0) {
                str = "Wrong parameter K (K >= 2 and H-K even required)!";
                z10 = false;
            }
            if (iArr[i11] < 4 || iArr2[i11] < 2) {
                str = "Wrong parameter H or w (H > 3 and w > 1 required)!";
                z10 = false;
            }
        }
        if (!z10) {
            throw new IllegalArgumentException(str);
        }
        this.f21646b = org.bouncycastle.util.a.s(iArr);
        this.f21647c = org.bouncycastle.util.a.s(iArr2);
        this.f21648d = org.bouncycastle.util.a.s(iArr3);
    }

    public f(int i10, int[] iArr, int[] iArr2, int[] iArr3) throws IllegalArgumentException {
        e(i10, iArr, iArr2, iArr3);
    }
}
