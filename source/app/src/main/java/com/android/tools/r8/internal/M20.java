package com.android.tools.r8.internal;

import com.google.common.collect.C12510d2;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class M20 extends AbstractC6352a1 implements Cloneable {

    public transient Object[] f42134b;

    public transient Object[] f42135c;

    public transient int f42136d;

    public transient boolean f42137e;

    public InterfaceC5945Sz f42138f;

    public transient int f42139g = -1;

    public transient int f42140h = -1;

    public transient long[] f42141i;

    public transient int f42142j;

    public transient int f42143k;

    public int f42144l;

    public transient J20 f42145m;

    public transient H20 f42146n;

    public transient E20 f42147o;

    public M20(InterfaceC5945Sz interfaceC5945Sz) {
        this.f42138f = interfaceC5945Sz;
        int a10 = AbstractC7878jA.a(16, 0.75f);
        this.f42142j = a10;
        this.f42136d = a10 - 1;
        this.f42143k = AbstractC7878jA.b(a10, 0.75f);
        int i10 = this.f42142j + 1;
        this.f42134b = new Object[i10];
        this.f42135c = new Object[i10];
        this.f42141i = new long[i10];
    }

    @Override
    public final AbstractC6352a1 subMap(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final AbstractC6352a1 headMap(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final void c(int i10, int i11) {
        if (this.f42144l == 1) {
            this.f42140h = i11;
            this.f42139g = i11;
            this.f42141i[i11] = -1;
            return;
        }
        if (this.f42139g == i10) {
            this.f42139g = i11;
            long[] jArr = this.f42141i;
            int i12 = (int) jArr[i10];
            long j10 = jArr[i12];
            jArr[i12] = (C12510d2.f66536l & (((4294967295L & i11) << 32) ^ j10)) ^ j10;
            jArr[i11] = jArr[i10];
            return;
        }
        if (this.f42140h == i10) {
            this.f42140h = i11;
            long[] jArr2 = this.f42141i;
            int i13 = (int) (jArr2[i10] >>> 32);
            long j11 = jArr2[i13];
            jArr2[i13] = j11 ^ (4294967295L & ((i11 & 4294967295L) ^ j11));
            jArr2[i11] = jArr2[i10];
            return;
        }
        long[] jArr3 = this.f42141i;
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
        if (this.f42144l == 0) {
            return;
        }
        this.f42144l = 0;
        this.f42137e = false;
        Arrays.fill(this.f42134b, (Object) null);
        Arrays.fill(this.f42135c, (Object) null);
        this.f42140h = -1;
        this.f42139g = -1;
    }

    public final Object clone() {
        try {
            M20 m20 = (M20) super.clone();
            m20.f42146n = null;
            m20.f42147o = null;
            m20.f42145m = null;
            m20.f42137e = this.f42137e;
            m20.f42134b = (Object[]) this.f42134b.clone();
            m20.f42135c = (Object[]) this.f42135c.clone();
            m20.f42141i = (long[]) this.f42141i.clone();
            m20.f42138f = this.f42138f;
            return m20;
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
        if (this.f42138f.a(obj, null)) {
            return this.f42137e;
        }
        Object[] objArr = this.f42134b;
        int a10 = AbstractC7878jA.a(this.f42138f.a(obj)) & this.f42136d;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return false;
        }
        if (this.f42138f.a(obj, obj3)) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f42136d;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return false;
            }
        } while (!this.f42138f.a(obj, obj2));
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0030, code lost:
    
        return true;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean containsValue(Object obj) {
        Object obj2;
        Object[] objArr = this.f42135c;
        Object[] objArr2 = this.f42134b;
        if (this.f42137e && ((obj2 = objArr[this.f42142j]) != null ? obj2.equals(obj) : obj == null)) {
            return true;
        }
        int i10 = this.f42142j;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            if (objArr2[i11] != null) {
                Object obj3 = objArr[i11];
                if (obj3 == null) {
                    if (obj == null) {
                        break;
                    }
                } else if (obj3.equals(obj)) {
                    break;
                }
            }
            i10 = i11;
        }
    }

    public final void d(int i10) {
        if (this.f42144l == 0) {
            this.f42140h = -1;
            this.f42139g = -1;
            return;
        }
        if (this.f42139g == i10) {
            long[] jArr = this.f42141i;
            int i11 = (int) jArr[i10];
            this.f42139g = i11;
            if (i11 >= 0) {
                jArr[i11] = C12510d2.f66536l | jArr[i11];
                return;
            }
            return;
        }
        if (this.f42140h == i10) {
            long[] jArr2 = this.f42141i;
            int i12 = (int) (jArr2[i10] >>> 32);
            this.f42140h = i12;
            if (i12 >= 0) {
                jArr2[i12] = jArr2[i12] | 4294967295L;
                return;
            }
            return;
        }
        long[] jArr3 = this.f42141i;
        long j10 = jArr3[i10];
        int i13 = (int) (j10 >>> 32);
        int i14 = (int) j10;
        long j11 = jArr3[i13];
        jArr3[i13] = (4294967295L & ((j10 & 4294967295L) ^ j11)) ^ j11;
        long j12 = jArr3[i14];
        jArr3[i14] = (C12510d2.f66536l & ((j10 & C12510d2.f66536l) ^ j12)) ^ j12;
    }

    @Override
    public final M30 o() {
        if (this.f42146n == null) {
            this.f42146n = new H20(this);
        }
        return this.f42146n;
    }

    public final Object f(int i10) {
        Object obj;
        int i11;
        Object[] objArr = this.f42135c;
        Object obj2 = objArr[i10];
        objArr[i10] = null;
        this.f42144l--;
        d(i10);
        Object[] objArr2 = this.f42134b;
        loop0: while (true) {
            int i12 = (i10 + 1) & this.f42136d;
            while (true) {
                obj = objArr2[i12];
                if (obj == null) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(this.f42138f.a(obj));
                int i13 = this.f42136d;
                int i14 = a10 & i13;
                if (i10 > i12) {
                    if (i10 >= i14 && i14 > i12) {
                        break;
                    }
                    i12 = (i12 + 1) & i13;
                } else if (i10 < i14 && i14 <= i12) {
                    i12 = (i12 + 1) & i13;
                }
            }
            objArr2[i10] = obj;
            Object[] objArr3 = this.f42135c;
            objArr3[i10] = objArr3[i12];
            c(i12, i10);
            i10 = i12;
        }
        objArr2[i10] = null;
        this.f42135c[i10] = null;
        if (this.f42144l < this.f42143k / 4 && (i11 = this.f42142j) > 16) {
            e(i11 / 2);
        }
        return obj2;
    }

    @Override
    public final Object firstKey() {
        if (this.f42144l != 0) {
            return this.f42134b[this.f42139g];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final Object get(Object obj) {
        Object obj2;
        if (this.f42138f.a(obj, null)) {
            if (this.f42137e) {
                return this.f42135c[this.f42142j];
            }
            return null;
        }
        Object[] objArr = this.f42134b;
        int a10 = AbstractC7878jA.a(this.f42138f.a(obj)) & this.f42136d;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return null;
        }
        if (this.f42138f.a(obj, obj3)) {
            return this.f42135c[a10];
        }
        do {
            a10 = (a10 + 1) & this.f42136d;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return null;
            }
        } while (!this.f42138f.a(obj, obj2));
        return this.f42135c[a10];
    }

    @Override
    public final int hashCode() {
        Object obj;
        int i10 = this.f42137e ? this.f42144l - 1 : this.f42144l;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i10 - 1;
            if (i10 == 0) {
                break;
            }
            while (true) {
                obj = this.f42134b[i11];
                if (obj != null) {
                    break;
                }
                i11++;
            }
            if (this != obj) {
                i13 = this.f42138f.a(obj);
            }
            Object obj2 = this.f42135c[i11];
            if (this != obj2) {
                i13 = (obj2 == null ? 0 : obj2.hashCode()) ^ i13;
            }
            i12 += i13;
            i11++;
            i10 = i14;
        }
        if (!this.f42137e) {
            return i12;
        }
        Object obj3 = this.f42135c[this.f42142j];
        return i12 + (obj3 != null ? obj3.hashCode() : 0);
    }

    @Override
    public final SortedMap headMap(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final M30 i() {
        if (this.f42145m == null) {
            this.f42145m = new J20(this);
        }
        return this.f42145m;
    }

    @Override
    public final boolean isEmpty() {
        return this.f42144l == 0;
    }

    public final Object j() {
        int i10;
        this.f42137e = false;
        Object[] objArr = this.f42134b;
        int i11 = this.f42142j;
        objArr[i11] = null;
        Object[] objArr2 = this.f42135c;
        Object obj = objArr2[i11];
        objArr2[i11] = null;
        this.f42144l--;
        d(i11);
        if (this.f42144l < this.f42143k / 4 && (i10 = this.f42142j) > 16) {
            e(i10 / 2);
        }
        return obj;
    }

    @Override
    public final Object lastKey() {
        if (this.f42144l != 0) {
            return this.f42134b[this.f42140h];
        }
        throw new NoSuchElementException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0030, code lost:
    
        if (r10.f42138f.a(r4, r11) != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0032, code lost:
    
        r11 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0034, code lost:
    
        r3 = (r3 + 1) & r10.f42136d;
        r4 = r0[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003a, code lost:
    
        if (r4 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0042, code lost:
    
        if (r10.f42138f.a(r4, r11) == false) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object put(Object obj, Object obj2) {
        int i10;
        int i11;
        int i12;
        if (!this.f42138f.a(obj, null)) {
            Object[] objArr = this.f42134b;
            int a10 = AbstractC7878jA.a(this.f42138f.a(obj)) & this.f42136d;
            Object obj3 = objArr[a10];
            if (obj3 != null) {
            }
            i10 = a10;
            this.f42134b[i10] = obj;
            this.f42135c[i10] = obj2;
            i12 = this.f42144l;
            if (i12 != 0) {
            }
            this.f42144l = i12 + 1;
            if (i12 >= this.f42143k) {
            }
            i11 = -1;
        } else if (this.f42137e) {
            i11 = this.f42142j;
        } else {
            this.f42137e = true;
            i10 = this.f42142j;
            this.f42134b[i10] = obj;
            this.f42135c[i10] = obj2;
            i12 = this.f42144l;
            if (i12 != 0) {
                this.f42140h = i10;
                this.f42139g = i10;
                this.f42141i[i10] = -1;
            } else {
                long[] jArr = this.f42141i;
                int i13 = this.f42140h;
                long j10 = jArr[i13];
                jArr[i13] = j10 ^ (((i10 & 4294967295L) ^ j10) & 4294967295L);
                jArr[i10] = ((i13 & 4294967295L) << 32) | 4294967295L;
                this.f42140h = i10;
            }
            this.f42144l = i12 + 1;
            if (i12 >= this.f42143k) {
                e(AbstractC7878jA.a(i12 + 2, 0.75f));
            }
            i11 = -1;
        }
        if (i11 < 0) {
            return null;
        }
        Object[] objArr2 = this.f42135c;
        Object obj4 = objArr2[i11];
        objArr2[i11] = obj2;
        return obj4;
    }

    @Override
    public final void putAll(Map map) {
        if (0.75f <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), 0.75f);
            if (a10 > this.f42142j) {
                e(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f42144l) / 0.75f))));
            if (min > this.f42142j) {
                e(min);
            }
        }
        super.putAll(map);
    }

    @Override
    public final Object remove(Object obj) {
        Object obj2;
        if (this.f42138f.a(obj, null)) {
            if (this.f42137e) {
                return j();
            }
            return null;
        }
        Object[] objArr = this.f42134b;
        int a10 = AbstractC7878jA.a(this.f42138f.a(obj)) & this.f42136d;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return null;
        }
        if (this.f42138f.a(obj, obj3)) {
            return f(a10);
        }
        do {
            a10 = (a10 + 1) & this.f42136d;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return null;
            }
        } while (!this.f42138f.a(obj, obj2));
        return f(a10);
    }

    @Override
    public final int size() {
        return this.f42144l;
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
        if (this.f42147o == null) {
            this.f42147o = new E20(this);
        }
        return this.f42147o;
    }

    public final void e(int i10) {
        int i11;
        Object[] objArr;
        Object[] objArr2;
        Object[] objArr3 = this.f42134b;
        Object[] objArr4 = this.f42135c;
        int i12 = i10 - 1;
        int i13 = i10 + 1;
        Object[] objArr5 = new Object[i13];
        Object[] objArr6 = new Object[i13];
        int i14 = this.f42139g;
        long[] jArr = this.f42141i;
        long[] jArr2 = new long[i13];
        this.f42139g = -1;
        int i15 = this.f42144l;
        int i16 = -1;
        int i17 = -1;
        while (true) {
            int i18 = i15 - 1;
            if (i15 == 0) {
                break;
            }
            if (!this.f42138f.a(objArr3[i14], null)) {
                int a10 = AbstractC7878jA.a(this.f42138f.a(objArr3[i14]));
                while (true) {
                    i11 = a10 & i12;
                    if (objArr5[i11] == null) {
                        break;
                    } else {
                        a10 = i11 + 1;
                    }
                }
            } else {
                i11 = i10;
            }
            objArr5[i11] = objArr3[i14];
            objArr6[i11] = objArr4[i14];
            if (i17 != -1) {
                long j10 = jArr2[i16];
                Object[] objArr7 = objArr3;
                objArr2 = objArr4;
                jArr2[i16] = j10 ^ ((j10 ^ (i11 & 4294967295L)) & 4294967295L);
                long j11 = jArr2[i11];
                objArr = objArr7;
                jArr2[i11] = j11 ^ ((((i16 & 4294967295L) << 32) ^ j11) & C12510d2.f66536l);
            } else {
                objArr = objArr3;
                objArr2 = objArr4;
                this.f42139g = i11;
                jArr2[i11] = -1;
            }
            i16 = i11;
            objArr4 = objArr2;
            i15 = i18;
            i17 = i14;
            i14 = (int) jArr[i14];
            objArr3 = objArr;
        }
        this.f42141i = jArr2;
        this.f42140h = i16;
        if (i16 != -1) {
            jArr2[i16] = jArr2[i16] | 4294967295L;
        }
        this.f42142j = i10;
        this.f42136d = i12;
        this.f42143k = AbstractC7878jA.b(i10, 0.75f);
        this.f42134b = objArr5;
        this.f42135c = objArr6;
    }

    @Override
    public final AbstractC6352a1 tailMap(Object obj) {
        throw new UnsupportedOperationException();
    }
}
