package com.android.tools.r8.internal;

import com.google.common.collect.C12510d2;
import java.util.NoSuchElementException;

public abstract class K20 {

    public int f41558c;

    public int f41560e;

    public final M20 f41561f;

    public int f41557b = -1;

    public int f41559d = -1;

    public K20(M20 m20) {
        this.f41561f = m20;
        this.f41558c = -1;
        this.f41560e = -1;
        this.f41558c = m20.f42139g;
        this.f41560e = 0;
    }

    public final void a() {
        if (this.f41560e >= 0) {
            return;
        }
        if (this.f41557b == -1) {
            this.f41560e = 0;
            return;
        }
        if (this.f41558c == -1) {
            this.f41560e = this.f41561f.f42144l;
            return;
        }
        int i10 = this.f41561f.f42139g;
        this.f41560e = 1;
        while (i10 != this.f41557b) {
            i10 = (int) this.f41561f.f42141i[i10];
            this.f41560e++;
        }
    }

    public final int b() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f41558c;
        this.f41559d = i10;
        this.f41558c = (int) this.f41561f.f42141i[i10];
        this.f41557b = i10;
        int i11 = this.f41560e;
        if (i11 >= 0) {
            this.f41560e = i11 + 1;
        }
        return i10;
    }

    public final int d() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f41557b;
        this.f41559d = i10;
        this.f41557b = (int) (this.f41561f.f42141i[i10] >>> 32);
        this.f41558c = i10;
        int i11 = this.f41560e;
        if (i11 >= 0) {
            this.f41560e = i11 - 1;
        }
        return i10;
    }

    public final boolean hasNext() {
        return this.f41558c != -1;
    }

    public final boolean hasPrevious() {
        return this.f41557b != -1;
    }

    public final int nextIndex() {
        a();
        return this.f41560e;
    }

    public final int previousIndex() {
        a();
        return this.f41560e - 1;
    }

    public void remove() {
        Object obj;
        M20 m20;
        a();
        int i10 = this.f41559d;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        if (i10 == this.f41557b) {
            this.f41560e--;
            this.f41557b = (int) (this.f41561f.f42141i[i10] >>> 32);
        } else {
            this.f41558c = (int) this.f41561f.f42141i[i10];
        }
        M20 m202 = this.f41561f;
        m202.f42144l--;
        int i11 = this.f41557b;
        if (i11 == -1) {
            m202.f42139g = this.f41558c;
        } else {
            long[] jArr = m202.f42141i;
            long j10 = jArr[i11];
            jArr[i11] = j10 ^ (((this.f41558c & 4294967295L) ^ j10) & 4294967295L);
        }
        int i12 = this.f41558c;
        if (i12 == -1) {
            m202.f42140h = i11;
        } else {
            long[] jArr2 = m202.f42141i;
            long j11 = jArr2[i12];
            jArr2[i12] = ((((i11 & 4294967295L) << 32) ^ j11) & C12510d2.f66536l) ^ j11;
        }
        this.f41559d = -1;
        int i13 = m202.f42142j;
        if (i10 == i13) {
            m202.f42137e = false;
            m202.f42134b[i13] = null;
            m202.f42135c[i13] = null;
            return;
        }
        Object[] objArr = m202.f42134b;
        while (true) {
            int i14 = (i10 + 1) & this.f41561f.f42136d;
            while (true) {
                obj = objArr[i14];
                if (obj == null) {
                    objArr[i10] = null;
                    this.f41561f.f42135c[i10] = null;
                    return;
                }
                int a10 = AbstractC7878jA.a(this.f41561f.f42138f.a(obj));
                m20 = this.f41561f;
                int i15 = m20.f42136d;
                int i16 = a10 & i15;
                if (i10 > i14) {
                    if (i10 >= i16 && i16 > i14) {
                        break;
                    }
                    i14 = (i14 + 1) & i15;
                } else if (i10 >= i16 || i16 > i14) {
                    break;
                } else {
                    i14 = (i14 + 1) & i15;
                }
            }
            objArr[i10] = obj;
            Object[] objArr2 = m20.f42135c;
            objArr2[i10] = objArr2[i14];
            if (this.f41558c == i14) {
                this.f41558c = i10;
            }
            if (this.f41557b == i14) {
                this.f41557b = i10;
            }
            m20.c(i14, i10);
            i10 = i14;
        }
    }
}
