package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class OU extends LinkedHashMap {

    public static final int f42893c = 0;

    public boolean f42894b = true;

    static {
        new OU().f42894b = false;
    }

    public static boolean a(Map map, Map map2) {
        if (map == map2) {
            return true;
        }
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (!map2.containsKey(entry.getKey())) {
                return false;
            }
            Object value = entry.getValue();
            Object obj = map2.get(entry.getKey());
            if (!(((value instanceof byte[]) && (obj instanceof byte[])) ? Arrays.equals((byte[]) value, (byte[]) obj) : value.equals(obj))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final void clear() {
        if (!this.f42894b) {
            throw new UnsupportedOperationException();
        }
        super.clear();
    }

    @Override
    public final Set entrySet() {
        return isEmpty() ? Collections.EMPTY_SET : super.entrySet();
    }

    @Override
    public final boolean equals(Object obj) {
        return (obj instanceof Map) && a(this, (Map) obj);
    }

    @Override
    public final int hashCode() {
        int hashCode;
        int i10 = 0;
        for (Map.Entry entry : entrySet()) {
            Object key = entry.getKey();
            int i11 = 1;
            if (key instanceof byte[]) {
                byte[] bArr = (byte[]) key;
                Charset charset = YI.f45964a;
                hashCode = bArr.length;
                for (byte b10 : bArr) {
                    hashCode = (hashCode * 31) + b10;
                }
                if (hashCode == 0) {
                    hashCode = 1;
                }
            } else {
                if (key instanceof QI) {
                    throw new UnsupportedOperationException();
                }
                hashCode = key.hashCode();
            }
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr2 = (byte[]) value;
                Charset charset2 = YI.f45964a;
                int length = bArr2.length;
                for (byte b11 : bArr2) {
                    length = (length * 31) + b11;
                }
                if (length != 0) {
                    i11 = length;
                }
            } else {
                if (value instanceof QI) {
                    throw new UnsupportedOperationException();
                }
                i11 = value.hashCode();
            }
            i10 += hashCode ^ i11;
        }
        return i10;
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        if (!this.f42894b) {
            throw new UnsupportedOperationException();
        }
        Charset charset = YI.f45964a;
        obj.getClass();
        obj2.getClass();
        return super.put(obj, obj2);
    }

    @Override
    public final void putAll(Map map) {
        if (!this.f42894b) {
            throw new UnsupportedOperationException();
        }
        for (Object obj : map.o()) {
            Charset charset = YI.f45964a;
            obj.getClass();
            map.get(obj).getClass();
        }
        super.putAll(map);
    }

    @Override
    public final Object remove(Object obj) {
        if (this.f42894b) {
            return super.remove(obj);
        }
        throw new UnsupportedOperationException();
    }
}
