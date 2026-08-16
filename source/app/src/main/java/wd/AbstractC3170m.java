package Wd;

import he.InterfaceC13462q;
import java.util.Arrays;

public abstract class AbstractC3170m extends c0 {

    public static final long f27652t = 1;

    public transient char[] f27653q;

    public char f27654r;

    public boolean f27655s;

    public AbstractC3170m() {
        char c10 = Vd.a.f26857f;
        this.f27654r = c10;
        if (c10 != 0) {
            Arrays.fill(this.f27653q, c10);
        }
    }

    public boolean b1(char c10) {
        return mf(c10) >= 0;
    }

    public boolean g1(InterfaceC13462q interfaceC13462q) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27653q;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13462q.a(cArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void hf(int i10) {
        this.f27653q[i10] = this.f27654r;
        super.hf(i10);
    }

    public char i() {
        return this.f27654r;
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f27653q = new char[jf2];
        return jf2;
    }

    public int mf(char c10) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27653q;
        int length = bArr.length;
        int d10 = Vd.b.d(c10) & Integer.MAX_VALUE;
        int i10 = d10 % length;
        byte b10 = bArr[i10];
        if (b10 == 0) {
            return -1;
        }
        return (b10 == 1 && cArr[i10] == c10) ? i10 : nf(c10, i10, d10, b10);
    }

    public int nf(char c10, int i10, int i11, byte b10) {
        int length = this.f27653q.length;
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
            if (c10 == this.f27653q[i13] && b11 != 2) {
                return i13;
            }
        } while (i13 != i10);
        return -1;
    }

    public int of(char c10) {
        int d10 = Vd.b.d(c10) & Integer.MAX_VALUE;
        byte[] bArr = this.f27568l;
        int length = d10 % bArr.length;
        byte b10 = bArr[length];
        this.f27655s = false;
        if (b10 != 0) {
            return (b10 == 1 && this.f27653q[length] == c10) ? (-length) - 1 : qf(c10, length, d10, b10);
        }
        this.f27655s = true;
        pf(length, c10);
        return length;
    }

    public void pf(int i10, char c10) {
        this.f27653q[i10] = c10;
        this.f27568l[i10] = 1;
    }

    public int qf(char c10, int i10, int i11, byte b10) {
        int length = this.f27653q.length;
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
                    pf(i14, c10);
                    return i14;
                }
                this.f27655s = true;
                pf(i13, c10);
                return i13;
            }
            if (b10 == 1 && this.f27653q[i13] == c10) {
                return (-i13) - 1;
            }
        } while (i13 != i10);
        if (i14 == -1) {
            throw new IllegalStateException("No free or removed slots available. Key set full?!!");
        }
        pf(i14, c10);
        return i14;
    }

    public AbstractC3170m(int i10) {
        super(i10);
        char c10 = Vd.a.f26857f;
        this.f27654r = c10;
        if (c10 != 0) {
            Arrays.fill(this.f27653q, c10);
        }
    }

    public AbstractC3170m(int i10, float f10) {
        super(i10, f10);
        char c10 = Vd.a.f26857f;
        this.f27654r = c10;
        if (c10 != 0) {
            Arrays.fill(this.f27653q, c10);
        }
    }

    public AbstractC3170m(int i10, float f10, char c10) {
        super(i10, f10);
        this.f27654r = c10;
        if (c10 != 0) {
            Arrays.fill(this.f27653q, c10);
        }
    }
}
