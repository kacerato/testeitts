package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class Q5 extends LinkedHashMap {

    public static final Q5 f62094c;

    public boolean f62095b;

    static {
        Q5 q52 = new Q5();
        f62094c = q52;
        q52.f62095b = false;
    }

    public Q5() {
        this.f62095b = true;
    }

    public static Q5 e() {
        return f62094c;
    }

    public static int l(Object obj) {
        if (!(obj instanceof byte[])) {
            if (obj instanceof InterfaceC12198u5) {
                throw new UnsupportedOperationException();
            }
            return obj.hashCode();
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = A5.f61886b;
        int length = bArr.length;
        int c10 = A5.c(length, bArr, 0, length);
        if (c10 == 0) {
            return 1;
        }
        return c10;
    }

    @Override
    public final void clear() {
        m();
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

    public final void f(Q5 q52) {
        m();
        if (q52.isEmpty()) {
            return;
        }
        putAll(q52);
    }

    @Override
    public final int hashCode() {
        Iterator it = entrySet().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            i10 += l(entry.getValue()) ^ l(entry.getKey());
        }
        return i10;
    }

    public final Q5 i() {
        return isEmpty() ? new Q5() : new Q5(this);
    }

    public final void j() {
        this.f62095b = false;
    }

    public final boolean k() {
        return this.f62095b;
    }

    public final void m() {
        if (!this.f62095b) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        m();
        byte[] bArr = A5.f61886b;
        obj.getClass();
        obj2.getClass();
        return super.put(obj, obj2);
    }

    @Override
    public final void putAll(Map map) {
        m();
        for (Object obj : map.o()) {
            byte[] bArr = A5.f61886b;
            obj.getClass();
            map.get(obj).getClass();
        }
        super.putAll(map);
    }

    @Override
    public final Object remove(Object obj) {
        m();
        return super.remove(obj);
    }

    public Q5(Map map) {
        super(map);
        this.f62095b = true;
    }
}
