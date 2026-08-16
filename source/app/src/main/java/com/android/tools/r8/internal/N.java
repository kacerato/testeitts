package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;
import org.apache.commons.math3.geometry.VectorFormat;

public abstract class N extends L implements FF {
    @Override
    public abstract boolean a(int i10);

    @Override
    public I30 entrySet() {
        return b();
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
    public void putAll(Map map) {
        int size = map.size();
        Iterator it = map.entrySet().iterator();
        if (map instanceof FF) {
            while (true) {
                int i10 = size - 1;
                if (size == 0) {
                    return;
                }
                EF ef2 = (EF) it.next();
                a(ef2.a(), ef2.getValue());
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
                Object value = entry.getValue();
                int intValue = num.intValue();
                a(intValue);
                a(intValue, value);
                size = i11;
            }
        }
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
            EF ef2 = (EF) it.next();
            sb2.append(String.valueOf(ef2.a()));
            sb2.append("=>");
            if (this == ef2.getValue()) {
                sb2.append("(this map)");
            } else {
                sb2.append(String.valueOf(ef2.getValue()));
            }
            size = i10;
        }
    }
}
