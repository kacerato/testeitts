package com.android.tools.r8.internal;

import com.google.common.collect.C12510d2;
import java.util.NoSuchElementException;

public abstract class OG {

    public int f42840c;

    public int f42842e;

    public final QG f42843f;

    public int f42839b = -1;

    public int f42841d = -1;

    public OG(QG qg2) {
        this.f42843f = qg2;
        this.f42840c = -1;
        this.f42842e = -1;
        this.f42840c = qg2.f43528f;
        this.f42842e = 0;
    }

    public final void a() {
        if (this.f42842e >= 0) {
            return;
        }
        if (this.f42839b == -1) {
            this.f42842e = 0;
            return;
        }
        if (this.f42840c == -1) {
            this.f42842e = this.f42843f.f43533k;
            return;
        }
        int i10 = this.f42843f.f43528f;
        this.f42842e = 1;
        while (i10 != this.f42839b) {
            i10 = (int) this.f42843f.f43530h[i10];
            this.f42842e++;
        }
    }

    public final int b() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f42840c;
        this.f42841d = i10;
        this.f42840c = (int) this.f42843f.f43530h[i10];
        this.f42839b = i10;
        int i11 = this.f42842e;
        if (i11 >= 0) {
            this.f42842e = i11 + 1;
        }
        return i10;
    }

    public final int d() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f42839b;
        this.f42841d = i10;
        this.f42839b = (int) (this.f42843f.f43530h[i10] >>> 32);
        this.f42840c = i10;
        int i11 = this.f42842e;
        if (i11 >= 0) {
            this.f42842e = i11 - 1;
        }
        return i10;
    }

    public final boolean hasNext() {
        return this.f42840c != -1;
    }

    public final boolean hasPrevious() {
        return this.f42839b != -1;
    }

    public final int nextIndex() {
        a();
        return this.f42842e;
    }

    public final int previousIndex() {
        a();
        return this.f42842e - 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x009e, code lost:
    
        r1[r0] = r5;
        r5 = r7.f43525c;
        r5[r0] = r5[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a8, code lost:
    
        if (r13.f42840c != r2) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00aa, code lost:
    
        r13.f42840c = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ae, code lost:
    
        if (r13.f42839b != r2) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b0, code lost:
    
        r13.f42839b = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void remove() {
        QG qg2;
        a();
        int i10 = this.f42841d;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        if (i10 == this.f42839b) {
            this.f42842e--;
            this.f42839b = (int) (this.f42843f.f43530h[i10] >>> 32);
        } else {
            this.f42840c = (int) this.f42843f.f43530h[i10];
        }
        QG qg3 = this.f42843f;
        qg3.f43533k--;
        int i11 = this.f42839b;
        if (i11 == -1) {
            qg3.f43528f = this.f42840c;
        } else {
            long[] jArr = qg3.f43530h;
            long j10 = jArr[i11];
            jArr[i11] = j10 ^ (((this.f42840c & 4294967295L) ^ j10) & 4294967295L);
        }
        int i12 = this.f42840c;
        if (i12 == -1) {
            qg3.f43529g = i11;
        } else {
            long[] jArr2 = qg3.f43530h;
            long j11 = jArr2[i12];
            jArr2[i12] = ((((i11 & 4294967295L) << 32) ^ j11) & C12510d2.f66536l) ^ j11;
        }
        this.f42841d = -1;
        int i13 = qg3.f43531i;
        if (i10 == i13) {
            qg3.f43527e = false;
            qg3.f43525c[i13] = null;
            return;
        }
        int[] iArr = qg3.f43524b;
        while (true) {
            int i14 = (i10 + 1) & this.f42843f.f43526d;
            while (true) {
                int i15 = iArr[i14];
                if (i15 == 0) {
                    iArr[i10] = 0;
                    this.f42843f.f43525c[i10] = null;
                    return;
                }
                int a10 = AbstractC7878jA.a(i15);
                qg2 = this.f42843f;
                int i16 = qg2.f43526d;
                int i17 = a10 & i16;
                if (i10 > i14) {
                    if (i10 >= i17 && i17 > i14) {
                        break;
                    }
                    i14 = (i14 + 1) & i16;
                } else if (i10 >= i17 || i17 > i14) {
                    break;
                } else {
                    i14 = (i14 + 1) & i16;
                }
            }
            qg2.c(i14, i10);
            i10 = i14;
        }
    }
}
