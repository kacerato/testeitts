package Td;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class g0<V> extends AbstractMap<Long, V> implements Map<Long, V>, Externalizable, Cloneable {

    public static final long f24520c = 1;

    public ee.V<V> f24521b;

    public class a extends AbstractSet<Map.Entry<Long, V>> {

        public class C0642a implements Iterator<Map.Entry<Long, V>> {

            public final Zd.d0<V> f24523b;

            public class C0643a implements Map.Entry<Long, V> {

                public V f24525b;

                public final Object f24526c;

                public final Long f24527d;

                /* JADX WARN: Multi-variable type inference failed */
                public C0643a(Object obj, Long l10) {
                    this.f24526c = obj;
                    this.f24527d = l10;
                    this.f24525b = obj;
                }

                @Override
                public Long getKey() {
                    return this.f24527d;
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24527d) && entry.getValue().equals(this.f24525b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public V getValue() {
                    return this.f24525b;
                }

                @Override
                public int hashCode() {
                    return this.f24527d.hashCode() + this.f24525b.hashCode();
                }

                @Override
                public V setValue(V v10) {
                    this.f24525b = v10;
                    return (V) g0.this.put(this.f24527d, v10);
                }
            }

            public C0642a() {
                this.f24523b = g0.this.f24521b.iterator();
            }

            @Override
            public Map.Entry<Long, V> next() {
                this.f24523b.g();
                long key = this.f24523b.key();
                return new C0643a(this.f24523b.value(), key == g0.this.f24521b.l() ? null : g0.this.h(key));
            }

            @Override
            public boolean hasNext() {
                return this.f24523b.hasNext();
            }

            @Override
            public void remove() {
                this.f24523b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Long, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Long, V>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            g0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return g0.this.containsKey(key) && g0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return g0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Long, V>> iterator() {
            return new C0642a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Long l10 = (Long) ((Map.Entry) obj).getKey();
            g0 g0Var = g0.this;
            g0Var.f24521b.e(g0Var.g(l10));
            return true;
        }

        @Override
        public int size() {
            return g0.this.f24521b.size();
        }
    }

    public g0() {
    }

    @Override
    public void clear() {
        this.f24521b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Long) && this.f24521b.E(((Long) obj).longValue());
        }
        ee.V<V> v10 = this.f24521b;
        return v10.E(v10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f24521b.containsValue(obj);
    }

    public ee.V<V> e() {
        return this.f24521b;
    }

    @Override
    public Set<Map.Entry<Long, V>> entrySet() {
        return new a();
    }

    @Override
    public V put(Long l10, V v10) {
        return this.f24521b.td(l10 == null ? this.f24521b.l() : g(l10), v10);
    }

    public long g(Long l10) {
        return l10.longValue();
    }

    @Override
    public V get(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24521b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = g((Long) obj);
        }
        return this.f24521b.u(l10);
    }

    public Long h(long j10) {
        return Long.valueOf(j10);
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public void putAll(Map<? extends Long, ? extends V> map) {
        Iterator<Map.Entry<? extends Long, ? extends V>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Long, ? extends V> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24521b = (ee.V) objectInput.readObject();
    }

    @Override
    public V remove(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24521b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = g((Long) obj);
        }
        return this.f24521b.e(l10);
    }

    @Override
    public int size() {
        return this.f24521b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24521b);
    }

    public g0(ee.V<V> v10) {
        this.f24521b = v10;
    }
}
