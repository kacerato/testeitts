package Wd;

import he.InterfaceC13470z;
import java.util.Arrays;

public abstract class AbstractC3178v extends c0 {

    public static final long f27693t = 1;

    public transient double[] f27694q;

    public double f27695r;

    public boolean f27696s;

    public AbstractC3178v() {
        double d10 = Vd.a.f26861j;
        this.f27695r = d10;
        if (d10 != 0.0d) {
            Arrays.fill(this.f27694q, d10);
        }
    }

    public boolean Y0(double d10) {
        return mf(d10) >= 0;
    }

    @Override
    public void hf(int i10) {
        this.f27694q[i10] = this.f27695r;
        super.hf(i10);
    }

    public double i() {
        return this.f27695r;
    }

    public boolean i1(InterfaceC13470z interfaceC13470z) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27694q;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13470z.a(dArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f27694q = new double[jf2];
        return jf2;
    }

    public int mf(double d10) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27694q;
        int length = bArr.length;
        int b10 = Vd.b.b(d10) & Integer.MAX_VALUE;
        int i10 = b10 % length;
        byte b11 = bArr[i10];
        if (b11 == 0) {
            return -1;
        }
        return (b11 == 1 && dArr[i10] == d10) ? i10 : nf(d10, i10, b10, b11);
    }

    public int nf(double d10, int i10, int i11, byte b10) {
        int length = this.f27694q.length;
        int i12 = (i11 % (length - 2)) + 1;
        int i13 = i10;
        do {
            i13 -= i12;
            if (i13 < 0) {
                i13 += length;
            }
            byte b11 = this.f27568l[i13];
            if (b11 == 0) {
                return -1;
            }
            if (d10 == this.f27694q[i13] && b11 != 2) {
                return i13;
            }
        } while (i13 != i10);
        return -1;
    }

    public int of(double d10) {
        int b10 = Vd.b.b(d10) & Integer.MAX_VALUE;
        byte[] bArr = this.f27568l;
        int length = b10 % bArr.length;
        byte b11 = bArr[length];
        this.f27696s = false;
        if (b11 != 0) {
            return (b11 == 1 && this.f27694q[length] == d10) ? (-length) - 1 : qf(d10, length, b10, b11);
        }
        this.f27696s = true;
        pf(length, d10);
        return length;
    }

    public void pf(int i10, double d10) {
        this.f27694q[i10] = d10;
        this.f27568l[i10] = 1;
    }

    public int qf(double d10, int i10, int i11, byte b10) {
        int length = this.f27694q.length;
        int i12 = (i11 % (length - 2)) + 1;
        int i13 = i10;
        int i14 = -1;
        do {
            if (b10 == 2 && i14 == -1) {
                i14 = i13;
            }
            i13 -= i12;
            if (i13 < 0) {
                i13 += length;
            }
            b10 = this.f27568l[i13];
            if (b10 == 0) {
                if (i14 != -1) {
                    pf(i14, d10);
                    return i14;
                }
                this.f27696s = true;
                pf(i13, d10);
                return i13;
            }
            if (b10 == 1 && this.f27694q[i13] == d10) {
                return (-i13) - 1;
            }
        } while (i13 != i10);
        if (i14 == -1) {
            throw new IllegalStateException("No free or removed slots available. Key set full?!!");
        }
        pf(i14, d10);
        return i14;
    }

    public AbstractC3178v(int i10) {
        super(i10);
        double d10 = Vd.a.f26861j;
        this.f27695r = d10;
        if (d10 != 0.0d) {
            Arrays.fill(this.f27694q, d10);
        }
    }

    public AbstractC3178v(int i10, float f10) {
        super(i10, f10);
        double d10 = Vd.a.f26861j;
        this.f27695r = d10;
        if (d10 != 0.0d) {
            Arrays.fill(this.f27694q, d10);
        }
    }

    public AbstractC3178v(int i10, float f10, double d10) {
        super(i10, f10);
        this.f27695r = d10;
        if (d10 != 0.0d) {
            Arrays.fill(this.f27694q, d10);
        }
    }
}
