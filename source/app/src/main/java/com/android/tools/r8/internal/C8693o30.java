package com.android.tools.r8.internal;

import com.google.common.collect.C12510d2;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class C8693o30 implements Cloneable, SortedMap, InterfaceC10345xy, Serializable, Map {

    public transient Object[] f51147b;

    public transient Object[] f51148c;

    public transient int f51149d;

    public transient boolean f51150e;

    public transient int f51151f = -1;

    public transient int f51152g = -1;

    public transient long[] f51153h;

    public transient int f51154i;

    public transient int f51155j;

    public int f51156k;

    public transient C8192l30 f51157l;

    public transient C7858j30 f51158m;

    public transient C7359g30 f51159n;

    public C8693o30(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("The expected number of elements must be nonnegative");
        }
        int a10 = AbstractC7878jA.a(i10, 0.75f);
        this.f51154i = a10;
        this.f51149d = a10 - 1;
        this.f51155j = AbstractC7878jA.b(a10, 0.75f);
        int i11 = this.f51154i + 1;
        this.f51147b = new Object[i11];
        this.f51148c = new Object[i11];
        this.f51153h = new long[i11];
    }

    public final void a(Map map) {
        int size = map.size();
        Iterator it = map.entrySet().iterator();
        if (map instanceof C8693o30) {
            while (true) {
                int i10 = size - 1;
                if (size == 0) {
                    return;
                }
                C8025k30 c8025k30 = (C8025k30) it.next();
                C8693o30 c8693o30 = c8025k30.f49475c;
                Object[] objArr = c8693o30.f51147b;
                int i11 = c8025k30.f49474b;
                put(objArr[i11], c8693o30.f51148c[i11]);
                size = i10;
            }
        } else {
            while (true) {
                int i12 = size - 1;
                if (size == 0) {
                    return;
                }
                Map.Entry entry = (Map.Entry) it.next();
                put(entry.getKey(), entry.getValue());
                size = i12;
            }
        }
    }

    public final void c(int i10, int i11) {
        if (this.f51156k == 1) {
            this.f51152g = i11;
            this.f51151f = i11;
            this.f51153h[i11] = -1;
            return;
        }
        if (this.f51151f == i10) {
            this.f51151f = i11;
            long[] jArr = this.f51153h;
            int i12 = (int) jArr[i10];
            long j10 = jArr[i12];
            jArr[i12] = (C12510d2.f66536l & (((4294967295L & i11) << 32) ^ j10)) ^ j10;
            jArr[i11] = jArr[i10];
            return;
        }
        if (this.f51152g == i10) {
            this.f51152g = i11;
            long[] jArr2 = this.f51153h;
            int i13 = (int) (jArr2[i10] >>> 32);
            long j11 = jArr2[i13];
            jArr2[i13] = j11 ^ (4294967295L & ((i11 & 4294967295L) ^ j11));
            jArr2[i11] = jArr2[i10];
            return;
        }
        long[] jArr3 = this.f51153h;
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
        if (this.f51156k == 0) {
            return;
        }
        this.f51156k = 0;
        this.f51150e = false;
        Arrays.fill(this.f51147b, (Object) null);
        Arrays.fill(this.f51148c, (Object) null);
        this.f51152g = -1;
        this.f51151f = -1;
    }

    public final Object clone() {
        try {
            C8693o30 c8693o30 = (C8693o30) super.clone();
            c8693o30.f51158m = null;
            c8693o30.f51159n = null;
            c8693o30.f51157l = null;
            c8693o30.f51150e = this.f51150e;
            c8693o30.f51147b = (Object[]) this.f51147b.clone();
            c8693o30.f51148c = (Object[]) this.f51148c.clone();
            c8693o30.f51153h = (long[]) this.f51153h.clone();
            return c8693o30;
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
            return this.f51150e;
        }
        Object[] objArr = this.f51147b;
        int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f51149d;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return false;
        }
        if (obj.equals(obj3)) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f51149d;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return false;
            }
        } while (!obj.equals(obj2));
        return true;
    }

    @Override
    public final boolean containsValue(Object obj) {
        Object[] objArr = this.f51148c;
        Object[] objArr2 = this.f51147b;
        if (this.f51150e && objArr[this.f51154i] == obj) {
            return true;
        }
        int i10 = this.f51154i;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            if (objArr2[i11] != null && objArr[i11] == obj) {
                return true;
            }
            i10 = i11;
        }
    }

    public final void d(int i10) {
        if (this.f51156k == 0) {
            this.f51152g = -1;
            this.f51151f = -1;
            return;
        }
        if (this.f51151f == i10) {
            long[] jArr = this.f51153h;
            int i11 = (int) jArr[i10];
            this.f51151f = i11;
            if (i11 >= 0) {
                jArr[i11] = C12510d2.f66536l | jArr[i11];
                return;
            }
            return;
        }
        if (this.f51152g == i10) {
            long[] jArr2 = this.f51153h;
            int i12 = (int) (jArr2[i10] >>> 32);
            this.f51152g = i12;
            if (i12 >= 0) {
                jArr2[i12] = jArr2[i12] | 4294967295L;
                return;
            }
            return;
        }
        long[] jArr3 = this.f51153h;
        long j10 = jArr3[i10];
        int i13 = (int) (j10 >>> 32);
        int i14 = (int) j10;
        long j11 = jArr3[i13];
        jArr3[i13] = (4294967295L & ((j10 & 4294967295L) ^ j11)) ^ j11;
        long j12 = jArr3[i14];
        jArr3[i14] = (C12510d2.f66536l & ((j10 & C12510d2.f66536l) ^ j12)) ^ j12;
    }

    public final Object e() {
        int i10;
        this.f51150e = false;
        Object[] objArr = this.f51147b;
        int i11 = this.f51154i;
        objArr[i11] = null;
        Object[] objArr2 = this.f51148c;
        Object obj = objArr2[i11];
        objArr2[i11] = null;
        this.f51156k--;
        d(i11);
        if (this.f51156k < this.f51155j / 4 && (i10 = this.f51154i) > 16) {
            e(i10 / 2);
        }
        return obj;
    }

    @Override
    public final Set entrySet() {
        if (this.f51157l == null) {
            this.f51157l = new C8192l30(this);
        }
        return this.f51157l;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (map.size() != this.f51156k) {
            return false;
        }
        if (this.f51157l == null) {
            this.f51157l = new C8192l30(this);
        }
        return this.f51157l.containsAll(map.entrySet());
    }

    public final Object f(int i10) {
        Object obj;
        int i11;
        Object[] objArr = this.f51148c;
        Object obj2 = objArr[i10];
        objArr[i10] = null;
        this.f51156k--;
        d(i10);
        Object[] objArr2 = this.f51147b;
        loop0: while (true) {
            int i12 = (i10 + 1) & this.f51149d;
            while (true) {
                obj = objArr2[i12];
                if (obj == null) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(obj.hashCode());
                int i13 = this.f51149d;
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
            Object[] objArr3 = this.f51148c;
            objArr3[i10] = objArr3[i12];
            c(i12, i10);
            i10 = i12;
        }
        objArr2[i10] = null;
        this.f51148c[i10] = null;
        if (this.f51156k < this.f51155j / 4 && (i11 = this.f51154i) > 16) {
            e(i11 / 2);
        }
        return obj2;
    }

    @Override
    public final Object firstKey() {
        if (this.f51156k != 0) {
            return this.f51147b[this.f51151f];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            if (this.f51150e) {
                return this.f51148c[this.f51154i];
            }
            return null;
        }
        Object[] objArr = this.f51147b;
        int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f51149d;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return null;
        }
        if (obj.equals(obj3)) {
            return this.f51148c[a10];
        }
        do {
            a10 = (a10 + 1) & this.f51149d;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return null;
            }
        } while (!obj.equals(obj2));
        return this.f51148c[a10];
    }

    @Override
    public final int hashCode() {
        Object obj;
        int i10 = this.f51150e ? this.f51156k - 1 : this.f51156k;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i10 - 1;
            if (i10 == 0) {
                break;
            }
            while (true) {
                obj = this.f51147b[i11];
                if (obj != null) {
                    break;
                }
                i11++;
            }
            if (this != obj) {
                i13 = obj.hashCode();
            }
            Object obj2 = this.f51148c[i11];
            if (this != obj2) {
                i13 = (obj2 == null ? 0 : System.identityHashCode(obj2)) ^ i13;
            }
            i12 += i13;
            i11++;
            i10 = i14;
        }
        if (!this.f51150e) {
            return i12;
        }
        Object obj3 = this.f51148c[this.f51154i];
        return i12 + (obj3 != null ? System.identityHashCode(obj3) : 0);
    }

    @Override
    public final SortedMap headMap(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean isEmpty() {
        return this.f51156k == 0;
    }

    @Override
    public final Set o() {
        if (this.f51158m == null) {
            this.f51158m = new C7858j30(this);
        }
        return this.f51158m;
    }

    @Override
    public final Object lastKey() {
        if (this.f51156k != 0) {
            return this.f51147b[this.f51152g];
        }
        throw new NoSuchElementException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0025, code lost:
    
        if (r3.equals(r10) != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0027, code lost:
    
        r10 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0029, code lost:
    
        r2 = (r2 + 1) & r9.f51149d;
        r3 = r1[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x002f, code lost:
    
        if (r3 == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0035, code lost:
    
        if (r3.equals(r10) == false) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0050  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object put(Object obj, Object obj2) {
        int i10;
        int i11;
        int i12;
        if (obj != null) {
            Object[] objArr = this.f51147b;
            int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f51149d;
            Object obj3 = objArr[a10];
            if (obj3 != null) {
            }
            i10 = a10;
            this.f51147b[i10] = obj;
            this.f51148c[i10] = obj2;
            i12 = this.f51156k;
            if (i12 != 0) {
            }
            this.f51156k = i12 + 1;
            if (i12 >= this.f51155j) {
            }
            i11 = -1;
        } else if (this.f51150e) {
            i11 = this.f51154i;
        } else {
            this.f51150e = true;
            i10 = this.f51154i;
            this.f51147b[i10] = obj;
            this.f51148c[i10] = obj2;
            i12 = this.f51156k;
            if (i12 != 0) {
                this.f51152g = i10;
                this.f51151f = i10;
                this.f51153h[i10] = -1;
            } else {
                long[] jArr = this.f51153h;
                int i13 = this.f51152g;
                long j10 = jArr[i13];
                jArr[i13] = j10 ^ (((i10 & 4294967295L) ^ j10) & 4294967295L);
                jArr[i10] = ((i13 & 4294967295L) << 32) | 4294967295L;
                this.f51152g = i10;
            }
            this.f51156k = i12 + 1;
            if (i12 >= this.f51155j) {
                e(AbstractC7878jA.a(i12 + 2, 0.75f));
            }
            i11 = -1;
        }
        if (i11 < 0) {
            return null;
        }
        Object[] objArr2 = this.f51148c;
        Object obj4 = objArr2[i11];
        objArr2[i11] = obj2;
        return obj4;
    }

    @Override
    public final void putAll(Map map) {
        if (0.75f <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), 0.75f);
            if (a10 > this.f51154i) {
                e(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f51156k) / 0.75f))));
            if (min > this.f51154i) {
                e(min);
            }
        }
        a(map);
    }

    @Override
    public final Object remove(Object obj) {
        Object obj2;
        if (obj == null) {
            if (this.f51150e) {
                return e();
            }
            return null;
        }
        Object[] objArr = this.f51147b;
        int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f51149d;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return null;
        }
        if (obj.equals(obj3)) {
            return f(a10);
        }
        do {
            a10 = (a10 + 1) & this.f51149d;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return null;
            }
        } while (!obj.equals(obj2));
        return f(a10);
    }

    @Override
    public final int size() {
        return this.f51156k;
    }

    @Override
    public final SortedMap subMap(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final SortedMap tailMap(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        if (this.f51157l == null) {
            this.f51157l = new C8192l30(this);
        }
        C7526h30 c7526h30 = new C7526h30(this.f51157l.f49875b);
        int i10 = this.f51156k;
        boolean z10 = true;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                sb2.append(VectorFormat.DEFAULT_SUFFIX);
                return sb2.toString();
            }
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            C8025k30 c8025k30 = (C8025k30) c7526h30.next();
            Object obj = c8025k30.f49475c.f51147b[c8025k30.f49474b];
            if (this == obj) {
                sb2.append("(this map)");
            } else {
                sb2.append(String.valueOf(obj));
            }
            sb2.append("=>");
            Object obj2 = c8025k30.f49475c.f51148c[c8025k30.f49474b];
            if (this == obj2) {
                sb2.append("(this map)");
            } else {
                sb2.append(String.valueOf(obj2));
            }
            i10 = i11;
        }
    }

    @Override
    public final Collection values() {
        if (this.f51159n == null) {
            this.f51159n = new C7359g30(this);
        }
        return this.f51159n;
    }

    public final void e(int i10) {
        int i11;
        Object[] objArr;
        Object[] objArr2;
        Object[] objArr3 = this.f51147b;
        Object[] objArr4 = this.f51148c;
        int i12 = i10 - 1;
        int i13 = i10 + 1;
        Object[] objArr5 = new Object[i13];
        Object[] objArr6 = new Object[i13];
        int i14 = this.f51151f;
        long[] jArr = this.f51153h;
        long[] jArr2 = new long[i13];
        int i15 = -1;
        this.f51151f = -1;
        int i16 = this.f51156k;
        int i17 = -1;
        int i18 = -1;
        while (true) {
            int i19 = i16 - 1;
            if (i16 == 0) {
                break;
            }
            Object obj = objArr3[i14];
            if (obj != null) {
                int a10 = AbstractC7878jA.a(obj.hashCode());
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
            if (i18 != i15) {
                long j10 = jArr2[i17];
                objArr = objArr3;
                objArr2 = objArr4;
                jArr2[i17] = j10 ^ ((j10 ^ (i11 & 4294967295L)) & 4294967295L);
                long j11 = jArr2[i11];
                int i20 = i11;
                jArr2[i20] = j11 ^ ((((i17 & 4294967295L) << 32) ^ j11) & C12510d2.f66536l);
                i11 = i20;
            } else {
                objArr = objArr3;
                objArr2 = objArr4;
                this.f51151f = i11;
                jArr2[i11] = -1;
            }
            i17 = i11;
            i16 = i19;
            objArr4 = objArr2;
            i15 = -1;
            int i21 = i14;
            i14 = (int) jArr[i14];
            objArr3 = objArr;
            i18 = i21;
        }
        this.f51153h = jArr2;
        this.f51152g = i17;
        if (i17 != -1) {
            jArr2[i17] = jArr2[i17] | 4294967295L;
        }
        this.f51154i = i10;
        this.f51149d = i12;
        this.f51155j = AbstractC7878jA.b(i10, 0.75f);
        this.f51147b = objArr5;
        this.f51148c = objArr6;
    }
}
