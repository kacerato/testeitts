package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class AbstractC5262Hd0 {

    public int f40803b;

    public int f40804c = -1;

    public int f40805d;

    public boolean f40806e;

    public C5494Ld0 f40807f;

    public final C5378Jd0 f40808g;

    public AbstractC5262Hd0(C5378Jd0 c5378Jd0) {
        this.f40808g = c5378Jd0;
        this.f40803b = c5378Jd0.f41440f;
        this.f40805d = c5378Jd0.f41442h;
        this.f40806e = c5378Jd0.f41439e;
    }

    public final int a() {
        int i10;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f40805d--;
        if (this.f40806e) {
            this.f40806e = false;
            int i11 = this.f40808g.f41440f;
            this.f40804c = i11;
            return i11;
        }
        Object[] objArr = this.f40808g.f41436b;
        do {
            i10 = this.f40803b - 1;
            this.f40803b = i10;
            if (i10 < 0) {
                this.f40804c = Integer.MIN_VALUE;
                Object obj = this.f40807f.get((-i10) - 1);
                int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                int i12 = this.f40808g.f41438d;
                while (true) {
                    int i13 = a10 & i12;
                    if (obj == objArr[i13]) {
                        return i13;
                    }
                    a10 = i13 + 1;
                    i12 = this.f40808g.f41438d;
                }
            }
        } while (objArr[i10] == null);
        this.f40804c = i10;
        return i10;
    }

    public final boolean hasNext() {
        return this.f40805d != 0;
    }

    public void remove() {
        Object obj;
        int i10 = this.f40804c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        C5378Jd0 c5378Jd0 = this.f40808g;
        int i11 = c5378Jd0.f41440f;
        if (i10 == i11) {
            c5378Jd0.f41439e = false;
            c5378Jd0.f41436b[i11] = null;
            c5378Jd0.f41437c[i11] = null;
        } else {
            if (this.f40803b < 0) {
                c5378Jd0.remove(this.f40807f.set((-r3) - 1, null));
                this.f40804c = -1;
                return;
            }
            Object[] objArr = c5378Jd0.f41436b;
            loop0: while (true) {
                int i12 = (i10 + 1) & this.f40808g.f41438d;
                while (true) {
                    obj = objArr[i12];
                    if (obj == null) {
                        break loop0;
                    }
                    int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                    int i13 = this.f40808g.f41438d;
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
                    if (this.f40807f == null) {
                        this.f40807f = new C5494Ld0(2);
                    }
                    this.f40807f.add(objArr[i12]);
                }
                objArr[i10] = obj;
                Object[] objArr2 = this.f40808g.f41437c;
                objArr2[i10] = objArr2[i12];
                i10 = i12;
            }
            objArr[i10] = null;
            this.f40808g.f41437c[i10] = null;
        }
        C5378Jd0 c5378Jd02 = this.f40808g;
        c5378Jd02.f41442h--;
        this.f40804c = -1;
    }
}
