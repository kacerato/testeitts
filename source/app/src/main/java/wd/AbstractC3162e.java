package Wd;

import he.InterfaceC13453h;
import java.util.Arrays;

public abstract class AbstractC3162e extends c0 {

    public static final long f27579t = 1;

    public transient byte[] f27580q;

    public byte f27581r;

    public boolean f27582s;

    public AbstractC3162e() {
        byte b10 = Vd.a.f26855d;
        this.f27581r = b10;
        if (b10 != 0) {
            Arrays.fill(this.f27580q, b10);
        }
    }

    public boolean V0(InterfaceC13453h interfaceC13453h) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27580q;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13453h.a(bArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public boolean a1(byte b10) {
        return mf(b10) >= 0;
    }

    @Override
    public void hf(int i10) {
        this.f27580q[i10] = this.f27581r;
        super.hf(i10);
    }

    public byte i() {
        return this.f27581r;
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f27580q = new byte[jf2];
        return jf2;
    }

    public int mf(byte b10) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27580q;
        int length = bArr.length;
        int d10 = Vd.b.d(b10) & Integer.MAX_VALUE;
        int i10 = d10 % length;
        byte b11 = bArr[i10];
        if (b11 == 0) {
            return -1;
        }
        return (b11 == 1 && bArr2[i10] == b10) ? i10 : nf(b10, i10, d10, b11);
    }

    public int nf(byte b10, int i10, int i11, byte b11) {
        int length = this.f27580q.length;
        int i12 = (i11 % (length - 2)) + 1;
        int i13 = i10;
        do {
            i13 -= i12;
            if (i13 < 0) {
                i13 += length;
            }
            byte b12 = this.f27568l[i13];
            if (b12 == 0) {
                return -1;
            }
            if (b10 == this.f27580q[i13] && b12 != 2) {
                return i13;
            }
        } while (i13 != i10);
        return -1;
    }

    public int of(byte b10) {
        int d10 = Vd.b.d(b10) & Integer.MAX_VALUE;
        byte[] bArr = this.f27568l;
        int length = d10 % bArr.length;
        byte b11 = bArr[length];
        this.f27582s = false;
        if (b11 != 0) {
            return (b11 == 1 && this.f27580q[length] == b10) ? (-length) - 1 : qf(b10, length, d10, b11);
        }
        this.f27582s = true;
        pf(length, b10);
        return length;
    }

    public void pf(int i10, byte b10) {
        this.f27580q[i10] = b10;
        this.f27568l[i10] = 1;
    }

    public int qf(byte b10, int i10, int i11, byte b11) {
        int length = this.f27580q.length;
        int i12 = (i11 % (length - 2)) + 1;
        int i13 = i10;
        int i14 = -1;
        do {
            if (b11 == 2 && i14 == -1) {
                i14 = i13;
            }
            i13 -= i12;
            if (i13 < 0) {
                i13 += length;
            }
            b11 = this.f27568l[i13];
            if (b11 == 0) {
                if (i14 != -1) {
                    pf(i14, b10);
                    return i14;
                }
                this.f27582s = true;
                pf(i13, b10);
                return i13;
            }
            if (b11 == 1 && this.f27580q[i13] == b10) {
                return (-i13) - 1;
            }
        } while (i13 != i10);
        if (i14 == -1) {
            throw new IllegalStateException("No free or removed slots available. Key set full?!!");
        }
        pf(i14, b10);
        return i14;
    }

    public AbstractC3162e(int i10) {
        super(i10);
        byte b10 = Vd.a.f26855d;
        this.f27581r = b10;
        if (b10 != 0) {
            Arrays.fill(this.f27580q, b10);
        }
    }

    public AbstractC3162e(int i10, float f10) {
        super(i10, f10);
        byte b10 = Vd.a.f26855d;
        this.f27581r = b10;
        if (b10 != 0) {
            Arrays.fill(this.f27580q, b10);
        }
    }

    public AbstractC3162e(int i10, float f10, byte b10) {
        super(i10, f10);
        this.f27581r = b10;
        if (b10 != 0) {
            Arrays.fill(this.f27580q, b10);
        }
    }
}
