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

public class K extends AbstractMap<Float, Long> implements Map<Float, Long>, Externalizable, Cloneable {

    public static final long f24299c = 1;

    public ee.D f24300b;

    public class a extends AbstractSet<Map.Entry<Float, Long>> {

        public class C0595a implements Iterator<Map.Entry<Float, Long>> {

            public final Zd.I f24302b;

            public class C0596a implements Map.Entry<Float, Long> {

                public Long f24304b;

                public final Long f24305c;

                public final Float f24306d;

                public C0596a(Long l10, Float f10) {
                    this.f24305c = l10;
                    this.f24306d = f10;
                    this.f24304b = l10;
                }

                @Override
                public Float getKey() {
                    return this.f24306d;
                }

                @Override
                public Long getValue() {
                    return this.f24304b;
                }

                @Override
                public Long setValue(Long l10) {
                    this.f24304b = l10;
                    return K.this.put(this.f24306d, l10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24306d) && entry.getValue().equals(this.f24304b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24306d.hashCode() + this.f24304b.hashCode();
                }
            }

            public C0595a() {
                this.f24302b = K.this.f24300b.iterator();
            }

            @Override
            public Map.Entry<Float, Long> next() {
                this.f24302b.g();
                float key = this.f24302b.key();
                Float j10 = key == K.this.f24300b.l() ? null : K.this.j(key);
                long value = this.f24302b.value();
                return new C0596a(value != K.this.f24300b.i() ? K.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24302b.hasNext();
            }

            @Override
            public void remove() {
                this.f24302b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Float, Long> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Float, Long>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            K.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return K.this.containsKey(key) && K.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return K.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Float, Long>> iterator() {
            return new C0595a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Float f10 = (Float) ((Map.Entry) obj).getKey();
            K k10 = K.this;
            k10.f24300b.c(k10.h(f10));
            return true;
        }

        @Override
        public int size() {
            return K.this.f24300b.size();
        }
    }

    public K() {
    }

    @Override
    public Long get(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24300b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = h(obj);
        }
        long q02 = this.f24300b.q0(l10);
        if (q02 == this.f24300b.i()) {
            return null;
        }
        return k(q02);
    }

    @Override
    public void clear() {
        this.f24300b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Float) && this.f24300b.H(h(obj));
        }
        ee.D d10 = this.f24300b;
        return d10.H(d10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Long) && this.f24300b.R(i(obj));
    }

    public ee.D e() {
        return this.f24300b;
    }

    @Override
    public Set<Map.Entry<Float, Long>> entrySet() {
        return new a();
    }

    @Override
    public Long put(Float f10, Long l10) {
        long O52 = this.f24300b.O5(f10 == null ? this.f24300b.l() : h(f10), l10 == null ? this.f24300b.i() : i(l10));
        if (O52 == this.f24300b.i()) {
            return null;
        }
        return k(O52);
    }

    @Override
    public Long remove(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24300b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = h(obj);
        }
        long c10 = this.f24300b.c(l10);
        if (c10 == this.f24300b.i()) {
            return null;
        }
        return k(c10);
    }

    public float h(Object obj) {
        return ((Float) obj).floatValue();
    }

    public long i(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Float j(float f10) {
        return Float.valueOf(f10);
    }

    public Long k(long j10) {
        return Long.valueOf(j10);
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Long> map) {
        Iterator<Map.Entry<? extends Float, ? extends Long>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Float, ? extends Long> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24300b = (ee.D) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24300b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24300b);
    }

    public K(ee.D d10) {
        this.f24300b = d10;
    }
}
