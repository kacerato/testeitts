package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class C6734cI extends X {

    public int f47015b;

    public int f47016c = -1;

    public int f47017d;

    public boolean f47018e;

    public CH f47019f;

    public final C6901dI f47020g;

    public C6734cI(C6901dI c6901dI) {
        this.f47020g = c6901dI;
        this.f47015b = c6901dI.f47355e;
        this.f47017d = c6901dI.f47357g;
        this.f47018e = c6901dI.f47354d;
    }

    @Override
    public final boolean hasNext() {
        return this.f47017d != 0;
    }

    @Override
    public final int r() {
        int i10;
        int i11;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f47017d--;
        if (this.f47018e) {
            this.f47018e = false;
            C6901dI c6901dI = this.f47020g;
            int i12 = c6901dI.f47355e;
            this.f47016c = i12;
            return c6901dI.f47352b[i12];
        }
        int[] iArr = this.f47020g.f47352b;
        do {
            i10 = this.f47015b - 1;
            this.f47015b = i10;
            if (i10 < 0) {
                this.f47016c = Integer.MIN_VALUE;
                return this.f47019f.c((-i10) - 1);
            }
            i11 = iArr[i10];
        } while (i11 == 0);
        this.f47016c = i10;
        return i11;
    }

    @Override
    public final void remove() {
        int i10;
        int i11 = this.f47016c;
        if (i11 == -1) {
            throw new IllegalStateException();
        }
        C6901dI c6901dI = this.f47020g;
        int i12 = c6901dI.f47355e;
        if (i11 == i12) {
            c6901dI.f47354d = false;
            c6901dI.f47352b[i12] = 0;
        } else {
            if (this.f47015b < 0) {
                c6901dI.remove(this.f47019f.c((-r3) - 1));
                this.f47016c = -1;
                return;
            }
            int[] iArr = c6901dI.f47352b;
            loop0: while (true) {
                int i13 = (i11 + 1) & this.f47020g.f47353c;
                while (true) {
                    i10 = iArr[i13];
                    if (i10 == 0) {
                        break loop0;
                    }
                    int a10 = AbstractC7878jA.a(i10);
                    int i14 = this.f47020g.f47353c;
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
                    if (this.f47019f == null) {
                        this.f47019f = new CH(2);
                    }
                    this.f47019f.add(iArr[i13]);
                }
                iArr[i11] = i10;
                i11 = i13;
            }
            iArr[i11] = 0;
        }
        C6901dI c6901dI2 = this.f47020g;
        c6901dI2.f47357g--;
        this.f47016c = -1;
    }
}
