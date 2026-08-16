package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class C4856Ad0 implements Cloneable, InterfaceC10345xy, Serializable, Map {

    public transient Object[] f38646b;

    public transient long[] f38647c;

    public transient int f38648d;

    public transient boolean f38649e;

    public transient int f38650f;

    public transient int f38651g;

    public int f38652h;

    public transient C10283xd0 f38653i;

    public transient C9949vd0 f38654j;

    public transient C9448sd0 f38655k;

    public C4856Ad0(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("The expected number of elements must be nonnegative");
        }
        int a10 = AbstractC7878jA.a(i10, 0.75f);
        this.f38650f = a10;
        this.f38648d = a10 - 1;
        this.f38651g = AbstractC7878jA.b(a10, 0.75f);
        int i11 = this.f38650f + 1;
        this.f38646b = new Object[i11];
        this.f38647c = new long[i11];
    }

    public final void a(Map map) {
        int size = map.size();
        Iterator it = map.entrySet().iterator();
        if (map instanceof C4856Ad0) {
            while (true) {
                int i10 = size - 1;
                if (size == 0) {
                    return;
                }
                C10116wd0 c10116wd0 = (C10116wd0) it.next();
                C4856Ad0 c4856Ad0 = c10116wd0.f53544c;
                Object[] objArr = c4856Ad0.f38646b;
                int i11 = c10116wd0.f53543b;
                a(objArr[i11], c4856Ad0.f38647c[i11]);
                size = i10;
            }
        } else {
            while (true) {
                int i12 = size - 1;
                if (size == 0) {
                    return;
                }
                Map.Entry entry = (Map.Entry) it.next();
                Object key = entry.getKey();
                Long l10 = (Long) entry.getValue();
                containsKey(key);
                a(key, l10.longValue());
                size = i12;
            }
        }
    }

    public final long b(Object obj) {
        Object obj2;
        if (obj == null) {
            if (this.f38649e) {
                return this.f38647c[this.f38650f];
            }
            return 0L;
        }
        Object[] objArr = this.f38646b;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f38648d;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return 0L;
        }
        if (obj == obj3) {
            return this.f38647c[a10];
        }
        do {
            a10 = (a10 + 1) & this.f38648d;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return 0L;
            }
        } while (obj != obj2);
        return this.f38647c[a10];
    }

    public final long c(Object obj) {
        Object obj2;
        if (obj == null) {
            if (!this.f38649e) {
                return 0L;
            }
            this.f38649e = false;
            Object[] objArr = this.f38646b;
            int i10 = this.f38650f;
            objArr[i10] = null;
            long j10 = this.f38647c[i10];
            int i11 = this.f38652h - 1;
            this.f38652h = i11;
            if (i11 < this.f38651g / 4 && i10 > 16) {
                d(i10 / 2);
            }
            return j10;
        }
        Object[] objArr2 = this.f38646b;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f38648d;
        Object obj3 = objArr2[a10];
        if (obj3 == null) {
            return 0L;
        }
        if (obj == obj3) {
            return e(a10);
        }
        do {
            a10 = (a10 + 1) & this.f38648d;
            obj2 = objArr2[a10];
            if (obj2 == null) {
                return 0L;
            }
        } while (obj != obj2);
        return e(a10);
    }

    @Override
    public final void clear() {
        if (this.f38652h == 0) {
            return;
        }
        this.f38652h = 0;
        this.f38649e = false;
        Arrays.fill(this.f38646b, (Object) null);
    }

    public final Object clone() {
        try {
            C4856Ad0 c4856Ad0 = (C4856Ad0) super.clone();
            c4856Ad0.f38654j = null;
            c4856Ad0.f38655k = null;
            c4856Ad0.f38653i = null;
            c4856Ad0.f38649e = this.f38649e;
            c4856Ad0.f38646b = (Object[]) this.f38646b.clone();
            c4856Ad0.f38647c = (long[]) this.f38647c.clone();
            return c4856Ad0;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean containsKey(Object obj) {
        Object obj2;
        if (obj == null) {
            return this.f38649e;
        }
        Object[] objArr = this.f38646b;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f38648d;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return false;
        }
        if (obj == obj3) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f38648d;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return false;
            }
        } while (obj != obj2);
        return true;
    }

    @Override
    public final boolean containsValue(Object obj) {
        if (obj == null) {
            return false;
        }
        return a(((Long) obj).longValue());
    }

    public final void d(int i10) {
        Object obj;
        Object[] objArr = this.f38646b;
        long[] jArr = this.f38647c;
        int i11 = i10 - 1;
        int i12 = i10 + 1;
        Object[] objArr2 = new Object[i12];
        long[] jArr2 = new long[i12];
        int i13 = this.f38650f;
        int i14 = this.f38649e ? this.f38652h - 1 : this.f38652h;
        while (true) {
            int i15 = i14 - 1;
            if (i14 == 0) {
                jArr2[i10] = jArr[this.f38650f];
                this.f38650f = i10;
                this.f38648d = i11;
                this.f38651g = AbstractC7878jA.b(i10, 0.75f);
                this.f38646b = objArr2;
                this.f38647c = jArr2;
                return;
            }
            do {
                i13--;
                obj = objArr[i13];
            } while (obj == null);
            int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & i11;
            if (objArr2[a10] == null) {
                objArr2[a10] = objArr[i13];
                jArr2[a10] = jArr[i13];
                i14 = i15;
            }
            do {
                a10 = (a10 + 1) & i11;
            } while (objArr2[a10] != null);
            objArr2[a10] = objArr[i13];
            jArr2[a10] = jArr[i13];
            i14 = i15;
        }
    }

    public final long e(int i10) {
        Object obj;
        int i11;
        long j10 = this.f38647c[i10];
        this.f38652h--;
        Object[] objArr = this.f38646b;
        loop0: while (true) {
            int i12 = (i10 + 1) & this.f38648d;
            while (true) {
                obj = objArr[i12];
                if (obj == null) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                int i13 = this.f38648d;
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
            objArr[i10] = obj;
            long[] jArr = this.f38647c;
            jArr[i10] = jArr[i12];
            i10 = i12;
        }
        objArr[i10] = null;
        if (this.f38652h < this.f38651g / 4 && (i11 = this.f38650f) > 16) {
            d(i11 / 2);
        }
        return j10;
    }

    @Override
    public final Set entrySet() {
        if (this.f38653i == null) {
            this.f38653i = new C10283xd0(this);
        }
        return this.f38653i;
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
        if (map.size() != this.f38652h) {
            return false;
        }
        if (this.f38653i == null) {
            this.f38653i = new C10283xd0(this);
        }
        return this.f38653i.containsAll(map.entrySet());
    }

    @Override
    public final Object get(Object obj) {
        if (containsKey(obj)) {
            return Long.valueOf(b(obj));
        }
        return null;
    }

    @Override
    public final int hashCode() {
        Object obj;
        int i10 = this.f38649e ? this.f38652h - 1 : this.f38652h;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i10 - 1;
            if (i10 == 0) {
                break;
            }
            while (true) {
                obj = this.f38646b[i11];
                if (obj != null) {
                    break;
                }
                i11++;
            }
            if (this != obj) {
                i13 = System.identityHashCode(obj);
            }
            long j10 = this.f38647c[i11];
            i13 ^= (int) (j10 ^ (j10 >>> 32));
            i12 += i13;
            i11++;
            i10 = i14;
        }
        if (!this.f38649e) {
            return i12;
        }
        long j11 = this.f38647c[this.f38650f];
        return i12 + ((int) ((j11 >>> 32) ^ j11));
    }

    @Override
    public final boolean isEmpty() {
        return this.f38652h == 0;
    }

    @Override
    public final Set o() {
        if (this.f38654j == null) {
            this.f38654j = new C9949vd0(this);
        }
        return this.f38654j;
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        boolean containsKey = containsKey(obj);
        long a10 = a(obj, ((Long) obj2).longValue());
        if (containsKey) {
            return Long.valueOf(a10);
        }
        return null;
    }

    @Override
    public final void putAll(Map map) {
        if (0.75f <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), 0.75f);
            if (a10 > this.f38650f) {
                d(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f38652h) / 0.75f))));
            if (min > this.f38650f) {
                d(min);
            }
        }
        a(map);
    }

    @Override
    public final Object remove(Object obj) {
        boolean containsKey = containsKey(obj);
        long c10 = c(obj);
        if (containsKey) {
            return Long.valueOf(c10);
        }
        return null;
    }

    @Override
    public final int size() {
        return this.f38652h;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        if (this.f38653i == null) {
            this.f38653i = new C10283xd0(this);
        }
        C9615td0 c9615td0 = new C9615td0(this.f38653i.f53787b);
        int i10 = this.f38652h;
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
            C10116wd0 c10116wd0 = (C10116wd0) c9615td0.next();
            Object obj = c10116wd0.f53544c.f38646b[c10116wd0.f53543b];
            if (this == obj) {
                sb2.append("(this map)");
            } else {
                sb2.append(String.valueOf(obj));
            }
            sb2.append("=>");
            sb2.append(String.valueOf(c10116wd0.f53544c.f38647c[c10116wd0.f53543b]));
            i10 = i11;
        }
    }

    @Override
    public final Collection values() {
        if (this.f38655k == null) {
            this.f38655k = new C9448sd0(this);
        }
        return this.f38655k;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0020, code lost:
    
        if (r3 == r5) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0022, code lost:
    
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0024, code lost:
    
        r2 = (r2 + 1) & r4.f38648d;
        r3 = r1[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002a, code lost:
    
        if (r3 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002c, code lost:
    
        if (r3 != r5) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long a(Object obj, long j10) {
        int i10;
        int i11;
        int i12;
        if (obj == null) {
            if (this.f38649e) {
                i11 = this.f38650f;
            } else {
                this.f38649e = true;
                i10 = this.f38650f;
                this.f38646b[i10] = obj;
                this.f38647c[i10] = j10;
                i12 = this.f38652h;
                this.f38652h = i12 + 1;
                if (i12 >= this.f38651g) {
                    d(AbstractC7878jA.a(i12 + 2, 0.75f));
                }
                i11 = -1;
            }
        } else {
            Object[] objArr = this.f38646b;
            int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f38648d;
            Object obj2 = objArr[a10];
            if (obj2 != null) {
            }
            i10 = a10;
            this.f38646b[i10] = obj;
            this.f38647c[i10] = j10;
            i12 = this.f38652h;
            this.f38652h = i12 + 1;
            if (i12 >= this.f38651g) {
            }
            i11 = -1;
        }
        if (i11 < 0) {
            return 0L;
        }
        long[] jArr = this.f38647c;
        long j11 = jArr[i11];
        jArr[i11] = j10;
        return j11;
    }

    public final boolean a(long j10) {
        long[] jArr = this.f38647c;
        Object[] objArr = this.f38646b;
        if (this.f38649e && jArr[this.f38650f] == j10) {
            return true;
        }
        int i10 = this.f38650f;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            if (objArr[i11] != null && jArr[i11] == j10) {
                return true;
            }
            i10 = i11;
        }
    }
}
