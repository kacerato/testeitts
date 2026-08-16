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

public final class C7447gd0 extends AbstractC10188x1 implements Cloneable, SortedMap {

    public transient Object[] f48308c;

    public transient int[] f48309d;

    public transient int f48310e;

    public transient boolean f48311f;

    public transient int f48312g = -1;

    public transient int f48313h = -1;

    public transient long[] f48314i;

    public transient int f48315j;

    public transient int f48316k;

    public int f48317l;

    public transient C6947dd0 f48318m;

    public transient C6614bd0 f48319n;

    public transient C6241Yc0 f48320o;

    public C7447gd0(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("The expected number of elements must be nonnegative");
        }
        int a10 = AbstractC7878jA.a(i10, 0.75f);
        this.f48315j = a10;
        this.f48310e = a10 - 1;
        this.f48316k = AbstractC7878jA.b(a10, 0.75f);
        int i11 = this.f48315j + 1;
        this.f48308c = new Object[i11];
        this.f48309d = new int[i11];
        this.f48314i = new long[i11];
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0021, code lost:
    
        if (r3 == r11) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0023, code lost:
    
        r11 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0025, code lost:
    
        r2 = (r2 + 1) & r9.f48310e;
        r3 = r1[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x002b, code lost:
    
        if (r3 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x002d, code lost:
    
        if (r3 != r11) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0048  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int b(int i10, Object obj) {
        int i11;
        int i12;
        int i13;
        if (obj == null) {
            if (this.f48311f) {
                i12 = this.f48315j;
            } else {
                this.f48311f = true;
                i11 = this.f48315j;
                this.f48308c[i11] = obj;
                this.f48309d[i11] = i10;
                i13 = this.f48317l;
                if (i13 != 0) {
                    this.f48313h = i11;
                    this.f48312g = i11;
                    this.f48314i[i11] = -1;
                } else {
                    long[] jArr = this.f48314i;
                    int i14 = this.f48313h;
                    long j10 = jArr[i14];
                    jArr[i14] = j10 ^ (((i11 & 4294967295L) ^ j10) & 4294967295L);
                    jArr[i11] = ((i14 & 4294967295L) << 32) | 4294967295L;
                    this.f48313h = i11;
                }
                this.f48317l = i13 + 1;
                if (i13 >= this.f48316k) {
                    f(AbstractC7878jA.a(i13 + 2, 0.75f));
                }
                i12 = -1;
            }
        } else {
            Object[] objArr = this.f48308c;
            int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f48310e;
            Object obj2 = objArr[a10];
            if (obj2 != null) {
            }
            i11 = a10;
            this.f48308c[i11] = obj;
            this.f48309d[i11] = i10;
            i13 = this.f48317l;
            if (i13 != 0) {
            }
            this.f48317l = i13 + 1;
            if (i13 >= this.f48316k) {
            }
            i12 = -1;
        }
        if (i12 < 0) {
            return this.f53665b;
        }
        int[] iArr = this.f48309d;
        int i15 = iArr[i12];
        iArr[i12] = i10;
        return i15;
    }

    @Override
    public final int c(Object obj) {
        Object obj2;
        int i10;
        if (obj == null) {
            if (this.f48311f) {
                this.f48311f = false;
                Object[] objArr = this.f48308c;
                int i11 = this.f48315j;
                objArr[i11] = null;
                int i12 = this.f48309d[i11];
                this.f48317l--;
                e(i11);
                if (this.f48317l < this.f48316k / 4 && (i10 = this.f48315j) > 16) {
                    f(i10 / 2);
                }
                return i12;
            }
            return this.f53665b;
        }
        Object[] objArr2 = this.f48308c;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f48310e;
        Object obj3 = objArr2[a10];
        if (obj3 == null) {
            return this.f53665b;
        }
        if (obj == obj3) {
            return g(a10);
        }
        do {
            a10 = (a10 + 1) & this.f48310e;
            obj2 = objArr2[a10];
            if (obj2 == null) {
                return this.f53665b;
            }
        } while (obj != obj2);
        return g(a10);
    }

    @Override
    public final void clear() {
        if (this.f48317l == 0) {
            return;
        }
        this.f48317l = 0;
        this.f48311f = false;
        Arrays.fill(this.f48308c, (Object) null);
        this.f48313h = -1;
        this.f48312g = -1;
    }

    public final Object clone() {
        try {
            C7447gd0 c7447gd0 = (C7447gd0) super.clone();
            c7447gd0.f48319n = null;
            c7447gd0.f48320o = null;
            c7447gd0.f48318m = null;
            c7447gd0.f48311f = this.f48311f;
            c7447gd0.f48308c = (Object[]) this.f48308c.clone();
            c7447gd0.f48309d = (int[]) this.f48309d.clone();
            c7447gd0.f48314i = (long[]) this.f48314i.clone();
            return c7447gd0;
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
            return this.f48311f;
        }
        Object[] objArr = this.f48308c;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f48310e;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return false;
        }
        if (obj == obj3) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f48310e;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return false;
            }
        } while (obj != obj2);
        return true;
    }

    @Override
    public final boolean d(int i10) {
        int[] iArr = this.f48309d;
        Object[] objArr = this.f48308c;
        if (this.f48311f && iArr[this.f48315j] == i10) {
            return true;
        }
        int i11 = this.f48315j;
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

    @Override
    public final I30 entrySet() {
        return i();
    }

    @Override
    public final Set entrySet() {
        return i();
    }

    public final void f(int i10) {
        int i11;
        Object[] objArr;
        int[] iArr;
        Object[] objArr2 = this.f48308c;
        int[] iArr2 = this.f48309d;
        int i12 = i10 - 1;
        int i13 = i10 + 1;
        Object[] objArr3 = new Object[i13];
        int[] iArr3 = new int[i13];
        int i14 = this.f48312g;
        long[] jArr = this.f48314i;
        long[] jArr2 = new long[i13];
        int i15 = -1;
        this.f48312g = -1;
        int i16 = this.f48317l;
        int i17 = -1;
        int i18 = -1;
        while (true) {
            int i19 = i16 - 1;
            if (i16 == 0) {
                break;
            }
            Object obj = objArr2[i14];
            if (obj != null) {
                int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
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
                this.f48312g = i11;
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
        this.f48314i = jArr2;
        this.f48313h = i17;
        if (i17 != -1) {
            jArr2[i17] = jArr2[i17] | 4294967295L;
        }
        this.f48315j = i10;
        this.f48310e = i12;
        this.f48316k = AbstractC7878jA.b(i10, 0.75f);
        this.f48308c = objArr3;
        this.f48309d = iArr3;
    }

    @Override
    public final Object firstKey() {
        if (this.f48317l != 0) {
            return this.f48308c[this.f48312g];
        }
        throw new NoSuchElementException();
    }

    public final int g(int i10) {
        Object obj;
        int i11;
        int i12 = this.f48309d[i10];
        this.f48317l--;
        e(i10);
        Object[] objArr = this.f48308c;
        loop0: while (true) {
            int i13 = (i10 + 1) & this.f48310e;
            while (true) {
                obj = objArr[i13];
                if (obj == null) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                int i14 = this.f48310e;
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
            int[] iArr = this.f48309d;
            iArr[i10] = iArr[i13];
            c(i13, i10);
            i10 = i13;
        }
        objArr[i10] = null;
        if (this.f48317l < this.f48316k / 4 && (i11 = this.f48315j) > 16) {
            f(i11 / 2);
        }
        return i12;
    }

    @Override
    public final int hashCode() {
        Object obj;
        int i10 = this.f48311f ? this.f48317l - 1 : this.f48317l;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i10 - 1;
            if (i10 == 0) {
                break;
            }
            while (true) {
                obj = this.f48308c[i11];
                if (obj != null) {
                    break;
                }
                i11++;
            }
            if (this != obj) {
                i13 = System.identityHashCode(obj);
            }
            i13 ^= this.f48309d[i11];
            i12 += i13;
            i11++;
            i10 = i14;
        }
        return this.f48311f ? i12 + this.f48309d[this.f48315j] : i12;
    }

    @Override
    public final SortedMap headMap(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean isEmpty() {
        return this.f48317l == 0;
    }

    @Override
    public final InterfaceC6244Yd0 o() {
        if (this.f48319n == null) {
            this.f48319n = new C6614bd0(this);
        }
        return this.f48319n;
    }

    @Override
    public final InterfaceC9281rd0 i() {
        if (this.f48318m == null) {
            this.f48318m = new C6947dd0(this);
        }
        return this.f48318m;
    }

    @Override
    public final Object lastKey() {
        if (this.f48317l != 0) {
            return this.f48308c[this.f48313h];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final void putAll(Map map) {
        if (0.75f <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), 0.75f);
            if (a10 > this.f48315j) {
                f(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f48317l) / 0.75f))));
            if (min > this.f48315j) {
                f(min);
            }
        }
        super.putAll(map);
    }

    @Override
    public final int size() {
        return this.f48317l;
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
        if (this.f48320o == null) {
            this.f48320o = new C6241Yc0(this);
        }
        return this.f48320o;
    }

    public final void e(int i10) {
        if (this.f48317l == 0) {
            this.f48313h = -1;
            this.f48312g = -1;
            return;
        }
        if (this.f48312g == i10) {
            long[] jArr = this.f48314i;
            int i11 = (int) jArr[i10];
            this.f48312g = i11;
            if (i11 >= 0) {
                jArr[i11] = C12510d2.f66536l | jArr[i11];
                return;
            }
            return;
        }
        if (this.f48313h == i10) {
            long[] jArr2 = this.f48314i;
            int i12 = (int) (jArr2[i10] >>> 32);
            this.f48313h = i12;
            if (i12 >= 0) {
                jArr2[i12] = jArr2[i12] | 4294967295L;
                return;
            }
            return;
        }
        long[] jArr3 = this.f48314i;
        long j10 = jArr3[i10];
        int i13 = (int) (j10 >>> 32);
        int i14 = (int) j10;
        long j11 = jArr3[i13];
        jArr3[i13] = (4294967295L & ((j10 & 4294967295L) ^ j11)) ^ j11;
        long j12 = jArr3[i14];
        jArr3[i14] = (C12510d2.f66536l & ((j10 & C12510d2.f66536l) ^ j12)) ^ j12;
    }

    public final void c(int i10, int i11) {
        if (this.f48317l == 1) {
            this.f48313h = i11;
            this.f48312g = i11;
            this.f48314i[i11] = -1;
            return;
        }
        if (this.f48312g == i10) {
            this.f48312g = i11;
            long[] jArr = this.f48314i;
            int i12 = (int) jArr[i10];
            long j10 = jArr[i12];
            jArr[i12] = (C12510d2.f66536l & (((4294967295L & i11) << 32) ^ j10)) ^ j10;
            jArr[i11] = jArr[i10];
            return;
        }
        if (this.f48313h == i10) {
            this.f48313h = i11;
            long[] jArr2 = this.f48314i;
            int i13 = (int) (jArr2[i10] >>> 32);
            long j11 = jArr2[i13];
            jArr2[i13] = j11 ^ (4294967295L & ((i11 & 4294967295L) ^ j11));
            jArr2[i11] = jArr2[i10];
            return;
        }
        long[] jArr3 = this.f48314i;
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
            return this.f48311f ? this.f48309d[this.f48315j] : this.f53665b;
        }
        Object[] objArr = this.f48308c;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f48310e;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return this.f53665b;
        }
        if (obj == obj3) {
            return this.f48309d[a10];
        }
        do {
            a10 = (a10 + 1) & this.f48310e;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return this.f53665b;
            }
        } while (obj != obj2);
        return this.f48309d[a10];
    }
}
