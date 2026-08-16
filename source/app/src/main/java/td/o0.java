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

public class o0<K> extends AbstractMap<K, Long> implements Map<K, Long>, Externalizable, Cloneable {

    public static final long f24654c = 1;

    public ee.d0<K> f24655b;

    public class a extends AbstractSet<Map.Entry<K, Long>> {

        public class C0670a implements Iterator<Map.Entry<K, Long>> {

            public final Zd.k0<K> f24657b;

            public class C0671a implements Map.Entry<K, Long> {

                public Long f24659b;

                public final Long f24660c;

                public final Object f24661d;

                public C0671a(Long l10, Object obj) {
                    this.f24660c = l10;
                    this.f24661d = obj;
                    this.f24659b = l10;
                }

                @Override
                public Long getValue() {
                    return this.f24659b;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public Long setValue(Long l10) {
                    this.f24659b = l10;
                    return o0.this.put(this.f24661d, l10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24661d) && entry.getValue().equals(this.f24659b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public K getKey() {
                    return (K) this.f24661d;
                }

                @Override
                public int hashCode() {
                    return this.f24661d.hashCode() + this.f24659b.hashCode();
                }
            }

            public C0670a() {
                this.f24657b = o0.this.f24655b.iterator();
            }

            @Override
            public Map.Entry<K, Long> next() {
                this.f24657b.g();
                return new C0671a(o0.this.i(this.f24657b.value()), this.f24657b.key());
            }

            @Override
            public boolean hasNext() {
                return this.f24657b.hasNext();
            }

            @Override
            public void remove() {
                this.f24657b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<K, Long> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<K, Long>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            o0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return o0.this.containsKey(key) && o0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return o0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<K, Long>> iterator() {
            return new C0670a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            o0.this.f24655b.remove(((Map.Entry) obj).getKey());
            return true;
        }

        @Override
        public int size() {
            return o0.this.f24655b.size();
        }
    }

    public o0() {
    }

    @Override
    public Long get(Object obj) {
        long j10 = this.f24655b.get(obj);
        if (j10 == this.f24655b.i()) {
            return null;
        }
        return i(j10);
    }

    @Override
    public void clear() {
        this.f24655b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f24655b.containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Long) && this.f24655b.R(h(obj));
    }

    public ee.d0<K> e() {
        return this.f24655b;
    }

    @Override
    public Set<Map.Entry<K, Long>> entrySet() {
        return new a();
    }

    @Override
    public Long put(K k10, Long l10) {
        if (l10 != null) {
            return i(this.f24655b.ba(k10, h(l10)));
        }
        ee.d0<K> d0Var = this.f24655b;
        return i(d0Var.ba(k10, d0Var.i()));
    }

    @Override
    public Long remove(Object obj) {
        long remove = this.f24655b.remove(obj);
        if (remove == this.f24655b.i()) {
            return null;
        }
        return i(remove);
    }

    public long h(Object obj) {
        return ((Long) obj).longValue();
    }

    public Long i(long j10) {
        return Long.valueOf(j10);
    }

    @Override
    public boolean isEmpty() {
        return this.f24655b.size() == 0;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Long> map) {
        Iterator<Map.Entry<? extends K, ? extends Long>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends K, ? extends Long> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24655b = (ee.d0) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24655b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24655b);
    }

    public o0(ee.d0<K> d0Var) {
        this.f24655b = d0Var;
    }
}
