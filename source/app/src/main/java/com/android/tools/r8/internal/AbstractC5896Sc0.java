package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class AbstractC5896Sc0 {

    public int f44243b;

    public int f44244c = -1;

    public int f44245d;

    public boolean f44246e;

    public C5494Ld0 f44247f;

    public final C6012Uc0 f44248g;

    public AbstractC5896Sc0(C6012Uc0 c6012Uc0) {
        this.f44248g = c6012Uc0;
        this.f44243b = c6012Uc0.f44804f;
        this.f44245d = c6012Uc0.f44806h;
        this.f44246e = c6012Uc0.f44803e;
    }

    public final int a() {
        int i10;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f44245d--;
        if (this.f44246e) {
            this.f44246e = false;
            int i11 = this.f44248g.f44804f;
            this.f44244c = i11;
            return i11;
        }
        Object[] objArr = this.f44248g.f44800b;
        do {
            i10 = this.f44243b - 1;
            this.f44243b = i10;
            if (i10 < 0) {
                this.f44244c = Integer.MIN_VALUE;
                Object obj = this.f44247f.get((-i10) - 1);
                int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                int i12 = this.f44248g.f44802d;
                while (true) {
                    int i13 = a10 & i12;
                    if (obj == objArr[i13]) {
                        return i13;
                    }
                    a10 = i13 + 1;
                    i12 = this.f44248g.f44802d;
                }
            }
        } while (objArr[i10] == null);
        this.f44244c = i10;
        return i10;
    }

    public final boolean hasNext() {
        return this.f44245d != 0;
    }

    public void remove() {
        Object obj;
        int i10 = this.f44244c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        C6012Uc0 c6012Uc0 = this.f44248g;
        int i11 = c6012Uc0.f44804f;
        if (i10 == i11) {
            c6012Uc0.f44803e = false;
            c6012Uc0.f44800b[i11] = null;
        } else {
            if (this.f44243b < 0) {
                c6012Uc0.b(this.f44247f.set((-r3) - 1, null));
                this.f44244c = -1;
                return;
            }
            Object[] objArr = c6012Uc0.f44800b;
            loop0: while (true) {
                int i12 = (i10 + 1) & this.f44248g.f44802d;
                while (true) {
                    obj = objArr[i12];
                    if (obj == null) {
                        break loop0;
                    }
                    int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                    int i13 = this.f44248g.f44802d;
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
                    if (this.f44247f == null) {
                        this.f44247f = new C5494Ld0(2);
                    }
                    this.f44247f.add(objArr[i12]);
                }
                objArr[i10] = obj;
                boolean[] zArr = this.f44248g.f44801c;
                zArr[i10] = zArr[i12];
                i10 = i12;
            }
            objArr[i10] = null;
        }
        C6012Uc0 c6012Uc02 = this.f44248g;
        c6012Uc02.f44806h--;
        this.f44244c = -1;
    }
}
