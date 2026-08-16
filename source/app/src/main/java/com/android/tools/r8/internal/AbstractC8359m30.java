package com.android.tools.r8.internal;

import com.google.common.collect.C12510d2;
import java.util.NoSuchElementException;

public abstract class AbstractC8359m30 {

    public int f50187c;

    public int f50189e;

    public final C8693o30 f50190f;

    public int f50186b = -1;

    public int f50188d = -1;

    public AbstractC8359m30(C8693o30 c8693o30) {
        this.f50190f = c8693o30;
        this.f50187c = -1;
        this.f50189e = -1;
        this.f50187c = c8693o30.f51151f;
        this.f50189e = 0;
    }

    public final void a() {
        if (this.f50189e >= 0) {
            return;
        }
        if (this.f50186b == -1) {
            this.f50189e = 0;
            return;
        }
        if (this.f50187c == -1) {
            this.f50189e = this.f50190f.f51156k;
            return;
        }
        int i10 = this.f50190f.f51151f;
        this.f50189e = 1;
        while (i10 != this.f50186b) {
            i10 = (int) this.f50190f.f51153h[i10];
            this.f50189e++;
        }
    }

    public final int b() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f50187c;
        this.f50188d = i10;
        this.f50187c = (int) this.f50190f.f51153h[i10];
        this.f50186b = i10;
        int i11 = this.f50189e;
        if (i11 >= 0) {
            this.f50189e = i11 + 1;
        }
        return i10;
    }

    public final int d() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f50186b;
        this.f50188d = i10;
        this.f50186b = (int) (this.f50190f.f51153h[i10] >>> 32);
        this.f50187c = i10;
        int i11 = this.f50189e;
        if (i11 >= 0) {
            this.f50189e = i11 - 1;
        }
        return i10;
    }

    public final boolean hasNext() {
        return this.f50187c != -1;
    }

    public final boolean hasPrevious() {
        return this.f50186b != -1;
    }

    public final int nextIndex() {
        a();
        return this.f50189e;
    }

    public final int previousIndex() {
        a();
        return this.f50189e - 1;
    }

    public void remove() {
        Object obj;
        C8693o30 c8693o30;
        a();
        int i10 = this.f50188d;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        if (i10 == this.f50186b) {
            this.f50189e--;
            this.f50186b = (int) (this.f50190f.f51153h[i10] >>> 32);
        } else {
            this.f50187c = (int) this.f50190f.f51153h[i10];
        }
        C8693o30 c8693o302 = this.f50190f;
        c8693o302.f51156k--;
        int i11 = this.f50186b;
        if (i11 == -1) {
            c8693o302.f51151f = this.f50187c;
        } else {
            long[] jArr = c8693o302.f51153h;
            long j10 = jArr[i11];
            jArr[i11] = j10 ^ (((this.f50187c & 4294967295L) ^ j10) & 4294967295L);
        }
        int i12 = this.f50187c;
        if (i12 == -1) {
            c8693o302.f51152g = i11;
        } else {
            long[] jArr2 = c8693o302.f51153h;
            long j11 = jArr2[i12];
            jArr2[i12] = ((((i11 & 4294967295L) << 32) ^ j11) & C12510d2.f66536l) ^ j11;
        }
        this.f50188d = -1;
        int i13 = c8693o302.f51154i;
        if (i10 == i13) {
            c8693o302.f51150e = false;
            c8693o302.f51147b[i13] = null;
            c8693o302.f51148c[i13] = null;
            return;
        }
        Object[] objArr = c8693o302.f51147b;
        while (true) {
            int i14 = (i10 + 1) & this.f50190f.f51149d;
            while (true) {
                obj = objArr[i14];
                if (obj == null) {
                    objArr[i10] = null;
                    this.f50190f.f51148c[i10] = null;
                    return;
                }
                int a10 = AbstractC7878jA.a(obj.hashCode());
                c8693o30 = this.f50190f;
                int i15 = c8693o30.f51149d;
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
            Object[] objArr2 = c8693o30.f51148c;
            objArr2[i10] = objArr2[i14];
            if (this.f50187c == i14) {
                this.f50187c = i10;
            }
            if (this.f50186b == i14) {
                this.f50186b = i10;
            }
            c8693o30.c(i14, i10);
            i10 = i14;
        }
    }
}
