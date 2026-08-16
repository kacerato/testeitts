package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class OF {

    public int f42832b;

    public int f42833c = -1;

    public int f42834d;

    public boolean f42835e;

    public CH f42836f;

    public final QF f42837g;

    public OF(QF qf2) {
        this.f42837g = qf2;
        this.f42832b = qf2.f43515f;
        this.f42834d = qf2.f43517h;
        this.f42835e = qf2.f43514e;
    }

    public final int a() {
        int i10;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f42834d--;
        if (this.f42835e) {
            this.f42835e = false;
            int i11 = this.f42837g.f43515f;
            this.f42833c = i11;
            return i11;
        }
        int[] iArr = this.f42837g.f43511b;
        do {
            i10 = this.f42832b - 1;
            this.f42832b = i10;
            if (i10 < 0) {
                this.f42833c = Integer.MIN_VALUE;
                int c10 = this.f42836f.c((-i10) - 1);
                int a10 = AbstractC7878jA.a(c10);
                int i12 = this.f42837g.f43513d;
                while (true) {
                    int i13 = a10 & i12;
                    if (c10 == iArr[i13]) {
                        return i13;
                    }
                    a10 = i13 + 1;
                    i12 = this.f42837g.f43513d;
                }
            }
        } while (iArr[i10] == 0);
        this.f42833c = i10;
        return i10;
    }

    public final boolean hasNext() {
        return this.f42834d != 0;
    }

    public void remove() {
        int i10;
        int i11 = this.f42833c;
        if (i11 == -1) {
            throw new IllegalStateException();
        }
        QF qf2 = this.f42837g;
        int i12 = qf2.f43515f;
        if (i11 == i12) {
            qf2.f43514e = false;
            qf2.f43512c[i12] = null;
        } else {
            if (this.f42832b < 0) {
                qf2.remove(this.f42836f.c((-r3) - 1));
                this.f42833c = -1;
                return;
            }
            int[] iArr = qf2.f43511b;
            loop0: while (true) {
                int i13 = (i11 + 1) & this.f42837g.f43513d;
                while (true) {
                    i10 = iArr[i13];
                    if (i10 == 0) {
                        break loop0;
                    }
                    int a10 = AbstractC7878jA.a(i10);
                    int i14 = this.f42837g.f43513d;
                    int i15 = a10 & i14;
                    if (i11 > i13) {
                        if (i11 >= i15 && i15 > i13) {
                            break;
                        }
                        i13 = (i13 + 1) & i14;
                    } else if (i11 >= i15 || i15 > i13) {
                        break;
                    } else {
                        i13 = (i13 + 1) & i14;
                    }
                }
                if (i13 < i11) {
                    if (this.f42836f == null) {
                        this.f42836f = new CH(2);
                    }
                    this.f42836f.add(iArr[i13]);
                }
                iArr[i11] = i10;
                Object[] objArr = this.f42837g.f43512c;
                objArr[i11] = objArr[i13];
                i11 = i13;
            }
            iArr[i11] = 0;
            this.f42837g.f43512c[i11] = null;
        }
        QF qf3 = this.f42837g;
        qf3.f43517h--;
        this.f42833c = -1;
    }
}
