package com.android.tools.r8.internal;

import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class C6012Uc0 extends AbstractC9687u1 implements Cloneable, InterfaceC5317Ic0 {

    public transient Object[] f44800b;

    public transient boolean[] f44801c;

    public transient int f44802d;

    public transient boolean f44803e;

    public transient int f44804f;

    public transient int f44805g;

    public int f44806h;

    public transient C5838Rc0 f44807i;

    public transient C5722Pc0 f44808j;

    public transient C5548Mc0 f44809k;

    public C6012Uc0() {
        int a10 = AbstractC7878jA.a(16, 0.75f);
        this.f44804f = a10;
        this.f44802d = a10 - 1;
        this.f44805g = AbstractC7878jA.b(a10, 0.75f);
        int i10 = this.f44804f + 1;
        this.f44800b = new Object[i10];
        this.f44801c = new boolean[i10];
    }

    public final void a(Map map) {
        int size = map.size();
        Iterator it = map.entrySet().iterator();
        if (map instanceof InterfaceC5317Ic0) {
            while (true) {
                int i10 = size - 1;
                if (size == 0) {
                    return;
                }
                InterfaceC5259Hc0 interfaceC5259Hc0 = (InterfaceC5259Hc0) it.next();
                a(interfaceC5259Hc0.getKey(), interfaceC5259Hc0.getBooleanValue());
                size = i10;
            }
        } else {
            while (true) {
                int i11 = size - 1;
                if (size == 0) {
                    return;
                }
                Map.Entry entry = (Map.Entry) it.next();
                Object key = entry.getKey();
                Boolean bool = (Boolean) entry.getValue();
                containsKey(key);
                a(key, bool.booleanValue());
                size = i11;
            }
        }
    }

    @Override
    public final boolean b(Object obj) {
        Object obj2;
        if (obj == null) {
            if (!this.f44803e) {
                return false;
            }
            this.f44803e = false;
            Object[] objArr = this.f44800b;
            int i10 = this.f44804f;
            objArr[i10] = null;
            boolean z10 = this.f44801c[i10];
            int i11 = this.f44806h - 1;
            this.f44806h = i11;
            if (i11 < this.f44805g / 4 && i10 > 16) {
                d(i10 / 2);
            }
            return z10;
        }
        Object[] objArr2 = this.f44800b;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f44802d;
        Object obj3 = objArr2[a10];
        if (obj3 == null) {
            return false;
        }
        if (obj == obj3) {
            return e(a10);
        }
        do {
            a10 = (a10 + 1) & this.f44802d;
            obj2 = objArr2[a10];
            if (obj2 == null) {
                return false;
            }
        } while (obj != obj2);
        return e(a10);
    }

    @Override
    public final void clear() {
        if (this.f44806h == 0) {
            return;
        }
        this.f44806h = 0;
        this.f44803e = false;
        Arrays.fill(this.f44800b, (Object) null);
    }

    public final Object clone() {
        try {
            C6012Uc0 c6012Uc0 = (C6012Uc0) super.clone();
            c6012Uc0.f44808j = null;
            c6012Uc0.f44809k = null;
            c6012Uc0.f44807i = null;
            c6012Uc0.f44803e = this.f44803e;
            c6012Uc0.f44800b = (Object[]) this.f44800b.clone();
            c6012Uc0.f44801c = (boolean[]) this.f44801c.clone();
            return c6012Uc0;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean containsKey(Object obj) {
        Object obj2;
        if (obj == null) {
            return this.f44803e;
        }
        Object[] objArr = this.f44800b;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f44802d;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return false;
        }
        if (obj == obj3) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f44802d;
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
        boolean booleanValue = ((Boolean) obj).booleanValue();
        boolean[] zArr = this.f44801c;
        Object[] objArr = this.f44800b;
        if (this.f44803e && zArr[this.f44804f] == booleanValue) {
            return true;
        }
        int i10 = this.f44804f;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            if (objArr[i11] != null && zArr[i11] == booleanValue) {
                return true;
            }
            i10 = i11;
        }
    }

    public final void d(int i10) {
        Object obj;
        Object[] objArr = this.f44800b;
        boolean[] zArr = this.f44801c;
        int i11 = i10 - 1;
        int i12 = i10 + 1;
        Object[] objArr2 = new Object[i12];
        boolean[] zArr2 = new boolean[i12];
        int i13 = this.f44804f;
        int i14 = this.f44803e ? this.f44806h - 1 : this.f44806h;
        while (true) {
            int i15 = i14 - 1;
            if (i14 == 0) {
                zArr2[i10] = zArr[this.f44804f];
                this.f44804f = i10;
                this.f44802d = i11;
                this.f44805g = AbstractC7878jA.b(i10, 0.75f);
                this.f44800b = objArr2;
                this.f44801c = zArr2;
                return;
            }
            do {
                i13--;
                obj = objArr[i13];
            } while (obj == null);
            int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & i11;
            if (objArr2[a10] == null) {
                objArr2[a10] = objArr[i13];
                zArr2[a10] = zArr[i13];
                i14 = i15;
            }
            do {
                a10 = (a10 + 1) & i11;
            } while (objArr2[a10] != null);
            objArr2[a10] = objArr[i13];
            zArr2[a10] = zArr[i13];
            i14 = i15;
        }
    }

    public final boolean e(int i10) {
        Object obj;
        int i11;
        boolean z10 = this.f44801c[i10];
        this.f44806h--;
        Object[] objArr = this.f44800b;
        loop0: while (true) {
            int i12 = (i10 + 1) & this.f44802d;
            while (true) {
                obj = objArr[i12];
                if (obj == null) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                int i13 = this.f44802d;
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
            boolean[] zArr = this.f44801c;
            zArr[i10] = zArr[i12];
            i10 = i12;
        }
        objArr[i10] = null;
        if (this.f44806h < this.f44805g / 4 && (i11 = this.f44804f) > 16) {
            d(i11 / 2);
        }
        return z10;
    }

    @Override
    public final Set entrySet() {
        return g();
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
        if (map.size() != this.f44806h) {
            return false;
        }
        return ((AbstractCollection) g()).containsAll(map.entrySet());
    }

    @Override
    public final I30 g() {
        if (this.f44807i == null) {
            this.f44807i = new C5838Rc0(this);
        }
        return this.f44807i;
    }

    @Override
    public final int hashCode() {
        Object obj;
        int i10 = this.f44803e ? this.f44806h - 1 : this.f44806h;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i10 - 1;
            if (i10 == 0) {
                break;
            }
            while (true) {
                obj = this.f44800b[i11];
                if (obj != null) {
                    break;
                }
                i11++;
            }
            if (this != obj) {
                i13 = System.identityHashCode(obj);
            }
            if (this.f44801c[i11]) {
                r5 = 1231;
            }
            i13 ^= r5;
            i12 += i13;
            i11++;
            i10 = i14;
        }
        if (this.f44803e) {
            return i12 + (this.f44801c[this.f44804f] ? 1231 : 1237);
        }
        return i12;
    }

    @Override
    public final boolean isEmpty() {
        return this.f44806h == 0;
    }

    @Override
    public final void putAll(Map map) {
        if (0.75f <= 0.5d) {
            int a10 = AbstractC7878jA.a(map.size(), 0.75f);
            if (a10 > this.f44804f) {
                d(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((map.size() + this.f44806h) / 0.75f))));
            if (min > this.f44804f) {
                d(min);
            }
        }
        a(map);
    }

    @Override
    public final int size() {
        return this.f44806h;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        C5606Nc0 c5606Nc0 = new C5606Nc0(((C5838Rc0) g()).f43943b);
        int i10 = this.f44806h;
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
            InterfaceC5259Hc0 interfaceC5259Hc0 = (InterfaceC5259Hc0) c5606Nc0.next();
            if (this == interfaceC5259Hc0.getKey()) {
                sb2.append("(this map)");
            } else {
                sb2.append(String.valueOf(interfaceC5259Hc0.getKey()));
            }
            sb2.append("=>");
            sb2.append(String.valueOf(interfaceC5259Hc0.getBooleanValue()));
            i10 = i11;
        }
    }

    @Override
    public final Collection values() {
        if (this.f44809k == null) {
            this.f44809k = new C5548Mc0(this);
        }
        return this.f44809k;
    }

    @Override
    public final InterfaceC6015Ud0 o() {
        if (this.f44808j == null) {
            this.f44808j = new C5722Pc0(this);
        }
        return this.f44808j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0020, code lost:
    
        if (r3 == r5) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0022, code lost:
    
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0024, code lost:
    
        r2 = (r2 + 1) & r4.f44802d;
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
    public final boolean a(Object obj, boolean z10) {
        int i10;
        int i11;
        int i12;
        if (obj == null) {
            if (this.f44803e) {
                i11 = this.f44804f;
            } else {
                this.f44803e = true;
                i10 = this.f44804f;
                this.f44800b[i10] = obj;
                this.f44801c[i10] = z10;
                i12 = this.f44806h;
                this.f44806h = i12 + 1;
                if (i12 >= this.f44805g) {
                    d(AbstractC7878jA.a(i12 + 2, 0.75f));
                }
                i11 = -1;
            }
        } else {
            Object[] objArr = this.f44800b;
            int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f44802d;
            Object obj2 = objArr[a10];
            if (obj2 != null) {
            }
            i10 = a10;
            this.f44800b[i10] = obj;
            this.f44801c[i10] = z10;
            i12 = this.f44806h;
            this.f44806h = i12 + 1;
            if (i12 >= this.f44805g) {
            }
            i11 = -1;
        }
        if (i11 < 0) {
            return false;
        }
        boolean[] zArr = this.f44801c;
        boolean z11 = zArr[i11];
        zArr[i11] = z10;
        return z11;
    }

    @Override
    public final boolean a(Object obj) {
        Object obj2;
        if (obj == null) {
            if (this.f44803e) {
                return this.f44801c[this.f44804f];
            }
            return false;
        }
        Object[] objArr = this.f44800b;
        int a10 = AbstractC7878jA.a(System.identityHashCode(obj)) & this.f44802d;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return false;
        }
        if (obj == obj3) {
            return this.f44801c[a10];
        }
        do {
            a10 = (a10 + 1) & this.f44802d;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return false;
            }
        } while (obj != obj2);
        return this.f44801c[a10];
    }
}
