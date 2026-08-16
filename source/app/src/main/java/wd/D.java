package Wd;

import java.util.Arrays;

public abstract class D extends c0 {

    public static final long f27430t = 1;

    public transient float[] f27431q;

    public float f27432r;

    public boolean f27433s;

    public D() {
        float f10 = Vd.a.f26860i;
        this.f27432r = f10;
        if (f10 != 0.0f) {
            Arrays.fill(this.f27431q, f10);
        }
    }

    public boolean Z0(float f10) {
        return mf(f10) >= 0;
    }

    @Override
    public void hf(int i10) {
        this.f27431q[i10] = this.f27432r;
        super.hf(i10);
    }

    public float i() {
        return this.f27432r;
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f27431q = new float[jf2];
        return jf2;
    }

    public boolean k1(he.I i10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27431q;
        int length = fArr.length;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i11] == 1 && !i10.a(fArr[i11])) {
                return false;
            }
            length = i11;
        }
    }

    public int mf(float f10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27431q;
        int length = bArr.length;
        int c10 = Vd.b.c(f10) & Integer.MAX_VALUE;
        int i10 = c10 % length;
        byte b10 = bArr[i10];
        if (b10 == 0) {
            return -1;
        }
        return (b10 == 1 && fArr[i10] == f10) ? i10 : nf(f10, i10, c10, b10);
    }

    public int nf(float f10, int i10, int i11, byte b10) {
        int length = this.f27431q.length;
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
            if (f10 == this.f27431q[i13] && b11 != 2) {
                return i13;
            }
        } while (i13 != i10);
        return -1;
    }

    public int of(float f10) {
        int c10 = Vd.b.c(f10) & Integer.MAX_VALUE;
        byte[] bArr = this.f27568l;
        int length = c10 % bArr.length;
        byte b10 = bArr[length];
        this.f27433s = false;
        if (b10 != 0) {
            return (b10 == 1 && this.f27431q[length] == f10) ? (-length) - 1 : qf(f10, length, c10, b10);
        }
        this.f27433s = true;
        pf(length, f10);
        return length;
    }

    public void pf(int i10, float f10) {
        this.f27431q[i10] = f10;
        this.f27568l[i10] = 1;
    }

    public int qf(float f10, int i10, int i11, byte b10) {
        int length = this.f27431q.length;
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
                    pf(i14, f10);
                    return i14;
                }
                this.f27433s = true;
                pf(i13, f10);
                return i13;
            }
            if (b10 == 1 && this.f27431q[i13] == f10) {
                return (-i13) - 1;
            }
        } while (i13 != i10);
        if (i14 == -1) {
            throw new IllegalStateException("No free or removed slots available. Key set full?!!");
        }
        pf(i14, f10);
        return i14;
    }

    public D(int i10) {
        super(i10);
        float f10 = Vd.a.f26860i;
        this.f27432r = f10;
        if (f10 != 0.0f) {
            Arrays.fill(this.f27431q, f10);
        }
    }

    public D(int i10, float f10) {
        super(i10, f10);
        float f11 = Vd.a.f26860i;
        this.f27432r = f11;
        if (f11 != 0.0f) {
            Arrays.fill(this.f27431q, f11);
        }
    }

    public D(int i10, float f10, float f11) {
        super(i10, f10);
        this.f27432r = f11;
        if (f11 != 0.0f) {
            Arrays.fill(this.f27431q, f11);
        }
    }
}
