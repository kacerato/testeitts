package com.android.tools.r8.internal;

import com.google.common.collect.C12510d2;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class C8022k20 extends Y0 implements Cloneable, SortedMap {

    public transient Object[] f49456c;

    public transient int[] f49457d;

    public transient int f49458e;

    public transient boolean f49459f;

    public transient int f49460g = -1;

    public transient int f49461h = -1;

    public transient long[] f49462i;

    public transient int f49463j;

    public transient int f49464k;

    public int f49465l;

    public transient C7523h20 f49466m;

    public transient C7189f20 f49467n;

    public transient C6689c20 f49468o;

    public C8022k20() {
        int a10 = AbstractC7878jA.a(16, 0.75f);
        this.f49463j = a10;
        this.f49458e = a10 - 1;
        this.f49464k = AbstractC7878jA.b(a10, 0.75f);
        int i10 = this.f49463j + 1;
        this.f49456c = new Object[i10];
        this.f49457d = new int[i10];
        this.f49462i = new long[i10];
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0025, code lost:
    
        if (r3.equals(r11) != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0027, code lost:
    
        r11 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0029, code lost:
    
        r2 = (r2 + 1) & r9.f49458e;
        r3 = r1[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x002f, code lost:
    
        if (r3 == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0035, code lost:
    
        if (r3.equals(r11) == false) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0050  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int b(int i10, Object obj) {
        int i11;
        int i12;
        int i13;
        if (obj == null) {
            if (this.f49459f) {
                i12 = this.f49463j;
            } else {
                this.f49459f = true;
                i11 = this.f49463j;
                this.f49456c[i11] = obj;
                this.f49457d[i11] = i10;
                i13 = this.f49465l;
                if (i13 != 0) {
                    this.f49461h = i11;
                    this.f49460g = i11;
                    this.f49462i[i11] = -1;
                } else {
                    long[] jArr = this.f49462i;
                    int i14 = this.f49461h;
                    long j10 = jArr[i14];
                    jArr[i14] = j10 ^ (((i11 & 4294967295L) ^ j10) & 4294967295L);
                    jArr[i11] = ((i14 & 4294967295L) << 32) | 4294967295L;
                    this.f49461h = i11;
                }
                this.f49465l = i13 + 1;
                if (i13 >= this.f49464k) {
                    f(AbstractC7878jA.a(i13 + 2, 0.75f));
                }
                i12 = -1;
            }
        } else {
            Object[] objArr = this.f49456c;
            int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f49458e;
            Object obj2 = objArr[a10];
            if (obj2 != null) {
            }
            i11 = a10;
            this.f49456c[i11] = obj;
            this.f49457d[i11] = i10;
            i13 = this.f49465l;
            if (i13 != 0) {
            }
            this.f49465l = i13 + 1;
            if (i13 >= this.f49464k) {
            }
            i12 = -1;
        }
        if (i12 < 0) {
            return this.f45889b;
        }
        int[] iArr = this.f49457d;
        int i15 = iArr[i12];
        iArr[i12] = i10;
        return i15;
    }

    @Override
    public final int c(Object obj) {
        Object obj2;
        int i10;
        if (obj == null) {
            if (this.f49459f) {
                this.f49459f = false;
                Object[] objArr = this.f49456c;
                int i11 = this.f49463j;
                objArr[i11] = null;
                int i12 = this.f49457d[i11];
                this.f49465l--;
                e(i11);
                if (this.f49465l < this.f49464k / 4 && (i10 = this.f49463j) > 16) {
                    f(i10 / 2);
                }
                return i12;
            }
            return this.f45889b;
        }
        Object[] objArr2 = this.f49456c;
        int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f49458e;
        Object obj3 = objArr2[a10];
        if (obj3 == null) {
            return this.f45889b;
        }
        if (obj.equals(obj3)) {
            return g(a10);
        }
        do {
            a10 = (a10 + 1) & this.f49458e;
            obj2 = objArr2[a10];
            if (obj2 == null) {
                return this.f45889b;
            }
        } while (!obj.equals(obj2));
        return g(a10);
    }

    @Override
    public final void clear() {
        if (this.f49465l == 0) {
            return;
        }
        this.f49465l = 0;
        this.f49459f = false;
        Arrays.fill(this.f49456c, (Object) null);
        this.f49461h = -1;
        this.f49460g = -1;
    }

    public final Object clone() {
        try {
            C8022k20 c8022k20 = (C8022k20) super.clone();
            c8022k20.f49467n = null;
            c8022k20.f49468o = null;
            c8022k20.f49466m = null;
            c8022k20.f49459f = this.f49459f;
            c8022k20.f49456c = (Object[]) this.f49456c.clone();
            c8022k20.f49457d = (int[]) this.f49457d.clone();
            c8022k20.f49462i = (long[]) this.f49462i.clone();
            return c8022k20;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final boolean containsKey(Object obj) {
        Object obj2;
        if (obj == null) {
            return this.f49459f;
        }
        Object[] objArr = this.f49456c;
        int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f49458e;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return false;
        }
        if (obj.equals(obj3)) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f49458e;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return false;
            }
        } while (!obj.equals(obj2));
        return true;
    }

    @Override
    public final boolean d(int i10) {
        int[] iArr = this.f49457d;
        Object[] objArr = this.f49456c;
        if (this.f49459f && iArr[this.f49463j] == i10) {
            return true;
        }
        int i11 = this.f49463j;
        while (true) {
            int i12 = i11 - 1;
            if (i11 == 0) {
                return false;
            }
            if (objArr[i12] != null && iArr[i12] == i10) {
                return true;
            }
            i11 = i12;
        }
    }

    public final void e(int i10) {
        if (this.f49465l == 0) {
            this.f49461h = -1;
            this.f49460g = -1;
            return;
        }
        if (this.f49460g == i10) {
            long[] jArr = this.f49462i;
            int i11 = (int) jArr[i10];
            this.f49460g = i11;
            if (i11 >= 0) {
                jArr[i11] = C12510d2.f66536l | jArr[i11];
                return;
            }
            return;
        }
        if (this.f49461h == i10) {
            long[] jArr2 = this.f49462i;
            int i12 = (int) (jArr2[i10] >>> 32);
            this.f49461h = i12;
            if (i12 >= 0) {
                jArr2[i12] = jArr2[i12] | 4294967295L;
                return;
            }
            return;
        }
        long[] jArr3 = this.f49462i;
        long j10 = jArr3[i10];
        int i13 = (int) (j10 >>> 32);
        int i14 = (int) j10;
        long j11 = jArr3[i13];
        jArr3[i13] = (4294967295L & ((j10 & 4294967295L) ^ j11)) ^ j11;
        long j12 = jArr3[i14];
        jArr3[i14] = (C12510d2.f66536l & ((j10 & C12510d2.f66536l) ^ j12)) ^ j12;
    }

    @Override
    public final Set entrySet() {
        if (this.f49466m == null) {
            this.f49466m = new C7523h20(this);
        }
        return this.f49466m;
    }

    public final void f(int i10) {
        int i11;
        Object[] objArr;
        int[] iArr;
        Object[] objArr2 = this.f49456c;
        int[] iArr2 = this.f49457d;
        int i12 = i10 - 1;
        int i13 = i10 + 1;
        Object[] objArr3 = new Object[i13];
        int[] iArr3 = new int[i13];
        int i14 = this.f49460g;
        long[] jArr = this.f49462i;
        long[] jArr2 = new long[i13];
        int i15 = -1;
        this.f49460g = -1;
        int i16 = this.f49465l;
        int i17 = -1;
        int i18 = -1;
        while (true) {
            int i19 = i16 - 1;
            if (i16 == 0) {
                break;
            }
            Object obj = objArr2[i14];
            if (obj != null) {
                int a10 = AbstractC7878jA.a(obj.hashCode());
                while (true) {
                    i11 = a10 & i12;
                    if (objArr3[i11] == null) {
                        break;
                    } else {
                        a10 = i11 + 1;
                    }
                }
            } else {
                i11 = i10;
            }
            objArr3[i11] = objArr2[i14];
            iArr3[i11] = iArr2[i14];
            if (i18 != i15) {
                long j10 = jArr2[i17];
                objArr = objArr2;
                iArr = iArr2;
                jArr2[i17] = j10 ^ ((j10 ^ (i11 & 4294967295L)) & 4294967295L);
                long j11 = jArr2[i11];
                int i20 = i11;
                jArr2[i20] = j11 ^ ((((i17 & 4294967295L) << 32) ^ j11) & C12510d2.f66536l);
                i11 = i20;
            } else {
                objArr = objArr2;
                iArr = iArr2;
                this.f49460g = i11;
                jArr2[i11] = -1;
            }
            i17 = i11;
            i16 = i19;
            iArr2 = iArr;
            i15 = -1;
            int i21 = i14;
            i14 = (int) jArr[i14];
            objArr2 = objArr;
            i18 = i21;
        }
        this.f49462i = jArr2;
        this.f49461h = i17;
        if (i17 != -1) {
            jArr2[i17] = jArr2[i17] | 4294967295L;
        }
        this.f49463j = i10;
        this.f49458e = i12;
        this.f49464k = AbstractC7878jA.b(i10, 0.75f);
        this.f49456c = objArr3;
        this.f49457d = iArr3;
    }

    @Override
    public final Object firstKey() {
        if (this.f49465l != 0) {
            return this.f49456c[this.f49460g];
        }
        throw new NoSuchElementException();
    }

    public final int g(int i10) {
        Object obj;
        int i11;
        int i12 = this.f49457d[i10];
        this.f49465l--;
        e(i10);
        Object[] objArr = this.f49456c;
        loop0: while (true) {
            int i13 = (i10 + 1) & this.f49458e;
            while (true) {
                obj = objArr[i13];
                if (obj == null) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(obj.hashCode());
                int i14 = this.f49458e;
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
            objArr[i10] = obj;
            int[] iArr = this.f49457d;
            iArr[i10] = iArr[i13];
            c(i13, i10);
            i10 = i13;
        }
        objArr[i10] = null;
        if (this.f49465l < this.f49464k / 4 && (i11 = this.f49463j) > 16) {
            f(i11 / 2);
        }
        return i12;
    }

    @Override
    public final int hashCode() {
        Object obj;
        int i10 = this.f49459f ? this.f49465l - 1 : this.f49465l;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i10 - 1;
            if (i10 == 0) {
                break;
            }
            while (true) {
                obj = this.f49456c[i11];
                if (obj != null) {
                    break;
                }
                i11++;
            }
            if (this != obj) {
                i13 = obj.hashCode();
            }
            i13 ^= this.f49457d[i11];
            i12 += i13;
            i11++;
            i10 = i14;
        }
        return this.f49459f ? i12 + this.f49457d[this.f49463j] : i12;
    }

    @Override
    public final SortedMap headMap(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final I30 i() {
        if (this.f49466m == null) {
            this.f49466m = new C7523h20(this);
        }
        return this.f49466m;
    }

    @Override
    public final boolean isEmpty() {
        return this.f49465l == 0;
    }

    @Override
    public final M30 o() {
        if (this.f49467n == null) {
            this.f49467n = new C7189f20(this);
        }
        return this.f49467n;
    }

    @Override
    public final Object lastKey() {
        if (this.f49465l != 0) {
            return this.f49456c[this.f49461h];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final void putAll(Map map) {
        if (0.75f <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), 0.75f);
            if (a10 > this.f49463j) {
                f(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f49465l) / 0.75f))));
            if (min > this.f49463j) {
                f(min);
            }
        }
        super.putAll(map);
    }

    @Override
    public final int size() {
        return this.f49465l;
    }

    @Override
    public final SortedMap subMap(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final SortedMap tailMap(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Collection values() {
        if (this.f49468o == null) {
            this.f49468o = new C6689c20(this);
        }
        return this.f49468o;
    }

    @Override
    public final I30 entrySet() {
        if (this.f49466m == null) {
            this.f49466m = new C7523h20(this);
        }
        return this.f49466m;
    }

    public final void c(int i10, int i11) {
        if (this.f49465l == 1) {
            this.f49461h = i11;
            this.f49460g = i11;
            this.f49462i[i11] = -1;
            return;
        }
        if (this.f49460g == i10) {
            this.f49460g = i11;
            long[] jArr = this.f49462i;
            int i12 = (int) jArr[i10];
            long j10 = jArr[i12];
            jArr[i12] = (C12510d2.f66536l & (((4294967295L & i11) << 32) ^ j10)) ^ j10;
            jArr[i11] = jArr[i10];
            return;
        }
        if (this.f49461h == i10) {
            this.f49461h = i11;
            long[] jArr2 = this.f49462i;
            int i13 = (int) (jArr2[i10] >>> 32);
            long j11 = jArr2[i13];
            jArr2[i13] = j11 ^ (4294967295L & ((i11 & 4294967295L) ^ j11));
            jArr2[i11] = jArr2[i10];
            return;
        }
        long[] jArr3 = this.f49462i;
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
    public final int b(Object obj) {
        Object obj2;
        if (obj == null) {
            return this.f49459f ? this.f49457d[this.f49463j] : this.f45889b;
        }
        Object[] objArr = this.f49456c;
        int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f49458e;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return this.f45889b;
        }
        if (obj.equals(obj3)) {
            return this.f49457d[a10];
        }
        do {
            a10 = (a10 + 1) & this.f49458e;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return this.f45889b;
            }
        } while (!obj.equals(obj2));
        return this.f49457d[a10];
    }
}
