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

public class d0 extends AbstractMap<Long, Integer> implements Map<Long, Integer>, Externalizable, Cloneable {

    public static final long f24480c = 1;

    public ee.T f24481b;

    public class a extends AbstractSet<Map.Entry<Long, Integer>> {

        public class C0634a implements Iterator<Map.Entry<Long, Integer>> {

            public final Zd.a0 f24483b;

            public class C0635a implements Map.Entry<Long, Integer> {

                public Integer f24485b;

                public final Integer f24486c;

                public final Long f24487d;

                public C0635a(Integer num, Long l10) {
                    this.f24486c = num;
                    this.f24487d = l10;
                    this.f24485b = num;
                }

                @Override
                public Long getKey() {
                    return this.f24487d;
                }

                @Override
                public Integer getValue() {
                    return this.f24485b;
                }

                @Override
                public Integer setValue(Integer num) {
                    this.f24485b = num;
                    return d0.this.put(this.f24487d, num);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24487d) && entry.getValue().equals(this.f24485b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24487d.hashCode() + this.f24485b.hashCode();
                }
            }

            public C0634a() {
                this.f24483b = d0.this.f24481b.iterator();
            }

            @Override
            public Map.Entry<Long, Integer> next() {
                this.f24483b.g();
                long key = this.f24483b.key();
                Long j10 = key == d0.this.f24481b.l() ? null : d0.this.j(key);
                int value = this.f24483b.value();
                return new C0635a(value != d0.this.f24481b.i() ? d0.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24483b.hasNext();
            }

            @Override
            public void remove() {
                this.f24483b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Long, Integer> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Long, Integer>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            d0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return d0.this.containsKey(key) && d0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return d0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Long, Integer>> iterator() {
            return new C0634a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Long l10 = (Long) ((Map.Entry) obj).getKey();
            d0 d0Var = d0.this;
            d0Var.f24481b.e(d0Var.h(l10));
            return true;
        }

        @Override
        public int size() {
            return d0.this.f24481b.size();
        }
    }

    public d0() {
    }

    @Override
    public Integer get(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24481b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = h(obj);
        }
        int u10 = this.f24481b.u(l10);
        if (u10 == this.f24481b.i()) {
            return null;
        }
        return k(u10);
    }

    @Override
    public void clear() {
        this.f24481b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Long) && this.f24481b.E(h(obj));
        }
        ee.T t10 = this.f24481b;
        return t10.E(t10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Integer) && this.f24481b.Q(i(obj));
    }

    public ee.T e() {
        return this.f24481b;
    }

    @Override
    public Set<Map.Entry<Long, Integer>> entrySet() {
        return new a();
    }

    @Override
    public Integer put(Long l10, Integer num) {
        int m72 = this.f24481b.m7(l10 == null ? this.f24481b.l() : h(l10), num == null ? this.f24481b.i() : i(num));
        if (m72 == this.f24481b.i()) {
            return null;
        }
        return k(m72);
    }

    @Override
    public Integer remove(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24481b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = h(obj);
        }
        int e10 = this.f24481b.e(l10);
        if (e10 == this.f24481b.i()) {
            return null;
        }
        return k(e10);
    }

    public long h(Object obj) {
        return ((Long) obj).longValue();
    }

    public int i(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Long j(long j10) {
        return Long.valueOf(j10);
    }

    public Integer k(int i10) {
        return Integer.valueOf(i10);
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Integer> map) {
        Iterator<Map.Entry<? extends Long, ? extends Integer>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Long, ? extends Integer> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24481b = (ee.T) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24481b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24481b);
    }

    public d0(ee.T t10) {
        this.f24481b = t10;
    }
}
