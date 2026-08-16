package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import org.apache.commons.math3.geometry.VectorFormat;

public abstract class AbstractC6352a1 implements SortedMap, InterfaceC10345xy, Serializable, Map {
    @Override
    public abstract AbstractC6352a1 subMap(Object obj, Object obj2);

    @Override
    public abstract AbstractC6352a1 headMap(Object obj);

    @Override
    public abstract AbstractC6352a1 tailMap(Object obj);

    @Override
    public abstract void clear();

    @Override
    public abstract Comparator comparator();

    @Override
    public abstract boolean containsKey(Object obj);

    @Override
    public abstract M30 o();

    @Override
    public final Set entrySet() {
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
        return i().containsAll(map.entrySet());
    }

    @Override
    public int hashCode() {
        int size = size();
        A30 it = i().iterator();
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

    public abstract M30 i();

    @Override
    public abstract Object put(Object obj, Object obj2);

    @Override
    public void putAll(Map map) {
        int size = map.size();
        Iterator it = map.entrySet().iterator();
        if (map instanceof AbstractC6352a1) {
            while (true) {
                int i10 = size - 1;
                if (size == 0) {
                    return;
                }
                N20 n20 = (N20) it.next();
                put(n20.getKey(), n20.getValue());
                size = i10;
            }
        } else {
            while (true) {
                int i11 = size - 1;
                if (size == 0) {
                    return;
                }
                Map.Entry entry = (Map.Entry) it.next();
                put(entry.getKey(), entry.getValue());
                size = i11;
            }
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        A30 it = i().iterator();
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
            N20 n20 = (N20) it.next();
            if (this == n20.getKey()) {
                sb2.append("(this map)");
            } else {
                sb2.append(String.valueOf(n20.getKey()));
            }
            sb2.append("=>");
            if (this == n20.getValue()) {
                sb2.append("(this map)");
            } else {
                sb2.append(String.valueOf(n20.getValue()));
            }
            size = i10;
        }
    }
}
