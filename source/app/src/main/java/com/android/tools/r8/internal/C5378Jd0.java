package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class C5378Jd0 implements Cloneable, InterfaceC10345xy, Serializable, Map {

    public transient Object[] f41436b;

    public transient Object[] f41437c;

    public transient int f41438d;

    public transient boolean f41439e;

    public transient int f41440f;

    public transient int f41441g;

    public int f41442h;

    public transient C5204Gd0 f41443i;

    public transient C5088Ed0 f41444j;

    public transient C4914Bd0 f41445k;

    public C5378Jd0(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("The expected number of elements must be nonnegative");
        }
        int a10 = AbstractC7878jA.a(i10, 0.75f);
        this.f41440f = a10;
        this.f41438d = a10 - 1;
        this.f41441g = AbstractC7878jA.b(a10, 0.75f);
        int i11 = this.f41440f + 1;
        this.f41436b = new Object[i11];
        this.f41437c = new Object[i11];
    }

    public final void a(Map map) {
        int size = map.size();
        Iterator it = map.entrySet().iterator();
        if (map instanceof C5378Jd0) {
            while (true) {
                int i10 = size - 1;
                if (size == 0) {
                    return;
                }
                C5146Fd0 c5146Fd0 = (C5146Fd0) it.next();
                C5378Jd0 c5378Jd0 = c5146Fd0.f40264c;
                Object[] objArr = c5378Jd0.f41436b;
                int i11 = c5146Fd0.f40263b;
                put(objArr[i11], c5378Jd0.f41437c[i11]);
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

    @Override
    public final void clear() {
        if (this.f41442h == 0) {
            return;
        }
        this.f41442h = 0;
        this.f41439e = false;
        Arrays.fill(this.f41436b, (Object) null);
        Arrays.fill(this.f41437c, (Object) null);
    }

    public final Object clone() {
        try {
            C5378Jd0 c5378Jd0 = (C5378Jd0) super.clone();
            c5378Jd0.f41444j = null;
            c5378Jd0.f41445k = null;
            c5378Jd0.f41443i = null;
            c5378Jd0.f41439e = this.f41439e;
            c5378Jd0.f41436b = (Object[]) this.f41436b.clone();
            c5378Jd0.f41437c = (Object[]) this.f41437c.clone();
            return c5378Jd0;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean containsKey(Object obj) {
        Object obj2;
        if (obj == null) {
            return this.f41439e;
        }
        Object[] objArr = this.f41436b;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f41438d;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return false;
        }
        if (obj == obj3) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f41438d;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return false;
            }
        } while (obj != obj2);
        return true;
    }

    @Override
    public final boolean containsValue(Object obj) {
        Object[] objArr = this.f41437c;
        Object[] objArr2 = this.f41436b;
        if (this.f41439e && objArr[this.f41440f] == obj) {
            return true;
        }
        int i10 = this.f41440f;
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
        Object obj;
        Object[] objArr = this.f41436b;
        Object[] objArr2 = this.f41437c;
        int i11 = i10 - 1;
        int i12 = i10 + 1;
        Object[] objArr3 = new Object[i12];
        Object[] objArr4 = new Object[i12];
        int i13 = this.f41440f;
        int i14 = this.f41439e ? this.f41442h - 1 : this.f41442h;
        while (true) {
            int i15 = i14 - 1;
            if (i14 == 0) {
                objArr4[i10] = objArr2[this.f41440f];
                this.f41440f = i10;
                this.f41438d = i11;
                this.f41441g = AbstractC7878jA.b(i10, 0.75f);
                this.f41436b = objArr3;
                this.f41437c = objArr4;
                return;
            }
            do {
                i13--;
                obj = objArr[i13];
            } while (obj == null);
            int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & i11;
            if (objArr3[a10] == null) {
                objArr3[a10] = objArr[i13];
                objArr4[a10] = objArr2[i13];
                i14 = i15;
            }
            do {
                a10 = (a10 + 1) & i11;
            } while (objArr3[a10] != null);
            objArr3[a10] = objArr[i13];
            objArr4[a10] = objArr2[i13];
            i14 = i15;
        }
    }

    public final Object e(int i10) {
        Object obj;
        int i11;
        Object[] objArr = this.f41437c;
        Object obj2 = objArr[i10];
        objArr[i10] = null;
        this.f41442h--;
        Object[] objArr2 = this.f41436b;
        loop0: while (true) {
            int i12 = (i10 + 1) & this.f41438d;
            while (true) {
                obj = objArr2[i12];
                if (obj == null) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                int i13 = this.f41438d;
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
            Object[] objArr3 = this.f41437c;
            objArr3[i10] = objArr3[i12];
            i10 = i12;
        }
        objArr2[i10] = null;
        this.f41437c[i10] = null;
        if (this.f41442h < this.f41441g / 4 && (i11 = this.f41440f) > 16) {
            d(i11 / 2);
        }
        return obj2;
    }

    @Override
    public final Set entrySet() {
        if (this.f41443i == null) {
            this.f41443i = new C5204Gd0(this);
        }
        return this.f41443i;
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
        if (map.size() != this.f41442h) {
            return false;
        }
        if (this.f41443i == null) {
            this.f41443i = new C5204Gd0(this);
        }
        return this.f41443i.containsAll(map.entrySet());
    }

    @Override
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            if (this.f41439e) {
                return this.f41437c[this.f41440f];
            }
            return null;
        }
        Object[] objArr = this.f41436b;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f41438d;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return null;
        }
        if (obj == obj3) {
            return this.f41437c[a10];
        }
        do {
            a10 = (a10 + 1) & this.f41438d;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return null;
            }
        } while (obj != obj2);
        return this.f41437c[a10];
    }

    @Override
    public final int hashCode() {
        Object obj;
        int i10 = this.f41439e ? this.f41442h - 1 : this.f41442h;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i10 - 1;
            if (i10 == 0) {
                break;
            }
            while (true) {
                obj = this.f41436b[i11];
                if (obj != null) {
                    break;
                }
                i11++;
            }
            if (this != obj) {
                i13 = System.identityHashCode(obj);
            }
            Object obj2 = this.f41437c[i11];
            if (this != obj2) {
                i13 = (obj2 == null ? 0 : System.identityHashCode(obj2)) ^ i13;
            }
            i12 += i13;
            i11++;
            i10 = i14;
        }
        if (!this.f41439e) {
            return i12;
        }
        Object obj3 = this.f41437c[this.f41440f];
        return i12 + (obj3 != null ? System.identityHashCode(obj3) : 0);
    }

    @Override
    public final boolean isEmpty() {
        return this.f41442h == 0;
    }

    @Override
    public final Set o() {
        if (this.f41444j == null) {
            this.f41444j = new C5088Ed0(this);
        }
        return this.f41444j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0020, code lost:
    
        if (r3 == r5) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0022, code lost:
    
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0024, code lost:
    
        r2 = (r2 + 1) & r4.f41438d;
        r3 = r1[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002a, code lost:
    
        if (r3 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002c, code lost:
    
        if (r3 != r5) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object put(Object obj, Object obj2) {
        int i10;
        int i11;
        int i12;
        if (obj != null) {
            Object[] objArr = this.f41436b;
            int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f41438d;
            Object obj3 = objArr[a10];
            if (obj3 != null) {
            }
            i10 = a10;
            this.f41436b[i10] = obj;
            this.f41437c[i10] = obj2;
            i12 = this.f41442h;
            this.f41442h = i12 + 1;
            if (i12 >= this.f41441g) {
            }
            i11 = -1;
        } else if (this.f41439e) {
            i11 = this.f41440f;
        } else {
            this.f41439e = true;
            i10 = this.f41440f;
            this.f41436b[i10] = obj;
            this.f41437c[i10] = obj2;
            i12 = this.f41442h;
            this.f41442h = i12 + 1;
            if (i12 >= this.f41441g) {
                d(AbstractC7878jA.a(i12 + 2, 0.75f));
            }
            i11 = -1;
        }
        if (i11 < 0) {
            return null;
        }
        Object[] objArr2 = this.f41437c;
        Object obj4 = objArr2[i11];
        objArr2[i11] = obj2;
        return obj4;
    }

    @Override
    public final void putAll(Map map) {
        if (0.75f <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), 0.75f);
            if (a10 > this.f41440f) {
                d(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f41442h) / 0.75f))));
            if (min > this.f41440f) {
                d(min);
            }
        }
        a(map);
    }

    @Override
    public final Object remove(Object obj) {
        Object obj2;
        if (obj != null) {
            Object[] objArr = this.f41436b;
            int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f41438d;
            Object obj3 = objArr[a10];
            if (obj3 == null) {
                return null;
            }
            if (obj == obj3) {
                return e(a10);
            }
            do {
                a10 = (a10 + 1) & this.f41438d;
                obj2 = objArr[a10];
                if (obj2 == null) {
                    return null;
                }
            } while (obj != obj2);
            return e(a10);
        }
        if (!this.f41439e) {
            return null;
        }
        this.f41439e = false;
        Object[] objArr2 = this.f41436b;
        int i10 = this.f41440f;
        objArr2[i10] = null;
        Object[] objArr3 = this.f41437c;
        Object obj4 = objArr3[i10];
        objArr3[i10] = null;
        int i11 = this.f41442h - 1;
        this.f41442h = i11;
        if (i11 < this.f41441g / 4 && i10 > 16) {
            d(i10 / 2);
        }
        return obj4;
    }

    @Override
    public final int size() {
        return this.f41442h;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        if (this.f41443i == null) {
            this.f41443i = new C5204Gd0(this);
        }
        C4972Cd0 c4972Cd0 = new C4972Cd0(this.f41443i.f40537b);
        int i10 = this.f41442h;
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
            C5146Fd0 c5146Fd0 = (C5146Fd0) c4972Cd0.next();
            Object obj = c5146Fd0.f40264c.f41436b[c5146Fd0.f40263b];
            if (this == obj) {
                sb2.append("(this map)");
            } else {
                sb2.append(String.valueOf(obj));
            }
            sb2.append("=>");
            Object obj2 = c5146Fd0.f40264c.f41437c[c5146Fd0.f40263b];
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
        if (this.f41445k == null) {
            this.f41445k = new C4914Bd0(this);
        }
        return this.f41445k;
    }
}
