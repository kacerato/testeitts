package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class C7091eU implements Cloneable, InterfaceC10345xy, Serializable, Map {

    public transient long[] f47691b;

    public transient Object[] f47692c;

    public transient int f47693d;

    public transient boolean f47694e;

    public transient int f47695f;

    public transient int f47696g;

    public int f47697h;

    public transient C6592bU f47698i;

    public transient ZT f47699j;

    public transient WT f47700k;

    public C7091eU() {
        int a10 = AbstractC7878jA.a(16, 0.75f);
        this.f47695f = a10;
        this.f47693d = a10 - 1;
        this.f47696g = AbstractC7878jA.b(a10, 0.75f);
        int i10 = this.f47695f + 1;
        this.f47691b = new long[i10];
        this.f47692c = new Object[i10];
    }

    public final void a(Map map) {
        int size = map.size();
        Iterator it = map.entrySet().iterator();
        if (map instanceof C7091eU) {
            while (true) {
                int i10 = size - 1;
                if (size == 0) {
                    return;
                }
                C6425aU c6425aU = (C6425aU) it.next();
                C7091eU c7091eU = c6425aU.f46546c;
                long[] jArr = c7091eU.f47691b;
                int i11 = c6425aU.f46545b;
                a(c7091eU.f47692c[i11], jArr[i11]);
                size = i10;
            }
        } else {
            while (true) {
                int i12 = size - 1;
                if (size == 0) {
                    return;
                }
                Map.Entry entry = (Map.Entry) it.next();
                Long l10 = (Long) entry.getKey();
                Object value = entry.getValue();
                long longValue = l10.longValue();
                a(longValue);
                a(value, longValue);
                size = i12;
            }
        }
    }

    public final Object b(long j10) {
        long j11;
        if (j10 == 0) {
            if (this.f47694e) {
                return this.f47692c[this.f47695f];
            }
            return null;
        }
        long[] jArr = this.f47691b;
        int a10 = ((int) AbstractC7878jA.a(j10)) & this.f47693d;
        long j12 = jArr[a10];
        if (j12 == 0) {
            return null;
        }
        if (j10 == j12) {
            return this.f47692c[a10];
        }
        do {
            a10 = (a10 + 1) & this.f47693d;
            j11 = jArr[a10];
            if (j11 == 0) {
                return null;
            }
        } while (j10 != j11);
        return this.f47692c[a10];
    }

    public final Object c(long j10) {
        long j11;
        if (j10 == 0) {
            if (!this.f47694e) {
                return null;
            }
            this.f47694e = false;
            Object[] objArr = this.f47692c;
            int i10 = this.f47695f;
            Object obj = objArr[i10];
            objArr[i10] = null;
            int i11 = this.f47697h - 1;
            this.f47697h = i11;
            if (i11 < this.f47696g / 4 && i10 > 16) {
                d(i10 / 2);
            }
            return obj;
        }
        long[] jArr = this.f47691b;
        int a10 = ((int) AbstractC7878jA.a(j10)) & this.f47693d;
        long j12 = jArr[a10];
        if (j12 == 0) {
            return null;
        }
        if (j10 == j12) {
            return e(a10);
        }
        do {
            a10 = (a10 + 1) & this.f47693d;
            j11 = jArr[a10];
            if (j11 == 0) {
                return null;
            }
        } while (j10 != j11);
        return e(a10);
    }

    @Override
    public final void clear() {
        if (this.f47697h == 0) {
            return;
        }
        this.f47697h = 0;
        this.f47694e = false;
        Arrays.fill(this.f47691b, 0L);
        Arrays.fill(this.f47692c, (Object) null);
    }

    public final Object clone() {
        try {
            C7091eU c7091eU = (C7091eU) super.clone();
            c7091eU.f47699j = null;
            c7091eU.f47700k = null;
            c7091eU.f47698i = null;
            c7091eU.f47694e = this.f47694e;
            c7091eU.f47691b = (long[]) this.f47691b.clone();
            c7091eU.f47692c = (Object[]) this.f47692c.clone();
            return c7091eU;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        return a(((Long) obj).longValue());
    }

    @Override
    public final boolean containsValue(Object obj) {
        Object[] objArr = this.f47692c;
        long[] jArr = this.f47691b;
        if (this.f47694e && objArr[this.f47695f] == obj) {
            return true;
        }
        int i10 = this.f47695f;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            if (jArr[i11] != 0 && objArr[i11] == obj) {
                return true;
            }
            i10 = i11;
        }
    }

    public final void d(int i10) {
        long j10;
        long[] jArr = this.f47691b;
        Object[] objArr = this.f47692c;
        int i11 = i10 - 1;
        int i12 = i10 + 1;
        long[] jArr2 = new long[i12];
        Object[] objArr2 = new Object[i12];
        int i13 = this.f47695f;
        int i14 = this.f47694e ? this.f47697h - 1 : this.f47697h;
        while (true) {
            int i15 = i14 - 1;
            if (i14 == 0) {
                objArr2[i10] = objArr[this.f47695f];
                this.f47695f = i10;
                this.f47693d = i11;
                this.f47696g = AbstractC7878jA.b(i10, 0.75f);
                this.f47691b = jArr2;
                this.f47692c = objArr2;
                return;
            }
            do {
                i13--;
                j10 = jArr[i13];
            } while (j10 == 0);
            int a10 = ((int) AbstractC7878jA.a(j10)) & i11;
            if (jArr2[a10] == 0) {
                jArr2[a10] = jArr[i13];
                objArr2[a10] = objArr[i13];
                i14 = i15;
            }
            do {
                a10 = (a10 + 1) & i11;
            } while (jArr2[a10] != 0);
            jArr2[a10] = jArr[i13];
            objArr2[a10] = objArr[i13];
            i14 = i15;
        }
    }

    public final Object e(int i10) {
        long j10;
        int i11;
        Object[] objArr = this.f47692c;
        Object obj = objArr[i10];
        objArr[i10] = null;
        this.f47697h--;
        long[] jArr = this.f47691b;
        loop0: while (true) {
            int i12 = (i10 + 1) & this.f47693d;
            while (true) {
                j10 = jArr[i12];
                if (j10 == 0) {
                    break loop0;
                }
                int a10 = (int) AbstractC7878jA.a(j10);
                int i13 = this.f47693d;
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
            jArr[i10] = j10;
            Object[] objArr2 = this.f47692c;
            objArr2[i10] = objArr2[i12];
            i10 = i12;
        }
        jArr[i10] = 0;
        this.f47692c[i10] = null;
        if (this.f47697h < this.f47696g / 4 && (i11 = this.f47695f) > 16) {
            d(i11 / 2);
        }
        return obj;
    }

    @Override
    public final Set entrySet() {
        if (this.f47698i == null) {
            this.f47698i = new C6592bU(this);
        }
        return this.f47698i;
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
        if (map.size() != this.f47697h) {
            return false;
        }
        if (this.f47698i == null) {
            this.f47698i = new C6592bU(this);
        }
        return this.f47698i.containsAll(map.entrySet());
    }

    @Override
    public final Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        long longValue = ((Long) obj).longValue();
        if (a(longValue)) {
            return b(longValue);
        }
        return null;
    }

    @Override
    public final int hashCode() {
        long j10;
        int i10 = this.f47694e ? this.f47697h - 1 : this.f47697h;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = i10 - 1;
            if (i10 == 0) {
                break;
            }
            while (true) {
                j10 = this.f47691b[i11];
                if (j10 != 0) {
                    break;
                }
                i11++;
            }
            int i14 = (int) (j10 ^ (j10 >>> 32));
            Object obj = this.f47692c[i11];
            if (this != obj) {
                i14 ^= obj == null ? 0 : System.identityHashCode(obj);
            }
            i12 += i14;
            i11++;
            i10 = i13;
        }
        if (!this.f47694e) {
            return i12;
        }
        Object obj2 = this.f47692c[this.f47695f];
        return i12 + (obj2 != null ? System.identityHashCode(obj2) : 0);
    }

    @Override
    public final boolean isEmpty() {
        return this.f47697h == 0;
    }

    @Override
    public final Set o() {
        if (this.f47699j == null) {
            this.f47699j = new ZT(this);
        }
        return this.f47699j;
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        long longValue = ((Long) obj).longValue();
        boolean a10 = a(longValue);
        Object a11 = a(obj2, longValue);
        if (a10) {
            return a11;
        }
        return null;
    }

    @Override
    public final void putAll(Map map) {
        if (0.75f <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), 0.75f);
            if (a10 > this.f47695f) {
                d(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f47697h) / 0.75f))));
            if (min > this.f47695f) {
                d(min);
            }
        }
        a(map);
    }

    @Override
    public final Object remove(Object obj) {
        if (obj == null) {
            return null;
        }
        long longValue = ((Long) obj).longValue();
        boolean a10 = a(longValue);
        Object c10 = c(longValue);
        if (a10) {
            return c10;
        }
        return null;
    }

    @Override
    public final int size() {
        return this.f47697h;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        if (this.f47698i == null) {
            this.f47698i = new C6592bU(this);
        }
        XT xt = new XT(this.f47698i.f46769b);
        int i10 = this.f47697h;
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
            C6425aU c6425aU = (C6425aU) xt.next();
            sb2.append(String.valueOf(c6425aU.f46546c.f47691b[c6425aU.f46545b]));
            sb2.append("=>");
            Object obj = c6425aU.f46546c.f47692c[c6425aU.f46545b];
            if (this == obj) {
                sb2.append("(this map)");
            } else {
                sb2.append(String.valueOf(obj));
            }
            i10 = i11;
        }
    }

    @Override
    public final Collection values() {
        if (this.f47700k == null) {
            this.f47700k = new WT(this);
        }
        return this.f47700k;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0025, code lost:
    
        if (r5 == r10) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0027, code lost:
    
        r10 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0029, code lost:
    
        r4 = (r4 + 1) & r8.f47693d;
        r5 = r2[r4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0031, code lost:
    
        if (r5 == 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0035, code lost:
    
        if (r5 != r10) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Object obj, long j10) {
        int i10;
        int i11;
        int i12;
        if (j10 == 0) {
            if (this.f47694e) {
                i11 = this.f47695f;
            } else {
                this.f47694e = true;
                i10 = this.f47695f;
                this.f47691b[i10] = j10;
                this.f47692c[i10] = obj;
                i12 = this.f47697h;
                this.f47697h = i12 + 1;
                if (i12 >= this.f47696g) {
                    d(AbstractC7878jA.a(i12 + 2, 0.75f));
                }
                i11 = -1;
            }
        } else {
            long[] jArr = this.f47691b;
            int a10 = ((int) AbstractC7878jA.a(j10)) & this.f47693d;
            long j11 = jArr[a10];
            if (j11 != 0) {
            }
            i10 = a10;
            this.f47691b[i10] = j10;
            this.f47692c[i10] = obj;
            i12 = this.f47697h;
            this.f47697h = i12 + 1;
            if (i12 >= this.f47696g) {
            }
            i11 = -1;
        }
        if (i11 < 0) {
            return null;
        }
        Object[] objArr = this.f47692c;
        Object obj2 = objArr[i11];
        objArr[i11] = obj;
        return obj2;
    }

    public final boolean a(long j10) {
        long j11;
        if (j10 == 0) {
            return this.f47694e;
        }
        long[] jArr = this.f47691b;
        int a10 = ((int) AbstractC7878jA.a(j10)) & this.f47693d;
        long j12 = jArr[a10];
        if (j12 == 0) {
            return false;
        }
        if (j10 == j12) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f47693d;
            j11 = jArr[a10];
            if (j11 == 0) {
                return false;
            }
        } while (j10 != j11);
        return true;
    }
}
