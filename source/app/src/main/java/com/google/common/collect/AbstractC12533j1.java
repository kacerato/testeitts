package com.google.common.collect;

import java.io.Serializable;
import java.util.Map;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public abstract class AbstractC12533j1<K, V> extends AbstractC12564r1<Map.Entry<K, V>> {

    @v2.c
    public static class a<K, V> implements Serializable {

        public static final long f66687c = 0;

        public final AbstractC12529i1<K, V> f66688b;

        public a(AbstractC12529i1<K, V> abstractC12529i1) {
            this.f66688b = abstractC12529i1;
        }

        public Object a() {
            return this.f66688b.entrySet();
        }
    }

    public static final class b<K, V> extends AbstractC12533j1<K, V> {

        public final transient AbstractC12529i1<K, V> f66689g;

        public final transient AbstractC12521g1<Map.Entry<K, V>> f66690h;

        public b(AbstractC12529i1<K, V> abstractC12529i1, Map.Entry<K, V>[] entryArr) {
            this(abstractC12529i1, AbstractC12521g1.k(entryArr));
        }

        @Override
        public AbstractC12529i1<K, V> H() {
            return this.f66689g;
        }

        @Override
        @v2.c("not used in GWT")
        public int b(Object[] objArr, int i10) {
            return this.f66690h.b(objArr, i10);
        }

        @Override
        public e3<Map.Entry<K, V>> iterator() {
            return this.f66690h.iterator();
        }

        @Override
        public AbstractC12521g1<Map.Entry<K, V>> x() {
            return this.f66690h;
        }

        public b(AbstractC12529i1<K, V> abstractC12529i1, AbstractC12521g1<Map.Entry<K, V>> abstractC12521g1) {
            this.f66689g = abstractC12529i1;
            this.f66690h = abstractC12521g1;
        }
    }

    public abstract AbstractC12529i1<K, V> H();

    @Override
    public boolean contains(@CheckForNull Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        V v10 = H().get(entry.getKey());
        return v10 != null && v10.equals(entry.getValue());
    }

    @Override
    public boolean h() {
        return H().v();
    }

    @Override
    public int hashCode() {
        return H().hashCode();
    }

    @Override
    @v2.c
    public Object j() {
        return new a(H());
    }

    @Override
    public int size() {
        return H().size();
    }

    @Override
    @v2.c
    public boolean y() {
        return H().u();
    }
}
