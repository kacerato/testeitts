package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class D20 implements Cloneable, InterfaceC10345xy, Serializable, Map {

    public transient Object[] f39414b;

    public transient long[] f39415c;

    public transient int f39416d;

    public transient boolean f39417e;

    public transient int f39418f;

    public transient int f39419g;

    public int f39420h;

    public transient A20 f39421i;

    public transient C10359y20 f39422j;

    public transient C9858v20 f39423k;

    public D20() {
        int a10 = AbstractC7878jA.a(16, 0.75f);
        this.f39418f = a10;
        this.f39416d = a10 - 1;
        this.f39419g = AbstractC7878jA.b(a10, 0.75f);
        int i10 = this.f39418f + 1;
        this.f39414b = new Object[i10];
        this.f39415c = new long[i10];
    }

    public final void a(Map map) {
        int size = map.size();
        Iterator it = map.entrySet().iterator();
        if (map instanceof D20) {
            while (true) {
                int i10 = size - 1;
                if (size == 0) {
                    return;
                }
                C10526z20 c10526z20 = (C10526z20) it.next();
                D20 d20 = c10526z20.f54266c;
                Object[] objArr = d20.f39414b;
                int i11 = c10526z20.f54265b;
                a(objArr[i11], d20.f39415c[i11]);
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
            if (!this.f39417e) {
                return 0L;
            }
            this.f39417e = false;
            Object[] objArr = this.f39414b;
            int i10 = this.f39418f;
            objArr[i10] = null;
            long j10 = this.f39415c[i10];
            int i11 = this.f39420h - 1;
            this.f39420h = i11;
            if (i11 < this.f39419g / 4 && i10 > 16) {
                d(i10 / 2);
            }
            return j10;
        }
        Object[] objArr2 = this.f39414b;
        int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f39416d;
        Object obj3 = objArr2[a10];
        if (obj3 == null) {
            return 0L;
        }
        if (obj.equals(obj3)) {
            return e(a10);
        }
        do {
            a10 = (a10 + 1) & this.f39416d;
            obj2 = objArr2[a10];
            if (obj2 == null) {
                return 0L;
            }
        } while (!obj.equals(obj2));
        return e(a10);
    }

    @Override
    public final void clear() {
        if (this.f39420h == 0) {
            return;
        }
        this.f39420h = 0;
        this.f39417e = false;
        Arrays.fill(this.f39414b, (Object) null);
    }

    public final Object clone() {
        try {
            D20 d20 = (D20) super.clone();
            d20.f39422j = null;
            d20.f39423k = null;
            d20.f39421i = null;
            d20.f39417e = this.f39417e;
            d20.f39414b = (Object[]) this.f39414b.clone();
            d20.f39415c = (long[]) this.f39415c.clone();
            return d20;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean containsKey(Object obj) {
        Object obj2;
        if (obj == null) {
            return this.f39417e;
        }
        Object[] objArr = this.f39414b;
        int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f39416d;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return false;
        }
        if (obj.equals(obj3)) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f39416d;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return false;
            }
        } while (!obj.equals(obj2));
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
        Object[] objArr = this.f39414b;
        long[] jArr = this.f39415c;
        int i11 = i10 - 1;
        int i12 = i10 + 1;
        Object[] objArr2 = new Object[i12];
        long[] jArr2 = new long[i12];
        int i13 = this.f39418f;
        int i14 = this.f39417e ? this.f39420h - 1 : this.f39420h;
        while (true) {
            int i15 = i14 - 1;
            if (i14 == 0) {
                jArr2[i10] = jArr[this.f39418f];
                this.f39418f = i10;
                this.f39416d = i11;
                this.f39419g = AbstractC7878jA.b(i10, 0.75f);
                this.f39414b = objArr2;
                this.f39415c = jArr2;
                return;
            }
            do {
                i13--;
                obj = objArr[i13];
            } while (obj == null);
            int a10 = AbstractC7878jA.a(obj.hashCode()) & i11;
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
        long j10 = this.f39415c[i10];
        this.f39420h--;
        Object[] objArr = this.f39414b;
        loop0: while (true) {
            int i12 = (i10 + 1) & this.f39416d;
            while (true) {
                obj = objArr[i12];
                if (obj == null) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(obj.hashCode());
                int i13 = this.f39416d;
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
            long[] jArr = this.f39415c;
            jArr[i10] = jArr[i12];
            i10 = i12;
        }
        objArr[i10] = null;
        if (this.f39420h < this.f39419g / 4 && (i11 = this.f39418f) > 16) {
            d(i11 / 2);
        }
        return j10;
    }

    @Override
    public final Set entrySet() {
        return e();
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
        if (map.size() != this.f39420h) {
            return false;
        }
        return e().containsAll(map.entrySet());
    }

    @Override
    public final Object get(Object obj) {
        Object obj2;
        long j10;
        if (!containsKey(obj)) {
            return null;
        }
        if (obj != null) {
            Object[] objArr = this.f39414b;
            int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f39416d;
            Object obj3 = objArr[a10];
            if (obj3 != null) {
                if (obj.equals(obj3)) {
                    j10 = this.f39415c[a10];
                }
                do {
                    a10 = (a10 + 1) & this.f39416d;
                    obj2 = objArr[a10];
                    if (obj2 == null) {
                    }
                } while (!obj.equals(obj2));
                j10 = this.f39415c[a10];
            }
            j10 = 0;
            break;
        } else {
            if (this.f39417e) {
                j10 = this.f39415c[this.f39418f];
            }
            j10 = 0;
            break;
        }
        return Long.valueOf(j10);
    }

    @Override
    public final int hashCode() {
        Object obj;
        int i10 = this.f39417e ? this.f39420h - 1 : this.f39420h;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i10 - 1;
            if (i10 == 0) {
                break;
            }
            while (true) {
                obj = this.f39414b[i11];
                if (obj != null) {
                    break;
                }
                i11++;
            }
            if (this != obj) {
                i13 = obj.hashCode();
            }
            long j10 = this.f39415c[i11];
            i13 ^= (int) (j10 ^ (j10 >>> 32));
            i12 += i13;
            i11++;
            i10 = i14;
        }
        if (!this.f39417e) {
            return i12;
        }
        long j11 = this.f39415c[this.f39418f];
        return i12 + ((int) ((j11 >>> 32) ^ j11));
    }

    @Override
    public final boolean isEmpty() {
        return this.f39420h == 0;
    }

    @Override
    public final Set o() {
        if (this.f39422j == null) {
            this.f39422j = new C10359y20(this);
        }
        return this.f39422j;
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
            if (a10 > this.f39418f) {
                d(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f39420h) / 0.75f))));
            if (min > this.f39418f) {
                d(min);
            }
        }
        a(map);
    }

    @Override
    public final Object remove(Object obj) {
        boolean containsKey = containsKey(obj);
        long b10 = b(obj);
        if (containsKey) {
            return Long.valueOf(b10);
        }
        return null;
    }

    @Override
    public final int size() {
        return this.f39420h;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        C10025w20 c10025w20 = new C10025w20(e().f38509b);
        int i10 = this.f39420h;
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
            C10526z20 c10526z20 = (C10526z20) c10025w20.next();
            Object obj = c10526z20.f54266c.f39414b[c10526z20.f54265b];
            if (this == obj) {
                sb2.append("(this map)");
            } else {
                sb2.append(String.valueOf(obj));
            }
            sb2.append("=>");
            sb2.append(String.valueOf(c10526z20.f54266c.f39415c[c10526z20.f54265b]));
            i10 = i11;
        }
    }

    @Override
    public final Collection values() {
        if (this.f39423k == null) {
            this.f39423k = new C9858v20(this);
        }
        return this.f39423k;
    }

    public final A20 e() {
        if (this.f39421i == null) {
            this.f39421i = new A20(this);
        }
        return this.f39421i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0024, code lost:
    
        if (r3.equals(r5) != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0026, code lost:
    
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0028, code lost:
    
        r2 = (r2 + 1) & r4.f39416d;
        r3 = r1[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002e, code lost:
    
        if (r3 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0034, code lost:
    
        if (r3.equals(r5) == false) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long a(Object obj, long j10) {
        int i10;
        int i11;
        int i12;
        if (obj == null) {
            if (this.f39417e) {
                i11 = this.f39418f;
            } else {
                this.f39417e = true;
                i10 = this.f39418f;
                this.f39414b[i10] = obj;
                this.f39415c[i10] = j10;
                i12 = this.f39420h;
                this.f39420h = i12 + 1;
                if (i12 >= this.f39419g) {
                    d(AbstractC7878jA.a(i12 + 2, 0.75f));
                }
                i11 = -1;
            }
        } else {
            Object[] objArr = this.f39414b;
            int a10 = AbstractC7878jA.a(obj.hashCode()) & this.f39416d;
            Object obj2 = objArr[a10];
            if (obj2 != null) {
            }
            i10 = a10;
            this.f39414b[i10] = obj;
            this.f39415c[i10] = j10;
            i12 = this.f39420h;
            this.f39420h = i12 + 1;
            if (i12 >= this.f39419g) {
            }
            i11 = -1;
        }
        if (i11 < 0) {
            return 0L;
        }
        long[] jArr = this.f39415c;
        long j11 = jArr[i11];
        jArr[i11] = j10;
        return j11;
    }

    public final boolean a(long j10) {
        long[] jArr = this.f39415c;
        Object[] objArr = this.f39414b;
        if (this.f39417e && jArr[this.f39418f] == j10) {
            return true;
        }
        int i10 = this.f39418f;
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
