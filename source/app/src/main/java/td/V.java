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

public class V extends AbstractMap<Integer, Long> implements Map<Integer, Long>, Externalizable, Cloneable {

    public static final long f24377c = 1;

    public ee.L f24378b;

    public class a extends AbstractSet<Map.Entry<Integer, Long>> {

        public class C0611a implements Iterator<Map.Entry<Integer, Long>> {

            public final Zd.S f24380b;

            public class C0612a implements Map.Entry<Integer, Long> {

                public Long f24382b;

                public final Long f24383c;

                public final Integer f24384d;

                public C0612a(Long l10, Integer num) {
                    this.f24383c = l10;
                    this.f24384d = num;
                    this.f24382b = l10;
                }

                @Override
                public Integer getKey() {
                    return this.f24384d;
                }

                @Override
                public Long getValue() {
                    return this.f24382b;
                }

                @Override
                public Long setValue(Long l10) {
                    this.f24382b = l10;
                    return V.this.put(this.f24384d, l10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24384d) && entry.getValue().equals(this.f24382b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24384d.hashCode() + this.f24382b.hashCode();
                }
            }

            public C0611a() {
                this.f24380b = V.this.f24378b.iterator();
            }

            @Override
            public Map.Entry<Integer, Long> next() {
                this.f24380b.g();
                int key = this.f24380b.key();
                Integer j10 = key == V.this.f24378b.l() ? null : V.this.j(key);
                long value = this.f24380b.value();
                return new C0612a(value != V.this.f24378b.i() ? V.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24380b.hasNext();
            }

            @Override
            public void remove() {
                this.f24380b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Integer, Long> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Integer, Long>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            V.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return V.this.containsKey(key) && V.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return V.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Integer, Long>> iterator() {
            return new C0611a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Integer num = (Integer) ((Map.Entry) obj).getKey();
            V v10 = V.this;
            v10.f24378b.remove(v10.h(num));
            return true;
        }

        @Override
        public int size() {
            return V.this.f24378b.size();
        }
    }

    public V() {
    }

    @Override
    public Long get(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24378b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = h(obj);
        }
        long j10 = this.f24378b.get(l10);
        if (j10 == this.f24378b.i()) {
            return null;
        }
        return k(j10);
    }

    @Override
    public void clear() {
        this.f24378b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Integer) && this.f24378b.F(h(obj));
        }
        ee.L l10 = this.f24378b;
        return l10.F(l10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Long) && this.f24378b.R(i(obj));
    }

    public ee.L e() {
        return this.f24378b;
    }

    @Override
    public Set<Map.Entry<Integer, Long>> entrySet() {
        return new a();
    }

    @Override
    public Long put(Integer num, Long l10) {
        long h52 = this.f24378b.h5(num == null ? this.f24378b.l() : h(num), l10 == null ? this.f24378b.i() : i(l10));
        if (h52 == this.f24378b.i()) {
            return null;
        }
        return k(h52);
    }

    @Override
    public Long remove(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24378b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = h(obj);
        }
        long remove = this.f24378b.remove(l10);
        if (remove == this.f24378b.i()) {
            return null;
        }
        return k(remove);
    }

    public int h(Object obj) {
        return ((Integer) obj).intValue();
    }

    public long i(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Integer j(int i10) {
        return Integer.valueOf(i10);
    }

    public Long k(long j10) {
        return Long.valueOf(j10);
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Long> map) {
        Iterator<Map.Entry<? extends Integer, ? extends Long>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Integer, ? extends Long> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24378b = (ee.L) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24378b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24378b);
    }

    public V(ee.L l10) {
        this.f24378b = l10;
    }
}
