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

public class i0 extends AbstractMap<Long, Short> implements Map<Long, Short>, Externalizable, Cloneable {

    public static final long f24546c = 1;

    public ee.W f24547b;

    public class a extends AbstractSet<Map.Entry<Long, Short>> {

        public class C0646a implements Iterator<Map.Entry<Long, Short>> {

            public final Zd.e0 f24549b;

            public class C0647a implements Map.Entry<Long, Short> {

                public Short f24551b;

                public final Short f24552c;

                public final Long f24553d;

                public C0647a(Short sh2, Long l10) {
                    this.f24552c = sh2;
                    this.f24553d = l10;
                    this.f24551b = sh2;
                }

                @Override
                public Long getKey() {
                    return this.f24553d;
                }

                @Override
                public Short getValue() {
                    return this.f24551b;
                }

                @Override
                public Short setValue(Short sh2) {
                    this.f24551b = sh2;
                    return i0.this.put(this.f24553d, sh2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24553d) && entry.getValue().equals(this.f24551b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24553d.hashCode() + this.f24551b.hashCode();
                }
            }

            public C0646a() {
                this.f24549b = i0.this.f24547b.iterator();
            }

            @Override
            public Map.Entry<Long, Short> next() {
                this.f24549b.g();
                long key = this.f24549b.key();
                Long j10 = key == i0.this.f24547b.l() ? null : i0.this.j(key);
                short value = this.f24549b.value();
                return new C0647a(value != i0.this.f24547b.i() ? i0.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24549b.hasNext();
            }

            @Override
            public void remove() {
                this.f24549b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Long, Short> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Long, Short>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            i0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return i0.this.containsKey(key) && i0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return i0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Long, Short>> iterator() {
            return new C0646a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Long l10 = (Long) ((Map.Entry) obj).getKey();
            i0 i0Var = i0.this;
            i0Var.f24547b.e(i0Var.h(l10));
            return true;
        }

        @Override
        public int size() {
            return i0.this.f24547b.size();
        }
    }

    public i0() {
    }

    @Override
    public Short get(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24547b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = h(obj);
        }
        short u10 = this.f24547b.u(l10);
        if (u10 == this.f24547b.i()) {
            return null;
        }
        return k(u10);
    }

    @Override
    public void clear() {
        this.f24547b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Long) && this.f24547b.E(h(obj));
        }
        ee.W w10 = this.f24547b;
        return w10.E(w10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Short) && this.f24547b.L(i(obj));
    }

    public ee.W e() {
        return this.f24547b;
    }

    @Override
    public Set<Map.Entry<Long, Short>> entrySet() {
        return new a();
    }

    @Override
    public Short put(Long l10, Short sh2) {
        short u72 = this.f24547b.u7(l10 == null ? this.f24547b.l() : h(l10), sh2 == null ? this.f24547b.i() : i(sh2));
        if (u72 == this.f24547b.i()) {
            return null;
        }
        return k(u72);
    }

    @Override
    public Short remove(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24547b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = h(obj);
        }
        short e10 = this.f24547b.e(l10);
        if (e10 == this.f24547b.i()) {
            return null;
        }
        return k(e10);
    }

    public long h(Object obj) {
        return ((Long) obj).longValue();
    }

    public short i(Object obj) {
        return ((Short) obj).shortValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Long j(long j10) {
        return Long.valueOf(j10);
    }

    public Short k(short s10) {
        return Short.valueOf(s10);
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Short> map) {
        Iterator<Map.Entry<? extends Long, ? extends Short>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Long, ? extends Short> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24547b = (ee.W) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24547b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24547b);
    }

    public i0(ee.W w10) {
        this.f24547b = w10;
    }
}
