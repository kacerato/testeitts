package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class B20 {

    public int f38777b;

    public int f38778c = -1;

    public int f38779d;

    public boolean f38780e;

    public C9027q30 f38781f;

    public final D20 f38782g;

    public B20(D20 d20) {
        this.f38782g = d20;
        this.f38777b = d20.f39418f;
        this.f38779d = d20.f39420h;
        this.f38780e = d20.f39417e;
    }

    public final int a() {
        int i10;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f38779d--;
        if (this.f38780e) {
            this.f38780e = false;
            int i11 = this.f38782g.f39418f;
            this.f38778c = i11;
            return i11;
        }
        Object[] objArr = this.f38782g.f39414b;
        do {
            i10 = this.f38777b - 1;
            this.f38777b = i10;
            if (i10 < 0) {
                this.f38778c = Integer.MIN_VALUE;
                Object obj = this.f38781f.get((-i10) - 1);
                int a10 = AbstractC7878jA.a(obj.hashCode());
                int i12 = this.f38782g.f39416d;
                while (true) {
                    int i13 = a10 & i12;
                    if (obj.equals(objArr[i13])) {
                        return i13;
                    }
                    a10 = i13 + 1;
                    i12 = this.f38782g.f39416d;
                }
            }
        } while (objArr[i10] == null);
        this.f38778c = i10;
        return i10;
    }

    public final boolean hasNext() {
        return this.f38779d != 0;
    }

    public void remove() {
        Object obj;
        int i10 = this.f38778c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        D20 d20 = this.f38782g;
        int i11 = d20.f39418f;
        if (i10 == i11) {
            d20.f39417e = false;
            d20.f39414b[i11] = null;
        } else {
            if (this.f38777b < 0) {
                d20.b(this.f38781f.set((-r3) - 1, null));
                this.f38778c = -1;
                return;
            }
            Object[] objArr = d20.f39414b;
            loop0: while (true) {
                int i12 = (i10 + 1) & this.f38782g.f39416d;
                while (true) {
                    obj = objArr[i12];
                    if (obj == null) {
                        break loop0;
                    }
                    int a10 = AbstractC7878jA.a(obj.hashCode());
                    int i13 = this.f38782g.f39416d;
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
                    if (this.f38781f == null) {
                        this.f38781f = new C9027q30(2);
                    }
                    this.f38781f.add(objArr[i12]);
                }
                objArr[i10] = obj;
                long[] jArr = this.f38782g.f39415c;
                jArr[i10] = jArr[i12];
                i10 = i12;
            }
            objArr[i10] = null;
        }
        D20 d202 = this.f38782g;
        d202.f39420h--;
        this.f38778c = -1;
    }
}
