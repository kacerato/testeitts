package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class AbstractC9357s20 {

    public int f52255b;

    public int f52256c = -1;

    public int f52257d;

    public boolean f52258e;

    public C9027q30 f52259f;

    public final C9691u20 f52260g;

    public AbstractC9357s20(C9691u20 c9691u20) {
        this.f52260g = c9691u20;
        this.f52255b = c9691u20.f52766g;
        this.f52257d = c9691u20.f52768i;
        this.f52258e = c9691u20.f52765f;
    }

    public final int a() {
        int i10;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f52257d--;
        if (this.f52258e) {
            this.f52258e = false;
            int i11 = this.f52260g.f52766g;
            this.f52256c = i11;
            return i11;
        }
        Object[] objArr = this.f52260g.f52762c;
        do {
            i10 = this.f52255b - 1;
            this.f52255b = i10;
            if (i10 < 0) {
                this.f52256c = Integer.MIN_VALUE;
                Object obj = this.f52259f.get((-i10) - 1);
                int a10 = AbstractC7878jA.a(obj.hashCode());
                int i12 = this.f52260g.f52764e;
                while (true) {
                    int i13 = a10 & i12;
                    if (obj.equals(objArr[i13])) {
                        return i13;
                    }
                    a10 = i13 + 1;
                    i12 = this.f52260g.f52764e;
                }
            }
        } while (objArr[i10] == null);
        this.f52256c = i10;
        return i10;
    }

    public final boolean hasNext() {
        return this.f52257d != 0;
    }

    public void remove() {
        Object obj;
        int i10 = this.f52256c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        C9691u20 c9691u20 = this.f52260g;
        int i11 = c9691u20.f52766g;
        if (i10 == i11) {
            c9691u20.f52765f = false;
            c9691u20.f52762c[i11] = null;
        } else {
            if (this.f52255b < 0) {
                c9691u20.c(this.f52259f.set((-r3) - 1, null));
                this.f52256c = -1;
                return;
            }
            Object[] objArr = c9691u20.f52762c;
            loop0: while (true) {
                int i12 = (i10 + 1) & this.f52260g.f52764e;
                while (true) {
                    obj = objArr[i12];
                    if (obj == null) {
                        break loop0;
                    }
                    int a10 = AbstractC7878jA.a(obj.hashCode());
                    int i13 = this.f52260g.f52764e;
                    int i14 = a10 & i13;
                    if (i10 > i12) {
                        if (i10 >= i14 && i14 > i12) {
                            break;
                        }
                        i12 = (i12 + 1) & i13;
                    } else if (i10 >= i14 || i14 > i12) {
                        break;
                    } else {
                        i12 = (i12 + 1) & i13;
                    }
                }
                if (i12 < i10) {
                    if (this.f52259f == null) {
                        this.f52259f = new C9027q30(2);
                    }
                    this.f52259f.add(objArr[i12]);
                }
                objArr[i10] = obj;
                int[] iArr = this.f52260g.f52763d;
                iArr[i10] = iArr[i12];
                i10 = i12;
            }
            objArr[i10] = null;
        }
        C9691u20 c9691u202 = this.f52260g;
        c9691u202.f52768i--;
        this.f52256c = -1;
    }
}
