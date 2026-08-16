package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class AbstractC8781od0 {

    public int f51296b;

    public int f51297c = -1;

    public int f51298d;

    public boolean f51299e;

    public C5494Ld0 f51300f;

    public final C9115qd0 f51301g;

    public AbstractC8781od0(C9115qd0 c9115qd0) {
        this.f51301g = c9115qd0;
        this.f51296b = c9115qd0.f51826g;
        this.f51298d = c9115qd0.f51828i;
        this.f51299e = c9115qd0.f51825f;
    }

    public final int a() {
        int i10;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f51298d--;
        if (this.f51299e) {
            this.f51299e = false;
            int i11 = this.f51301g.f51826g;
            this.f51297c = i11;
            return i11;
        }
        Object[] objArr = this.f51301g.f51822c;
        do {
            i10 = this.f51296b - 1;
            this.f51296b = i10;
            if (i10 < 0) {
                this.f51297c = Integer.MIN_VALUE;
                Object obj = this.f51300f.get((-i10) - 1);
                int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                int i12 = this.f51301g.f51824e;
                while (true) {
                    int i13 = a10 & i12;
                    if (obj == objArr[i13]) {
                        return i13;
                    }
                    a10 = i13 + 1;
                    i12 = this.f51301g.f51824e;
                }
            }
        } while (objArr[i10] == null);
        this.f51297c = i10;
        return i10;
    }

    public final boolean hasNext() {
        return this.f51298d != 0;
    }

    public void remove() {
        Object obj;
        int i10 = this.f51297c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        C9115qd0 c9115qd0 = this.f51301g;
        int i11 = c9115qd0.f51826g;
        if (i10 == i11) {
            c9115qd0.f51825f = false;
            c9115qd0.f51822c[i11] = null;
        } else {
            if (this.f51296b < 0) {
                c9115qd0.c(this.f51300f.set((-r3) - 1, null));
                this.f51297c = -1;
                return;
            }
            Object[] objArr = c9115qd0.f51822c;
            loop0: while (true) {
                int i12 = (i10 + 1) & this.f51301g.f51824e;
                while (true) {
                    obj = objArr[i12];
                    if (obj == null) {
                        break loop0;
                    }
                    int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                    int i13 = this.f51301g.f51824e;
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
                    if (this.f51300f == null) {
                        this.f51300f = new C5494Ld0(2);
                    }
                    this.f51300f.add(objArr[i12]);
                }
                objArr[i10] = obj;
                int[] iArr = this.f51301g.f51823d;
                iArr[i10] = iArr[i12];
                i10 = i12;
            }
            objArr[i10] = null;
        }
        C9115qd0 c9115qd02 = this.f51301g;
        c9115qd02.f51828i--;
        this.f51297c = -1;
    }
}
