package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class AbstractC6566bH {

    public int f46737b;

    public int f46738c = -1;

    public int f46739d;

    public boolean f46740e;

    public CH f46741f;

    public final C6899dH f46742g;

    public AbstractC6566bH(C6899dH c6899dH) {
        this.f46742g = c6899dH;
        this.f46737b = c6899dH.f47344f;
        this.f46739d = c6899dH.f47346h;
        this.f46740e = c6899dH.f47343e;
    }

    public final int a() {
        int i10;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f46739d--;
        if (this.f46740e) {
            this.f46740e = false;
            int i11 = this.f46742g.f47344f;
            this.f46738c = i11;
            return i11;
        }
        int[] iArr = this.f46742g.f47340b;
        do {
            i10 = this.f46737b - 1;
            this.f46737b = i10;
            if (i10 < 0) {
                this.f46738c = Integer.MIN_VALUE;
                int c10 = this.f46741f.c((-i10) - 1);
                int a10 = AbstractC7878jA.a(c10);
                int i12 = this.f46742g.f47342d;
                while (true) {
                    int i13 = a10 & i12;
                    if (c10 == iArr[i13]) {
                        return i13;
                    }
                    a10 = i13 + 1;
                    i12 = this.f46742g.f47342d;
                }
            }
        } while (iArr[i10] == 0);
        this.f46738c = i10;
        return i10;
    }

    public final boolean hasNext() {
        return this.f46739d != 0;
    }

    public void remove() {
        int i10;
        int i11 = this.f46738c;
        if (i11 == -1) {
            throw new IllegalStateException();
        }
        C6899dH c6899dH = this.f46742g;
        int i12 = c6899dH.f47344f;
        if (i11 == i12) {
            c6899dH.f47343e = false;
            c6899dH.f47341c[i12] = null;
        } else {
            if (this.f46737b < 0) {
                c6899dH.remove(this.f46741f.c((-r3) - 1));
                this.f46738c = -1;
                return;
            }
            int[] iArr = c6899dH.f47340b;
            loop0: while (true) {
                int i13 = (i11 + 1) & this.f46742g.f47342d;
                while (true) {
                    i10 = iArr[i13];
                    if (i10 == 0) {
                        break loop0;
                    }
                    int a10 = AbstractC7878jA.a(i10);
                    int i14 = this.f46742g.f47342d;
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
                    if (this.f46741f == null) {
                        this.f46741f = new CH(2);
                    }
                    this.f46741f.add(iArr[i13]);
                }
                iArr[i11] = i10;
                Object[] objArr = this.f46742g.f47341c;
                objArr[i11] = objArr[i13];
                i11 = i13;
            }
            iArr[i11] = 0;
            this.f46742g.f47341c[i11] = null;
        }
        C6899dH c6899dH2 = this.f46742g;
        c6899dH2.f47346h--;
        this.f46738c = -1;
    }
}
