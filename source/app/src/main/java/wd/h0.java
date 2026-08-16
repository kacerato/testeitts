package Wd;

import he.t0;
import java.util.Arrays;

public abstract class h0 extends c0 {

    public static final long f27613t = 1;

    public transient short[] f27614q;

    public short f27615r;

    public boolean f27616s;

    public h0() {
        short s10 = Vd.a.f26856e;
        this.f27615r = s10;
        if (s10 != 0) {
            Arrays.fill(this.f27614q, s10);
        }
    }

    public boolean W0(short s10) {
        return mf(s10) >= 0;
    }

    public boolean h1(t0 t0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27614q;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !t0Var.a(sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void hf(int i10) {
        this.f27614q[i10] = this.f27615r;
        super.hf(i10);
    }

    public short i() {
        return this.f27615r;
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f27614q = new short[jf2];
        return jf2;
    }

    public int mf(short s10) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27614q;
        int length = bArr.length;
        int d10 = Vd.b.d(s10) & Integer.MAX_VALUE;
        int i10 = d10 % length;
        byte b10 = bArr[i10];
        if (b10 == 0) {
            return -1;
        }
        return (b10 == 1 && sArr[i10] == s10) ? i10 : nf(s10, i10, d10, b10);
    }

    public int nf(short s10, int i10, int i11, byte b10) {
        int length = this.f27614q.length;
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
            if (s10 == this.f27614q[i13] && b11 != 2) {
                return i13;
            }
        } while (i13 != i10);
        return -1;
    }

    public int of(short s10) {
        int d10 = Vd.b.d(s10) & Integer.MAX_VALUE;
        byte[] bArr = this.f27568l;
        int length = d10 % bArr.length;
        byte b10 = bArr[length];
        this.f27616s = false;
        if (b10 != 0) {
            return (b10 == 1 && this.f27614q[length] == s10) ? (-length) - 1 : qf(s10, length, d10, b10);
        }
        this.f27616s = true;
        pf(length, s10);
        return length;
    }

    public void pf(int i10, short s10) {
        this.f27614q[i10] = s10;
        this.f27568l[i10] = 1;
    }

    public int qf(short s10, int i10, int i11, byte b10) {
        int length = this.f27614q.length;
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
                    pf(i14, s10);
                    return i14;
                }
                this.f27616s = true;
                pf(i13, s10);
                return i13;
            }
            if (b10 == 1 && this.f27614q[i13] == s10) {
                return (-i13) - 1;
            }
        } while (i13 != i10);
        if (i14 == -1) {
            throw new IllegalStateException("No free or removed slots available. Key set full?!!");
        }
        pf(i14, s10);
        return i14;
    }

    public h0(int i10) {
        super(i10);
        short s10 = Vd.a.f26856e;
        this.f27615r = s10;
        if (s10 != 0) {
            Arrays.fill(this.f27614q, s10);
        }
    }

    public h0(int i10, float f10) {
        super(i10, f10);
        short s10 = Vd.a.f26856e;
        this.f27615r = s10;
        if (s10 != 0) {
            Arrays.fill(this.f27614q, s10);
        }
    }

    public h0(int i10, float f10, short s10) {
        super(i10, f10);
        this.f27615r = s10;
        if (s10 != 0) {
            Arrays.fill(this.f27614q, s10);
        }
    }
}
