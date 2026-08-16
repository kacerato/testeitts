package Wd;

import java.util.Arrays;

public abstract class O extends c0 {

    public static final long f27486t = 1;

    public transient int[] f27487q;

    public int f27488r;

    public boolean f27489s;

    public O() {
        int i10 = Vd.a.f26858g;
        this.f27488r = i10;
        if (i10 != 0) {
            Arrays.fill(this.f27487q, i10);
        }
    }

    public boolean U0(he.S s10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27487q;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !s10.a(iArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public boolean contains(int i10) {
        return mf(i10) >= 0;
    }

    @Override
    public void hf(int i10) {
        this.f27487q[i10] = this.f27488r;
        super.hf(i10);
    }

    public int i() {
        return this.f27488r;
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f27487q = new int[jf2];
        return jf2;
    }

    public int mf(int i10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27487q;
        int length = bArr.length;
        int d10 = Vd.b.d(i10) & Integer.MAX_VALUE;
        int i11 = d10 % length;
        byte b10 = bArr[i11];
        if (b10 == 0) {
            return -1;
        }
        return (b10 == 1 && iArr[i11] == i10) ? i11 : nf(i10, i11, d10, b10);
    }

    public int nf(int i10, int i11, int i12, byte b10) {
        int length = this.f27487q.length;
        int i13 = (i12 % (length - 2)) + 1;
        int i14 = i11;
        do {
            i14 -= i13;
            if (i14 < 0) {
                i14 += length;
            }
            byte b11 = this.f27568l[i14];
            if (b11 == 0) {
                return -1;
            }
            if (i10 == this.f27487q[i14] && b11 != 2) {
                return i14;
            }
        } while (i14 != i11);
        return -1;
    }

    public int of(int i10) {
        int d10 = Vd.b.d(i10) & Integer.MAX_VALUE;
        byte[] bArr = this.f27568l;
        int length = d10 % bArr.length;
        byte b10 = bArr[length];
        this.f27489s = false;
        if (b10 != 0) {
            return (b10 == 1 && this.f27487q[length] == i10) ? (-length) - 1 : qf(i10, length, d10, b10);
        }
        this.f27489s = true;
        pf(length, i10);
        return length;
    }

    public void pf(int i10, int i11) {
        this.f27487q[i10] = i11;
        this.f27568l[i10] = 1;
    }

    public int qf(int i10, int i11, int i12, byte b10) {
        int length = this.f27487q.length;
        int i13 = (i12 % (length - 2)) + 1;
        int i14 = i11;
        int i15 = -1;
        do {
            if (b10 == 2 && i15 == -1) {
                i15 = i14;
            }
            i14 -= i13;
            if (i14 < 0) {
                i14 += length;
            }
            b10 = this.f27568l[i14];
            if (b10 == 0) {
                if (i15 != -1) {
                    pf(i15, i10);
                    return i15;
                }
                this.f27489s = true;
                pf(i14, i10);
                return i14;
            }
            if (b10 == 1 && this.f27487q[i14] == i10) {
                return (-i14) - 1;
            }
        } while (i14 != i11);
        if (i15 == -1) {
            throw new IllegalStateException("No free or removed slots available. Key set full?!!");
        }
        pf(i15, i10);
        return i15;
    }

    public O(int i10) {
        super(i10);
        int i11 = Vd.a.f26858g;
        this.f27488r = i11;
        if (i11 != 0) {
            Arrays.fill(this.f27487q, i11);
        }
    }

    public O(int i10, float f10) {
        super(i10, f10);
        int i11 = Vd.a.f26858g;
        this.f27488r = i11;
        if (i11 != 0) {
            Arrays.fill(this.f27487q, i11);
        }
    }

    public O(int i10, float f10, int i11) {
        super(i10, f10);
        this.f27488r = i11;
        if (i11 != 0) {
            Arrays.fill(this.f27487q, i11);
        }
    }
}
