package com.google.android.gms.internal.auth;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class X1 extends LinkedHashMap {

    public static final X1 f61679c;

    public boolean f61680b;

    static {
        X1 x12 = new X1();
        f61679c = x12;
        x12.f61680b = false;
    }

    public X1() {
        this.f61680b = true;
    }

    public static X1 e() {
        return f61679c;
    }

    public static int m(Object obj) {
        if (!(obj instanceof byte[])) {
            if (obj instanceof D1) {
                throw new UnsupportedOperationException();
            }
            return obj.hashCode();
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = H1.f61617d;
        int length = bArr.length;
        int b10 = H1.b(length, bArr, 0, length);
        if (b10 == 0) {
            return 1;
        }
        return b10;
    }

    @Override
    public final void clear() {
        n();
        super.clear();
    }

    @Override
    public final Set entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (this == map) {
            return true;
        }
        if (size() != map.size()) {
            return false;
        }
        Iterator it = entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!map.containsKey(entry.getKey())) {
                return false;
            }
            Object value = entry.getValue();
            Object obj2 = map.get(entry.getKey());
            if (!(((value instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) value, (byte[]) obj2) : value.equals(obj2))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final int hashCode() {
        Iterator it = entrySet().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            i10 += m(entry.getValue()) ^ m(entry.getKey());
        }
        return i10;
    }

    public final X1 i() {
        return isEmpty() ? new X1() : new X1(this);
    }

    public final void j() {
        this.f61680b = false;
    }

    public final void k(X1 x12) {
        n();
        if (x12.isEmpty()) {
            return;
        }
        putAll(x12);
    }

    public final boolean l() {
        return this.f61680b;
    }

    public final void n() {
        if (!this.f61680b) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        n();
        byte[] bArr = H1.f61617d;
        obj.getClass();
        obj2.getClass();
        return super.put(obj, obj2);
    }

    @Override
    public final void putAll(Map map) {
        n();
        for (Object obj : map.o()) {
            byte[] bArr = H1.f61617d;
            obj.getClass();
            map.get(obj).getClass();
        }
        super.putAll(map);
    }

    @Override
    public final Object remove(Object obj) {
        n();
        return super.remove(obj);
    }

    public X1(Map map) {
        super(map);
        this.f61680b = true;
    }
}
