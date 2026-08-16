package com.android.tools.r8.internal;

import com.google.common.collect.C12510d2;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.NoSuchElementException;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class QG extends V implements Cloneable {

    public transient int[] f43524b;

    public transient Object[] f43525c;

    public transient int f43526d;

    public transient boolean f43527e;

    public transient int f43528f = -1;

    public transient int f43529g = -1;

    public transient long[] f43530h;

    public transient int f43531i;

    public transient int f43532j;

    public int f43533k;

    public transient NG f43534l;

    public transient LG f43535m;

    public transient IG f43536n;

    public QG() {
        int a10 = AbstractC7878jA.a(16, 0.75f);
        this.f43531i = a10;
        this.f43526d = a10 - 1;
        this.f43532j = AbstractC7878jA.b(a10, 0.75f);
        int i10 = this.f43531i + 1;
        this.f43524b = new int[i10];
        this.f43525c = new Object[i10];
        this.f43530h = new long[i10];
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x001c, code lost:
    
        if (r3 == r10) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x001e, code lost:
    
        r10 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0020, code lost:
    
        r2 = (r2 + 1) & r9.f43526d;
        r3 = r1[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0026, code lost:
    
        if (r3 == 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0028, code lost:
    
        if (r3 != r10) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0043  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(int i10, Object obj) {
        int i11;
        int i12;
        int i13;
        if (i10 == 0) {
            if (this.f43527e) {
                i12 = this.f43531i;
            } else {
                this.f43527e = true;
                i11 = this.f43531i;
                this.f43524b[i11] = i10;
                this.f43525c[i11] = obj;
                i13 = this.f43533k;
                if (i13 != 0) {
                    this.f43529g = i11;
                    this.f43528f = i11;
                    this.f43530h[i11] = -1;
                } else {
                    long[] jArr = this.f43530h;
                    int i14 = this.f43529g;
                    long j10 = jArr[i14];
                    jArr[i14] = j10 ^ (((i11 & 4294967295L) ^ j10) & 4294967295L);
                    jArr[i11] = ((i14 & 4294967295L) << 32) | 4294967295L;
                    this.f43529g = i11;
                }
                this.f43533k = i13 + 1;
                if (i13 >= this.f43532j) {
                    e(AbstractC7878jA.a(i13 + 2, 0.75f));
                }
                i12 = -1;
            }
        } else {
            int[] iArr = this.f43524b;
            int a10 = AbstractC7878jA.a(i10) & this.f43526d;
            int i15 = iArr[a10];
            if (i15 != 0) {
            }
            i11 = a10;
            this.f43524b[i11] = i10;
            this.f43525c[i11] = obj;
            i13 = this.f43533k;
            if (i13 != 0) {
            }
            this.f43533k = i13 + 1;
            if (i13 >= this.f43532j) {
            }
            i12 = -1;
        }
        if (i12 < 0) {
            return null;
        }
        Object[] objArr = this.f43525c;
        Object obj2 = objArr[i12];
        objArr[i12] = obj;
        return obj2;
    }

    @Override
    public final InterfaceC10068wH b(int i10) {
        throw new UnsupportedOperationException();
    }

    public final void c(int i10, int i11) {
        if (this.f43533k == 1) {
            this.f43529g = i11;
            this.f43528f = i11;
            this.f43530h[i11] = -1;
            return;
        }
        if (this.f43528f == i10) {
            this.f43528f = i11;
            long[] jArr = this.f43530h;
            int i12 = (int) jArr[i10];
            long j10 = jArr[i12];
            jArr[i12] = (C12510d2.f66536l & (((4294967295L & i11) << 32) ^ j10)) ^ j10;
            jArr[i11] = jArr[i10];
            return;
        }
        if (this.f43529g == i10) {
            this.f43529g = i11;
            long[] jArr2 = this.f43530h;
            int i13 = (int) (jArr2[i10] >>> 32);
            long j11 = jArr2[i13];
            jArr2[i13] = j11 ^ (4294967295L & ((i11 & 4294967295L) ^ j11));
            jArr2[i11] = jArr2[i10];
            return;
        }
        long[] jArr3 = this.f43530h;
        long j12 = jArr3[i10];
        int i14 = (int) (j12 >>> 32);
        int i15 = (int) j12;
        long j13 = jArr3[i14];
        long j14 = i11 & 4294967295L;
        jArr3[i14] = ((j13 ^ j14) & 4294967295L) ^ j13;
        long j15 = jArr3[i15];
        jArr3[i15] = (C12510d2.f66536l & ((j14 << 32) ^ j15)) ^ j15;
        jArr3[i11] = j12;
    }

    @Override
    public final void clear() {
        if (this.f43533k == 0) {
            return;
        }
        this.f43533k = 0;
        this.f43527e = false;
        Arrays.fill(this.f43524b, 0);
        Arrays.fill(this.f43525c, (Object) null);
        this.f43529g = -1;
        this.f43528f = -1;
    }

    public final Object clone() {
        try {
            QG qg2 = (QG) super.clone();
            qg2.f43535m = null;
            qg2.f43536n = null;
            qg2.f43534l = null;
            qg2.f43527e = this.f43527e;
            qg2.f43524b = (int[]) this.f43524b.clone();
            qg2.f43525c = (Object[]) this.f43525c.clone();
            qg2.f43530h = (long[]) this.f43530h.clone();
            return qg2;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final C7401gI comparator() {
        return null;
    }

    @Override
    public final boolean containsValue(Object obj) {
        Object[] objArr = this.f43525c;
        int[] iArr = this.f43524b;
        if (this.f43527e && objArr[this.f43531i] == obj) {
            return true;
        }
        int i10 = this.f43531i;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            if (iArr[i11] != 0 && objArr[i11] == obj) {
                return true;
            }
            i10 = i11;
        }
    }

    public final void d(int i10) {
        if (this.f43533k == 0) {
            this.f43529g = -1;
            this.f43528f = -1;
            return;
        }
        if (this.f43528f == i10) {
            long[] jArr = this.f43530h;
            int i11 = (int) jArr[i10];
            this.f43528f = i11;
            if (i11 >= 0) {
                jArr[i11] = C12510d2.f66536l | jArr[i11];
                return;
            }
            return;
        }
        if (this.f43529g == i10) {
            long[] jArr2 = this.f43530h;
            int i12 = (int) (jArr2[i10] >>> 32);
            this.f43529g = i12;
            if (i12 >= 0) {
                jArr2[i12] = jArr2[i12] | 4294967295L;
                return;
            }
            return;
        }
        long[] jArr3 = this.f43530h;
        long j10 = jArr3[i10];
        int i13 = (int) (j10 >>> 32);
        int i14 = (int) j10;
        long j11 = jArr3[i13];
        jArr3[i13] = (4294967295L & ((j10 & 4294967295L) ^ j11)) ^ j11;
        long j12 = jArr3[i14];
        jArr3[i14] = (C12510d2.f66536l & ((j10 & C12510d2.f66536l) ^ j12)) ^ j12;
    }

    public final void e(int i10) {
        int i11;
        int[] iArr;
        Object[] objArr;
        int[] iArr2 = this.f43524b;
        Object[] objArr2 = this.f43525c;
        int i12 = i10 - 1;
        int i13 = i10 + 1;
        int[] iArr3 = new int[i13];
        Object[] objArr3 = new Object[i13];
        int i14 = this.f43528f;
        long[] jArr = this.f43530h;
        long[] jArr2 = new long[i13];
        int i15 = -1;
        this.f43528f = -1;
        int i16 = this.f43533k;
        int i17 = -1;
        int i18 = -1;
        while (true) {
            int i19 = i16 - 1;
            if (i16 == 0) {
                break;
            }
            int i20 = iArr2[i14];
            if (i20 != 0) {
                int a10 = AbstractC7878jA.a(i20);
                while (true) {
                    i11 = a10 & i12;
                    if (iArr3[i11] == 0) {
                        break;
                    } else {
                        a10 = i11 + 1;
                    }
                }
            } else {
                i11 = i10;
            }
            iArr3[i11] = iArr2[i14];
            objArr3[i11] = objArr2[i14];
            if (i18 != i15) {
                long j10 = jArr2[i17];
                iArr = iArr2;
                objArr = objArr2;
                jArr2[i17] = j10 ^ ((j10 ^ (i11 & 4294967295L)) & 4294967295L);
                long j11 = jArr2[i11];
                int i21 = i11;
                jArr2[i21] = j11 ^ ((((i17 & 4294967295L) << 32) ^ j11) & C12510d2.f66536l);
                i11 = i21;
            } else {
                iArr = iArr2;
                objArr = objArr2;
                this.f43528f = i11;
                jArr2[i11] = -1;
            }
            i17 = i11;
            i16 = i19;
            objArr2 = objArr;
            i15 = -1;
            int i22 = i14;
            i14 = (int) jArr[i14];
            iArr2 = iArr;
            i18 = i22;
        }
        this.f43530h = jArr2;
        this.f43529g = i17;
        if (i17 != -1) {
            jArr2[i17] = jArr2[i17] | 4294967295L;
        }
        this.f43531i = i10;
        this.f43526d = i12;
        this.f43532j = AbstractC7878jA.b(i10, 0.75f);
        this.f43524b = iArr3;
        this.f43525c = objArr3;
    }

    public final Object f(int i10) {
        int i11;
        int i12;
        Object[] objArr = this.f43525c;
        Object obj = objArr[i10];
        objArr[i10] = null;
        this.f43533k--;
        d(i10);
        int[] iArr = this.f43524b;
        loop0: while (true) {
            int i13 = (i10 + 1) & this.f43526d;
            while (true) {
                i11 = iArr[i13];
                if (i11 == 0) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(i11);
                int i14 = this.f43526d;
                int i15 = a10 & i14;
                if (i10 > i13) {
                    if (i10 >= i15 && i15 > i13) {
                        break;
                    }
                    i13 = (i13 + 1) & i14;
                } else if (i10 < i15 && i15 <= i13) {
                    i13 = (i13 + 1) & i14;
                }
            }
            iArr[i10] = i11;
            Object[] objArr2 = this.f43525c;
            objArr2[i10] = objArr2[i13];
            c(i13, i10);
            i10 = i13;
        }
        iArr[i10] = 0;
        this.f43525c[i10] = null;
        if (this.f43533k < this.f43532j / 4 && (i12 = this.f43531i) > 16) {
            e(i12 / 2);
        }
        return obj;
    }

    @Override
    public final Object get(int i10) {
        int i11;
        if (i10 == 0) {
            if (this.f43527e) {
                return this.f43525c[this.f43531i];
            }
            return null;
        }
        int[] iArr = this.f43524b;
        int a10 = AbstractC7878jA.a(i10) & this.f43526d;
        int i12 = iArr[a10];
        if (i12 == 0) {
            return null;
        }
        if (i10 == i12) {
            return this.f43525c[a10];
        }
        do {
            a10 = (a10 + 1) & this.f43526d;
            i11 = iArr[a10];
            if (i11 == 0) {
                return null;
            }
        } while (i10 != i11);
        return this.f43525c[a10];
    }

    @Override
    public final int hashCode() {
        int i10;
        int i11 = this.f43527e ? this.f43533k - 1 : this.f43533k;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i11 - 1;
            if (i11 == 0) {
                break;
            }
            while (true) {
                i10 = this.f43524b[i12];
                if (i10 != 0) {
                    break;
                }
                i12++;
            }
            Object obj = this.f43525c[i12];
            if (this != obj) {
                i10 ^= obj == null ? 0 : System.identityHashCode(obj);
            }
            i13 += i10;
            i12++;
            i11 = i14;
        }
        if (!this.f43527e) {
            return i13;
        }
        Object obj2 = this.f43525c[this.f43531i];
        return i13 + (obj2 != null ? System.identityHashCode(obj2) : 0);
    }

    @Override
    public final boolean isEmpty() {
        return this.f43533k == 0;
    }

    @Override
    public final InterfaceC9069qI o() {
        if (this.f43535m == null) {
            this.f43535m = new LG(this);
        }
        return this.f43535m;
    }

    @Override
    public final void putAll(Map map) {
        if (0.75f <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), 0.75f);
            if (a10 > this.f43531i) {
                e(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f43533k) / 0.75f))));
            if (min > this.f43531i) {
                e(min);
            }
        }
        super.putAll(map);
    }

    @Override
    public final Object remove(int i10) {
        int i11;
        int i12;
        if (i10 == 0) {
            if (!this.f43527e) {
                return null;
            }
            this.f43527e = false;
            Object[] objArr = this.f43525c;
            int i13 = this.f43531i;
            Object obj = objArr[i13];
            objArr[i13] = null;
            this.f43533k--;
            d(i13);
            if (this.f43533k < this.f43532j / 4 && (i12 = this.f43531i) > 16) {
                e(i12 / 2);
            }
            return obj;
        }
        int[] iArr = this.f43524b;
        int a10 = AbstractC7878jA.a(i10) & this.f43526d;
        int i14 = iArr[a10];
        if (i14 == 0) {
            return null;
        }
        if (i10 == i14) {
            return f(a10);
        }
        do {
            a10 = (a10 + 1) & this.f43526d;
            i11 = iArr[a10];
            if (i11 == 0) {
                return null;
            }
        } while (i10 != i11);
        return f(a10);
    }

    @Override
    public final int size() {
        return this.f43533k;
    }

    @Override
    public final InterfaceC5667Od0 values() {
        if (this.f43536n == null) {
            this.f43536n = new IG(this);
        }
        return this.f43536n;
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final int d() {
        if (this.f43533k != 0) {
            return this.f43524b[this.f43529g];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final InterfaceC10068wH c(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final I30 c() {
        if (this.f43534l == null) {
            this.f43534l = new NG(this);
        }
        return this.f43534l;
    }

    @Override
    public final boolean a(int i10) {
        int i11;
        if (i10 == 0) {
            return this.f43527e;
        }
        int[] iArr = this.f43524b;
        int a10 = AbstractC7878jA.a(i10) & this.f43526d;
        int i12 = iArr[a10];
        if (i12 == 0) {
            return false;
        }
        if (i10 == i12) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f43526d;
            i11 = iArr[a10];
            if (i11 == 0) {
                return false;
            }
        } while (i10 != i11);
        return true;
    }

    @Override
    public final M30 c() {
        if (this.f43534l == null) {
            this.f43534l = new NG(this);
        }
        return this.f43534l;
    }

    @Override
    public final int a() {
        if (this.f43533k != 0) {
            return this.f43524b[this.f43528f];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final InterfaceC10068wH a(int i10, int i11) {
        throw new UnsupportedOperationException();
    }
}
