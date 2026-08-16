package com.google.common.collect;

import com.google.common.collect.AbstractC12529i1;
import java.io.Serializable;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public final class C12513e1<K extends Enum<K>, V> extends AbstractC12529i1.c<K, V> {

    public final transient EnumMap<K, V> f66604g;

    public static class b<K extends Enum<K>, V> implements Serializable {

        public static final long f66605c = 0;

        public final EnumMap<K, V> f66606b;

        public b(EnumMap<K, V> enumMap) {
            this.f66606b = enumMap;
        }

        public Object a() {
            return new C12513e1(this.f66606b);
        }
    }

    public static <K extends Enum<K>, V> AbstractC12529i1<K, V> O(EnumMap<K, V> enumMap) {
        int size = enumMap.size();
        if (size == 0) {
            return AbstractC12529i1.y();
        }
        if (size != 1) {
            return new C12513e1(enumMap);
        }
        Map.Entry entry = (Map.Entry) D1.z(enumMap.entrySet());
        return AbstractC12529i1.z((Enum) entry.getKey(), entry.getValue());
    }

    @Override
    public Object M() {
        return new b(this.f66604g);
    }

    @Override
    public e3<Map.Entry<K, V>> N() {
        return Q1.I0(this.f66604g.entrySet().iterator());
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        return this.f66604g.containsKey(obj);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C12513e1) {
            obj = ((C12513e1) obj).f66604g;
        }
        return this.f66604g.equals(obj);
    }

    @Override
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        return this.f66604g.get(obj);
    }

    @Override
    public int size() {
        return this.f66604g.size();
    }

    @Override
    public boolean v() {
        return false;
    }

    @Override
    public e3<K> w() {
        return E1.f0(this.f66604g.o().iterator());
    }

    public C12513e1(EnumMap<K, V> enumMap) {
        this.f66604g = enumMap;
        w2.H.d(!enumMap.isEmpty());
    }
}
