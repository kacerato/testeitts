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

public class f0 extends AbstractMap<Long, Long> implements Map<Long, Long>, Externalizable, Cloneable {

    public static final long f24502c = 1;

    public ee.U f24503b;

    public class a extends AbstractSet<Map.Entry<Long, Long>> {

        public class C0638a implements Iterator<Map.Entry<Long, Long>> {

            public final Zd.c0 f24505b;

            public class C0639a implements Map.Entry<Long, Long> {

                public Long f24507b;

                public final Long f24508c;

                public final Long f24509d;

                public C0639a(Long l10, Long l11) {
                    this.f24508c = l10;
                    this.f24509d = l11;
                    this.f24507b = l10;
                }

                @Override
                public Long getKey() {
                    return this.f24509d;
                }

                @Override
                public Long getValue() {
                    return this.f24507b;
                }

                @Override
                public Long setValue(Long l10) {
                    this.f24507b = l10;
                    return f0.this.put(this.f24509d, l10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24509d) && entry.getValue().equals(this.f24507b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24509d.hashCode() + this.f24507b.hashCode();
                }
            }

            public C0638a() {
                this.f24505b = f0.this.f24503b.iterator();
            }

            @Override
            public Map.Entry<Long, Long> next() {
                this.f24505b.g();
                long key = this.f24505b.key();
                Long j10 = key == f0.this.f24503b.l() ? null : f0.this.j(key);
                long value = this.f24505b.value();
                return new C0639a(value != f0.this.f24503b.i() ? f0.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24505b.hasNext();
            }

            @Override
            public void remove() {
                this.f24505b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Long, Long> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Long, Long>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            f0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return f0.this.containsKey(key) && f0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return f0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Long, Long>> iterator() {
            return new C0638a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Long l10 = (Long) ((Map.Entry) obj).getKey();
            f0 f0Var = f0.this;
            f0Var.f24503b.e(f0Var.h(l10));
            return true;
        }

        @Override
        public int size() {
            return f0.this.f24503b.size();
        }
    }

    public f0() {
    }

    @Override
    public Long get(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24503b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = h(obj);
        }
        long u10 = this.f24503b.u(l10);
        if (u10 == this.f24503b.i()) {
            return null;
        }
        return k(u10);
    }

    @Override
    public void clear() {
        this.f24503b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Long) && this.f24503b.E(h(obj));
        }
        ee.U u10 = this.f24503b;
        return u10.E(u10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Long) && this.f24503b.R(i(obj));
    }

    public ee.U e() {
        return this.f24503b;
    }

    @Override
    public Set<Map.Entry<Long, Long>> entrySet() {
        return new a();
    }

    @Override
    public Long put(Long l10, Long l11) {
        long n72 = this.f24503b.n7(l10 == null ? this.f24503b.l() : h(l10), l11 == null ? this.f24503b.i() : i(l11));
        if (n72 == this.f24503b.i()) {
            return null;
        }
        return k(n72);
    }

    @Override
    public Long remove(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24503b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = h(obj);
        }
        long e10 = this.f24503b.e(l10);
        if (e10 == this.f24503b.i()) {
            return null;
        }
        return k(e10);
    }

    public long h(Object obj) {
        return ((Long) obj).longValue();
    }

    public long i(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Long j(long j10) {
        return Long.valueOf(j10);
    }

    public Long k(long j10) {
        return Long.valueOf(j10);
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Long> map) {
        Iterator<Map.Entry<? extends Long, ? extends Long>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Long, ? extends Long> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24503b = (ee.U) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24503b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24503b);
    }

    public f0(ee.U u10) {
        this.f24503b = u10;
    }
}
