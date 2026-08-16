package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.math3.geometry.VectorFormat;

public abstract class K implements YE, NE, Serializable {

    public int f41547b;

    @Override
    public abstract int b(int i10, int i11);

    @Override
    public final boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        return a(((Integer) obj).intValue());
    }

    @Override
    public final boolean containsValue(Object obj) {
        if (obj == null) {
            return false;
        }
        return d(((Integer) obj).intValue());
    }

    public abstract boolean d(int i10);

    @Override
    public I30 entrySet() {
        return h();
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
        if (map.size() != size()) {
            return false;
        }
        return entrySet().containsAll(map.entrySet());
    }

    @Override
    public final Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        int intValue = ((Integer) obj).intValue();
        if (a(intValue)) {
            return Integer.valueOf(get(intValue));
        }
        return null;
    }

    @Override
    public int hashCode() {
        int size = size();
        A30 it = entrySet().iterator();
        int i10 = 0;
        while (true) {
            int i11 = size - 1;
            if (size == 0) {
                return i10;
            }
            i10 += ((Map.Entry) it.next()).hashCode();
            size = i11;
        }
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        boolean a10 = a(intValue);
        int b10 = b(intValue, ((Integer) obj2).intValue());
        if (a10) {
            return Integer.valueOf(b10);
        }
        return null;
    }

    @Override
    public void putAll(Map map) {
        int size = map.size();
        Iterator it = map.entrySet().iterator();
        if (map instanceof YE) {
            while (true) {
                int i10 = size - 1;
                if (size == 0) {
                    return;
                }
                XE xe2 = (XE) it.next();
                b(xe2.a(), xe2.getIntValue());
                size = i10;
            }
        } else {
            while (true) {
                int i11 = size - 1;
                if (size == 0) {
                    return;
                }
                Map.Entry entry = (Map.Entry) it.next();
                Integer num = (Integer) entry.getKey();
                Integer num2 = (Integer) entry.getValue();
                int intValue = num.intValue();
                a(intValue);
                b(intValue, num2.intValue());
                size = i11;
            }
        }
    }

    @Override
    public abstract int remove(int i10);

    @Override
    public final Object remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int intValue = ((Integer) obj).intValue();
        boolean a10 = a(intValue);
        int remove = remove(intValue);
        if (a10) {
            return Integer.valueOf(remove);
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        A30 it = entrySet().iterator();
        int size = size();
        boolean z10 = true;
        while (true) {
            int i10 = size - 1;
            if (size == 0) {
                sb2.append(VectorFormat.DEFAULT_SUFFIX);
                return sb2.toString();
            }
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            XE xe2 = (XE) it.next();
            sb2.append(String.valueOf(xe2.a()));
            sb2.append("=>");
            sb2.append(String.valueOf(xe2.getIntValue()));
            size = i10;
        }
    }
}
