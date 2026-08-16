package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class AbstractC10450yd0 {

    public int f54073b;

    public int f54074c = -1;

    public int f54075d;

    public boolean f54076e;

    public C5494Ld0 f54077f;

    public final C4856Ad0 f54078g;

    public AbstractC10450yd0(C4856Ad0 c4856Ad0) {
        this.f54078g = c4856Ad0;
        this.f54073b = c4856Ad0.f38650f;
        this.f54075d = c4856Ad0.f38652h;
        this.f54076e = c4856Ad0.f38649e;
    }

    public final int a() {
        int i10;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f54075d--;
        if (this.f54076e) {
            this.f54076e = false;
            int i11 = this.f54078g.f38650f;
            this.f54074c = i11;
            return i11;
        }
        Object[] objArr = this.f54078g.f38646b;
        do {
            i10 = this.f54073b - 1;
            this.f54073b = i10;
            if (i10 < 0) {
                this.f54074c = Integer.MIN_VALUE;
                Object obj = this.f54077f.get((-i10) - 1);
                int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                int i12 = this.f54078g.f38648d;
                while (true) {
                    int i13 = a10 & i12;
                    if (obj == objArr[i13]) {
                        return i13;
                    }
                    a10 = i13 + 1;
                    i12 = this.f54078g.f38648d;
                }
            }
        } while (objArr[i10] == null);
        this.f54074c = i10;
        return i10;
    }

    public final boolean hasNext() {
        return this.f54075d != 0;
    }

    public void remove() {
        Object obj;
        int i10 = this.f54074c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        C4856Ad0 c4856Ad0 = this.f54078g;
        int i11 = c4856Ad0.f38650f;
        if (i10 == i11) {
            c4856Ad0.f38649e = false;
            c4856Ad0.f38646b[i11] = null;
        } else {
            if (this.f54073b < 0) {
                c4856Ad0.c(this.f54077f.set((-r3) - 1, null));
                this.f54074c = -1;
                return;
            }
            Object[] objArr = c4856Ad0.f38646b;
            loop0: while (true) {
                int i12 = (i10 + 1) & this.f54078g.f38648d;
                while (true) {
                    obj = objArr[i12];
                    if (obj == null) {
                        break loop0;
                    }
                    int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                    int i13 = this.f54078g.f38648d;
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
                    if (this.f54077f == null) {
                        this.f54077f = new C5494Ld0(2);
                    }
                    this.f54077f.add(objArr[i12]);
                }
                objArr[i10] = obj;
                long[] jArr = this.f54078g.f38647c;
                jArr[i10] = jArr[i12];
                i10 = i12;
            }
            objArr[i10] = null;
        }
        C4856Ad0 c4856Ad02 = this.f54078g;
        c4856Ad02.f38652h--;
        this.f54074c = -1;
    }
}
