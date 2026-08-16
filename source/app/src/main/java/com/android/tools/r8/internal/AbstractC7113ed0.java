package com.android.tools.r8.internal;

import com.google.common.collect.C12510d2;
import java.util.NoSuchElementException;

public abstract class AbstractC7113ed0 {

    public int f47729c;

    public int f47731e;

    public final C7447gd0 f47732f;

    public int f47728b = -1;

    public int f47730d = -1;

    public AbstractC7113ed0(C7447gd0 c7447gd0) {
        this.f47732f = c7447gd0;
        this.f47729c = -1;
        this.f47731e = -1;
        this.f47729c = c7447gd0.f48312g;
        this.f47731e = 0;
    }

    public final void a() {
        if (this.f47731e >= 0) {
            return;
        }
        if (this.f47728b == -1) {
            this.f47731e = 0;
            return;
        }
        if (this.f47729c == -1) {
            this.f47731e = this.f47732f.f48317l;
            return;
        }
        int i10 = this.f47732f.f48312g;
        this.f47731e = 1;
        while (i10 != this.f47728b) {
            i10 = (int) this.f47732f.f48314i[i10];
            this.f47731e++;
        }
    }

    public final int b() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f47729c;
        this.f47730d = i10;
        this.f47729c = (int) this.f47732f.f48314i[i10];
        this.f47728b = i10;
        int i11 = this.f47731e;
        if (i11 >= 0) {
            this.f47731e = i11 + 1;
        }
        return i10;
    }

    public final int d() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f47728b;
        this.f47730d = i10;
        this.f47728b = (int) (this.f47732f.f48314i[i10] >>> 32);
        this.f47729c = i10;
        int i11 = this.f47731e;
        if (i11 >= 0) {
            this.f47731e = i11 - 1;
        }
        return i10;
    }

    public final boolean hasNext() {
        return this.f47729c != -1;
    }

    public final boolean hasPrevious() {
        return this.f47728b != -1;
    }

    public final int nextIndex() {
        a();
        return this.f47731e;
    }

    public final int previousIndex() {
        a();
        return this.f47731e - 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x009c, code lost:
    
        r1[r0] = r4;
        r4 = r6.f48309d;
        r4[r0] = r4[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a6, code lost:
    
        if (r13.f47729c != r2) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a8, code lost:
    
        r13.f47729c = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ac, code lost:
    
        if (r13.f47728b != r2) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ae, code lost:
    
        r13.f47728b = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void remove() {
        C7447gd0 c7447gd0;
        a();
        int i10 = this.f47730d;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        if (i10 == this.f47728b) {
            this.f47731e--;
            this.f47728b = (int) (this.f47732f.f48314i[i10] >>> 32);
        } else {
            this.f47729c = (int) this.f47732f.f48314i[i10];
        }
        C7447gd0 c7447gd02 = this.f47732f;
        c7447gd02.f48317l--;
        int i11 = this.f47728b;
        if (i11 == -1) {
            c7447gd02.f48312g = this.f47729c;
        } else {
            long[] jArr = c7447gd02.f48314i;
            long j10 = jArr[i11];
            jArr[i11] = j10 ^ (((this.f47729c & 4294967295L) ^ j10) & 4294967295L);
        }
        int i12 = this.f47729c;
        if (i12 == -1) {
            c7447gd02.f48313h = i11;
        } else {
            long[] jArr2 = c7447gd02.f48314i;
            long j11 = jArr2[i12];
            jArr2[i12] = ((((i11 & 4294967295L) << 32) ^ j11) & C12510d2.f66536l) ^ j11;
        }
        this.f47730d = -1;
        int i13 = c7447gd02.f48315j;
        if (i10 == i13) {
            c7447gd02.f48311f = false;
            c7447gd02.f48308c[i13] = null;
            return;
        }
        Object[] objArr = c7447gd02.f48308c;
        while (true) {
            int i14 = (i10 + 1) & this.f47732f.f48310e;
            while (true) {
                Object obj = objArr[i14];
                if (obj == null) {
                    objArr[i10] = null;
                    return;
                }
                int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                c7447gd0 = this.f47732f;
                int i15 = c7447gd0.f48310e;
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
            c7447gd0.c(i14, i10);
            i10 = i14;
        }
    }
}
