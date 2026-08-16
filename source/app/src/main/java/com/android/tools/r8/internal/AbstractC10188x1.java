package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.math3.geometry.VectorFormat;

public abstract class AbstractC10188x1 implements Serializable, Map, InterfaceC10345xy {

    public int f53665b;

    public abstract int b(int i10, Object obj);

    public abstract int b(Object obj);

    public abstract int c(Object obj);

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
        return i();
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
        if (containsKey(obj)) {
            return Integer.valueOf(b(obj));
        }
        return null;
    }

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

    public abstract I30 i();

    @Override
    public final Object put(Object obj, Object obj2) {
        boolean containsKey = containsKey(obj);
        int b10 = b(((Integer) obj2).intValue(), obj);
        if (containsKey) {
            return Integer.valueOf(b10);
        }
        return null;
    }

    public void putAll(Map map) {
        int size = map.size();
        Iterator it = map.entrySet().iterator();
        if (map instanceof AbstractC10188x1) {
            while (true) {
                int i10 = size - 1;
                if (size == 0) {
                    return;
                }
                InterfaceC7614hd0 interfaceC7614hd0 = (InterfaceC7614hd0) it.next();
                b(interfaceC7614hd0.getIntValue(), interfaceC7614hd0.getKey());
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
                Integer num = (Integer) entry.getValue();
                containsKey(key);
                b(num.intValue(), key);
                size = i11;
            }
        }
    }

    @Override
    public final Object remove(Object obj) {
        boolean containsKey = containsKey(obj);
        int c10 = c(obj);
        if (containsKey) {
            return Integer.valueOf(c10);
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
            InterfaceC7614hd0 interfaceC7614hd0 = (InterfaceC7614hd0) it.next();
            if (this == interfaceC7614hd0.getKey()) {
                sb2.append("(this map)");
            } else {
                sb2.append(String.valueOf(interfaceC7614hd0.getKey()));
            }
            sb2.append("=>");
            sb2.append(String.valueOf(interfaceC7614hd0.getIntValue()));
            size = i10;
        }
    }
}
