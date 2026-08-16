package Wd;

import java.util.Arrays;

public abstract class X extends c0 {

    public static final long f27525t = 1;

    public transient long[] f27526q;

    public long f27527r;

    public boolean f27528s;

    public X() {
        long j10 = Vd.a.f26859h;
        this.f27527r = j10;
        if (j10 != 0) {
            Arrays.fill(this.f27526q, j10);
        }
    }

    public boolean X0(long j10) {
        return mf(j10) >= 0;
    }

    @Override
    public void hf(int i10) {
        this.f27526q[i10] = this.f27527r;
        super.hf(i10);
    }

    public long i() {
        return this.f27527r;
    }

    public boolean j1(he.b0 b0Var) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27526q;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !b0Var.a(jArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f27526q = new long[jf2];
        return jf2;
    }

    public int mf(long j10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27526q;
        int length = bArr.length;
        int e10 = Vd.b.e(j10) & Integer.MAX_VALUE;
        int i10 = e10 % length;
        byte b10 = bArr[i10];
        if (b10 == 0) {
            return -1;
        }
        return (b10 == 1 && jArr[i10] == j10) ? i10 : nf(j10, i10, e10, b10);
    }

    public int nf(long j10, int i10, int i11, byte b10) {
        int length = this.f27526q.length;
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
            if (j10 == this.f27526q[i13] && b11 != 2) {
                return i13;
            }
        } while (i13 != i10);
        return -1;
    }

    public int of(long j10) {
        int e10 = Vd.b.e(j10) & Integer.MAX_VALUE;
        byte[] bArr = this.f27568l;
        int length = e10 % bArr.length;
        byte b10 = bArr[length];
        this.f27528s = false;
        if (b10 != 0) {
            return (b10 == 1 && this.f27526q[length] == j10) ? (-length) - 1 : qf(j10, length, e10, b10);
        }
        this.f27528s = true;
        pf(length, j10);
        return length;
    }

    public void pf(int i10, long j10) {
        this.f27526q[i10] = j10;
        this.f27568l[i10] = 1;
    }

    public int qf(long j10, int i10, int i11, byte b10) {
        int length = this.f27526q.length;
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
                    pf(i14, j10);
                    return i14;
                }
                this.f27528s = true;
                pf(i13, j10);
                return i13;
            }
            if (b10 == 1 && this.f27526q[i13] == j10) {
                return (-i13) - 1;
            }
        } while (i13 != i10);
        if (i14 == -1) {
            throw new IllegalStateException("No free or removed slots available. Key set full?!!");
        }
        pf(i14, j10);
        return i14;
    }

    public X(int i10) {
        super(i10);
        long j10 = Vd.a.f26859h;
        this.f27527r = j10;
        if (j10 != 0) {
            Arrays.fill(this.f27526q, j10);
        }
    }

    public X(int i10, float f10) {
        super(i10, f10);
        long j10 = Vd.a.f26859h;
        this.f27527r = j10;
        if (j10 != 0) {
            Arrays.fill(this.f27526q, j10);
        }
    }

    public X(int i10, float f10, long j10) {
        super(i10, f10);
        this.f27527r = j10;
        if (j10 != 0) {
            Arrays.fill(this.f27526q, j10);
        }
    }
}
