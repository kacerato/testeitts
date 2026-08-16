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

public class c0 extends AbstractMap<Long, Float> implements Map<Long, Float>, Externalizable, Cloneable {

    public static final long f24462c = 1;

    public ee.S f24463b;

    public class a extends AbstractSet<Map.Entry<Long, Float>> {

        public class C0630a implements Iterator<Map.Entry<Long, Float>> {

            public final Zd.Z f24465b;

            public class C0631a implements Map.Entry<Long, Float> {

                public Float f24467b;

                public final Float f24468c;

                public final Long f24469d;

                public C0631a(Float f10, Long l10) {
                    this.f24468c = f10;
                    this.f24469d = l10;
                    this.f24467b = f10;
                }

                @Override
                public Long getKey() {
                    return this.f24469d;
                }

                @Override
                public Float getValue() {
                    return this.f24467b;
                }

                @Override
                public Float setValue(Float f10) {
                    this.f24467b = f10;
                    return c0.this.put(this.f24469d, f10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24469d) && entry.getValue().equals(this.f24467b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24469d.hashCode() + this.f24467b.hashCode();
                }
            }

            public C0630a() {
                this.f24465b = c0.this.f24463b.iterator();
            }

            @Override
            public Map.Entry<Long, Float> next() {
                this.f24465b.g();
                long key = this.f24465b.key();
                Long j10 = key == c0.this.f24463b.l() ? null : c0.this.j(key);
                float value = this.f24465b.value();
                return new C0631a(value != c0.this.f24463b.i() ? c0.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24465b.hasNext();
            }

            @Override
            public void remove() {
                this.f24465b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Long, Float> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Long, Float>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            c0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return c0.this.containsKey(key) && c0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return c0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Long, Float>> iterator() {
            return new C0630a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Long l10 = (Long) ((Map.Entry) obj).getKey();
            c0 c0Var = c0.this;
            c0Var.f24463b.e(c0Var.h(l10));
            return true;
        }

        @Override
        public int size() {
            return c0.this.f24463b.size();
        }
    }

    public c0() {
    }

    @Override
    public Float get(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24463b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = h(obj);
        }
        float u10 = this.f24463b.u(l10);
        if (u10 == this.f24463b.i()) {
            return null;
        }
        return k(u10);
    }

    @Override
    public void clear() {
        this.f24463b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Long) && this.f24463b.E(h(obj));
        }
        ee.S s10 = this.f24463b;
        return s10.E(s10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Float) && this.f24463b.U(i(obj));
    }

    public ee.S e() {
        return this.f24463b;
    }

    @Override
    public Set<Map.Entry<Long, Float>> entrySet() {
        return new a();
    }

    @Override
    public Float put(Long l10, Float f10) {
        float k72 = this.f24463b.k7(l10 == null ? this.f24463b.l() : h(l10), f10 == null ? this.f24463b.i() : i(f10));
        if (k72 == this.f24463b.i()) {
            return null;
        }
        return k(k72);
    }

    @Override
    public Float remove(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24463b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = h(obj);
        }
        float e10 = this.f24463b.e(l10);
        if (e10 == this.f24463b.i()) {
            return null;
        }
        return k(e10);
    }

    public long h(Object obj) {
        return ((Long) obj).longValue();
    }

    public float i(Object obj) {
        return ((Float) obj).floatValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Long j(long j10) {
        return Long.valueOf(j10);
    }

    public Float k(float f10) {
        return Float.valueOf(f10);
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Float> map) {
        Iterator<Map.Entry<? extends Long, ? extends Float>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Long, ? extends Float> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24463b = (ee.S) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24463b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24463b);
    }

    public c0(ee.S s10) {
        this.f24463b = s10;
    }
}
