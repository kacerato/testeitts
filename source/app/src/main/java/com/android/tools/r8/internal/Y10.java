package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;

public final class Y10 implements Cloneable, Serializable, Map, InterfaceC10345xy {

    public transient Object[] f45899b = AbstractC9527t30.f52512a;

    public transient boolean[] f45900c = T6.f44390a;

    public int f45901d;

    public final boolean a(Object obj) {
        int i10;
        Object[] objArr = this.f45899b;
        int i11 = this.f45901d;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                return false;
            }
            Object obj2 = objArr[i10];
            if (obj2 == null) {
                if (obj == null) {
                    break;
                }
                i11 = i10;
            } else {
                if (obj2.equals(obj)) {
                    break;
                }
                i11 = i10;
            }
        }
        return this.f45900c[i10];
    }

    public final int b(Object obj) {
        int i10;
        Object[] objArr = this.f45899b;
        int i11 = this.f45901d;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                return -1;
            }
            Object obj2 = objArr[i10];
            if (obj2 == null) {
                if (obj == null) {
                    break;
                }
                i11 = i10;
            } else {
                if (obj2.equals(obj)) {
                    break;
                }
                i11 = i10;
            }
        }
        return i10;
    }

    public final boolean c(Object obj) {
        int b10 = b(obj);
        if (b10 == -1) {
            return false;
        }
        boolean z10 = this.f45900c[b10];
        int i10 = (this.f45901d - b10) - 1;
        Object[] objArr = this.f45899b;
        int i11 = b10 + 1;
        System.arraycopy(objArr, i11, objArr, b10, i10);
        boolean[] zArr = this.f45900c;
        System.arraycopy(zArr, i11, zArr, b10, i10);
        int i12 = this.f45901d - 1;
        this.f45901d = i12;
        this.f45899b[i12] = null;
        return z10;
    }

    @Override
    public final void clear() {
        int i10 = this.f45901d;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                this.f45901d = 0;
                return;
            } else {
                this.f45899b[i11] = null;
                i10 = i11;
            }
        }
    }

    public final Object clone() {
        try {
            Y10 y10 = (Y10) super.clone();
            y10.f45899b = (Object[]) this.f45899b.clone();
            y10.f45900c = (boolean[]) this.f45900c.clone();
            return y10;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean containsKey(Object obj) {
        return b(obj) != -1;
    }

    @Override
    public final boolean containsValue(Object obj) {
        if (obj == null) {
            return false;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int i10 = this.f45901d;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            if (this.f45900c[i11] == booleanValue) {
                return true;
            }
            i10 = i11;
        }
    }

    @Override
    public final Set entrySet() {
        return new X10(this);
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
        if (map.size() != this.f45901d) {
            return false;
        }
        return new X10(this).containsAll(map.entrySet());
    }

    @Override
    public final Object get(Object obj) {
        if (containsKey(obj)) {
            return Boolean.valueOf(a(obj));
        }
        return null;
    }

    @Override
    public final int hashCode() {
        int i10 = this.f45901d;
        W10 w10 = new W10(new X10(this));
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            if (i10 == 0) {
                return i11;
            }
            i11 += ((Map.Entry) w10.next()).hashCode();
            i10 = i12;
        }
    }

    @Override
    public final boolean isEmpty() {
        return this.f45901d == 0;
    }

    @Override
    public final Set o() {
        return new C9360s30(this.f45901d, this.f45899b);
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        boolean containsKey = containsKey(obj);
        boolean a10 = a(obj, ((Boolean) obj2).booleanValue());
        if (containsKey) {
            return Boolean.valueOf(a10);
        }
        return null;
    }

    @Override
    public final void putAll(Map map) {
        int size = map.size();
        Iterator it = map.entrySet().iterator();
        if (map instanceof Y10) {
            while (true) {
                int i10 = size - 1;
                if (size == 0) {
                    return;
                }
                W0 w02 = (W0) it.next();
                a(w02.f45254b, w02.f45255c);
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
    public final Object remove(Object obj) {
        boolean containsKey = containsKey(obj);
        boolean c10 = c(obj);
        if (containsKey) {
            return Boolean.valueOf(c10);
        }
        return null;
    }

    @Override
    public final int size() {
        return this.f45901d;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        W10 w10 = new W10(new X10(this));
        int i10 = this.f45901d;
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
            W0 w02 = (W0) w10.next();
            Object obj = w02.f45254b;
            if (this == obj) {
                sb2.append("(this map)");
            } else {
                sb2.append(String.valueOf(obj));
            }
            sb2.append("=>");
            sb2.append(String.valueOf(w02.f45255c));
            i10 = i11;
        }
    }

    @Override
    public final Collection values() {
        return new X6(new S6(this.f45900c, this.f45901d));
    }

    public final boolean a(Object obj, boolean z10) {
        int b10 = b(obj);
        if (b10 != -1) {
            boolean[] zArr = this.f45900c;
            boolean z11 = zArr[b10];
            zArr[b10] = z10;
            return z11;
        }
        int i10 = this.f45901d;
        if (i10 == this.f45899b.length) {
            Object[] objArr = new Object[i10 == 0 ? 2 : i10 * 2];
            boolean[] zArr2 = new boolean[i10 != 0 ? i10 * 2 : 2];
            while (true) {
                int i11 = i10 - 1;
                if (i10 == 0) {
                    break;
                }
                objArr[i11] = this.f45899b[i11];
                zArr2[i11] = this.f45900c[i11];
                i10 = i11;
            }
            this.f45899b = objArr;
            this.f45900c = zArr2;
        }
        Object[] objArr2 = this.f45899b;
        int i12 = this.f45901d;
        objArr2[i12] = obj;
        this.f45900c[i12] = z10;
        this.f45901d = i12 + 1;
        return false;
    }
}
