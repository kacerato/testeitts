package com.android.tools.r8.internal;

import com.google.common.collect.C12510d2;
import java.util.NoSuchElementException;

public abstract class AbstractC7690i20 {

    public int f48753c;

    public int f48755e;

    public final C8022k20 f48756f;

    public int f48752b = -1;

    public int f48754d = -1;

    public AbstractC7690i20(C8022k20 c8022k20) {
        this.f48756f = c8022k20;
        this.f48753c = -1;
        this.f48755e = -1;
        this.f48753c = c8022k20.f49460g;
        this.f48755e = 0;
    }

    public final void a() {
        if (this.f48755e >= 0) {
            return;
        }
        if (this.f48752b == -1) {
            this.f48755e = 0;
            return;
        }
        if (this.f48753c == -1) {
            this.f48755e = this.f48756f.f49465l;
            return;
        }
        int i10 = this.f48756f.f49460g;
        this.f48755e = 1;
        while (i10 != this.f48752b) {
            i10 = (int) this.f48756f.f49462i[i10];
            this.f48755e++;
        }
    }

    public final int b() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f48753c;
        this.f48754d = i10;
        this.f48753c = (int) this.f48756f.f49462i[i10];
        this.f48752b = i10;
        int i11 = this.f48755e;
        if (i11 >= 0) {
            this.f48755e = i11 + 1;
        }
        return i10;
    }

    public final int d() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f48752b;
        this.f48754d = i10;
        this.f48752b = (int) (this.f48756f.f49462i[i10] >>> 32);
        this.f48753c = i10;
        int i11 = this.f48755e;
        if (i11 >= 0) {
            this.f48755e = i11 - 1;
        }
        return i10;
    }

    public final boolean hasNext() {
        return this.f48753c != -1;
    }

    public final boolean hasPrevious() {
        return this.f48752b != -1;
    }

    public final int nextIndex() {
        a();
        return this.f48755e;
    }

    public final int previousIndex() {
        a();
        return this.f48755e - 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x009c, code lost:
    
        r1[r0] = r4;
        r4 = r6.f49457d;
        r4[r0] = r4[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a6, code lost:
    
        if (r13.f48753c != r2) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a8, code lost:
    
        r13.f48753c = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ac, code lost:
    
        if (r13.f48752b != r2) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ae, code lost:
    
        r13.f48752b = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void remove() {
        C8022k20 c8022k20;
        a();
        int i10 = this.f48754d;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        if (i10 == this.f48752b) {
            this.f48755e--;
            this.f48752b = (int) (this.f48756f.f49462i[i10] >>> 32);
        } else {
            this.f48753c = (int) this.f48756f.f49462i[i10];
        }
        C8022k20 c8022k202 = this.f48756f;
        c8022k202.f49465l--;
        int i11 = this.f48752b;
        if (i11 == -1) {
            c8022k202.f49460g = this.f48753c;
        } else {
            long[] jArr = c8022k202.f49462i;
            long j10 = jArr[i11];
            jArr[i11] = j10 ^ (((this.f48753c & 4294967295L) ^ j10) & 4294967295L);
        }
        int i12 = this.f48753c;
        if (i12 == -1) {
            c8022k202.f49461h = i11;
        } else {
            long[] jArr2 = c8022k202.f49462i;
            long j11 = jArr2[i12];
            jArr2[i12] = ((((i11 & 4294967295L) << 32) ^ j11) & C12510d2.f66536l) ^ j11;
        }
        this.f48754d = -1;
        int i13 = c8022k202.f49463j;
        if (i10 == i13) {
            c8022k202.f49459f = false;
            c8022k202.f49456c[i13] = null;
            return;
        }
        Object[] objArr = c8022k202.f49456c;
        while (true) {
            int i14 = (i10 + 1) & this.f48756f.f49458e;
            while (true) {
                Object obj = objArr[i14];
                if (obj == null) {
                    objArr[i10] = null;
                    return;
                }
                int a10 = AbstractC7878jA.a(obj.hashCode());
                c8022k20 = this.f48756f;
                int i15 = c8022k20.f49458e;
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
            c8022k20.c(i14, i10);
            i10 = i14;
        }
    }
}
