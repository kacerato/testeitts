package com.android.tools.r8.internal;

import com.google.common.collect.C12510d2;
import java.util.NoSuchElementException;

public abstract class UE {

    public int f44705c;

    public int f44707e;

    public final WE f44708f;

    public int f44704b = -1;

    public int f44706d = -1;

    public UE(WE we2) {
        this.f44708f = we2;
        this.f44705c = -1;
        this.f44707e = -1;
        this.f44705c = we2.f45345g;
        this.f44707e = 0;
    }

    public final void a() {
        if (this.f44707e >= 0) {
            return;
        }
        if (this.f44704b == -1) {
            this.f44707e = 0;
            return;
        }
        if (this.f44705c == -1) {
            this.f44707e = this.f44708f.f45350l;
            return;
        }
        int i10 = this.f44708f.f45345g;
        this.f44707e = 1;
        while (i10 != this.f44704b) {
            i10 = (int) this.f44708f.f45347i[i10];
            this.f44707e++;
        }
    }

    public final int b() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f44705c;
        this.f44706d = i10;
        this.f44705c = (int) this.f44708f.f45347i[i10];
        this.f44704b = i10;
        int i11 = this.f44707e;
        if (i11 >= 0) {
            this.f44707e = i11 + 1;
        }
        return i10;
    }

    public final int d() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f44704b;
        this.f44706d = i10;
        this.f44704b = (int) (this.f44708f.f45347i[i10] >>> 32);
        this.f44705c = i10;
        int i11 = this.f44707e;
        if (i11 >= 0) {
            this.f44707e = i11 - 1;
        }
        return i10;
    }

    public final boolean hasNext() {
        return this.f44705c != -1;
    }

    public final boolean hasPrevious() {
        return this.f44704b != -1;
    }

    public final int nextIndex() {
        a();
        return this.f44707e;
    }

    public final int previousIndex() {
        a();
        return this.f44707e - 1;
    }

    public void remove() {
        int i10;
        WE we2;
        a();
        int i11 = this.f44706d;
        if (i11 == -1) {
            throw new IllegalStateException();
        }
        if (i11 == this.f44704b) {
            this.f44707e--;
            this.f44704b = (int) (this.f44708f.f45347i[i11] >>> 32);
        } else {
            this.f44705c = (int) this.f44708f.f45347i[i11];
        }
        WE we3 = this.f44708f;
        we3.f45350l--;
        int i12 = this.f44704b;
        if (i12 == -1) {
            we3.f45345g = this.f44705c;
        } else {
            long[] jArr = we3.f45347i;
            long j10 = jArr[i12];
            jArr[i12] = j10 ^ (((this.f44705c & 4294967295L) ^ j10) & 4294967295L);
        }
        int i13 = this.f44705c;
        if (i13 == -1) {
            we3.f45346h = i12;
        } else {
            long[] jArr2 = we3.f45347i;
            long j11 = jArr2[i13];
            jArr2[i13] = ((((i12 & 4294967295L) << 32) ^ j11) & C12510d2.f66536l) ^ j11;
        }
        this.f44706d = -1;
        if (i11 == we3.f45348j) {
            we3.f45344f = false;
            return;
        }
        int[] iArr = we3.f45341c;
        while (true) {
            int i14 = (i11 + 1) & this.f44708f.f45343e;
            while (true) {
                i10 = iArr[i14];
                if (i10 == 0) {
                    iArr[i11] = 0;
                    return;
                }
                int a10 = AbstractC7878jA.a(i10);
                we2 = this.f44708f;
                int i15 = we2.f45343e;
                int i16 = a10 & i15;
                if (i11 > i14) {
                    if (i11 >= i16 && i16 > i14) {
                        break;
                    }
                    i14 = (i14 + 1) & i15;
                } else if (i11 >= i16 || i16 > i14) {
                    break;
                } else {
                    i14 = (i14 + 1) & i15;
                }
            }
            iArr[i11] = i10;
            int[] iArr2 = we2.f45342d;
            iArr2[i11] = iArr2[i14];
            if (this.f44705c == i14) {
                this.f44705c = i11;
            }
            if (this.f44704b == i14) {
                this.f44704b = i11;
            }
            we2.c(i14, i11);
            i11 = i14;
        }
    }
}
