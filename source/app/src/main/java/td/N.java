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

public class N extends AbstractMap<Float, Short> implements Map<Float, Short>, Externalizable, Cloneable {

    public static final long f24321c = 1;

    public ee.F f24322b;

    public class a extends AbstractSet<Map.Entry<Float, Short>> {

        public class C0599a implements Iterator<Map.Entry<Float, Short>> {

            public final Zd.K f24324b;

            public class C0600a implements Map.Entry<Float, Short> {

                public Short f24326b;

                public final Short f24327c;

                public final Float f24328d;

                public C0600a(Short sh2, Float f10) {
                    this.f24327c = sh2;
                    this.f24328d = f10;
                    this.f24326b = sh2;
                }

                @Override
                public Float getKey() {
                    return this.f24328d;
                }

                @Override
                public Short getValue() {
                    return this.f24326b;
                }

                @Override
                public Short setValue(Short sh2) {
                    this.f24326b = sh2;
                    return N.this.put(this.f24328d, sh2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24328d) && entry.getValue().equals(this.f24326b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24328d.hashCode() + this.f24326b.hashCode();
                }
            }

            public C0599a() {
                this.f24324b = N.this.f24322b.iterator();
            }

            @Override
            public Map.Entry<Float, Short> next() {
                this.f24324b.g();
                float key = this.f24324b.key();
                Float j10 = key == N.this.f24322b.l() ? null : N.this.j(key);
                short value = this.f24324b.value();
                return new C0600a(value != N.this.f24322b.i() ? N.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24324b.hasNext();
            }

            @Override
            public void remove() {
                this.f24324b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Float, Short> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Float, Short>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            N.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return N.this.containsKey(key) && N.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return N.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Float, Short>> iterator() {
            return new C0599a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Float f10 = (Float) ((Map.Entry) obj).getKey();
            N n10 = N.this;
            n10.f24322b.c(n10.h(f10));
            return true;
        }

        @Override
        public int size() {
            return N.this.f24322b.size();
        }
    }

    public N() {
    }

    @Override
    public Short get(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24322b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = h(obj);
        }
        short q02 = this.f24322b.q0(l10);
        if (q02 == this.f24322b.i()) {
            return null;
        }
        return k(q02);
    }

    @Override
    public void clear() {
        this.f24322b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Float) && this.f24322b.H(h(obj));
        }
        ee.F f10 = this.f24322b;
        return f10.H(f10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Short) && this.f24322b.L(i(obj));
    }

    public ee.F e() {
        return this.f24322b;
    }

    @Override
    public Set<Map.Entry<Float, Short>> entrySet() {
        return new a();
    }

    @Override
    public Short put(Float f10, Short sh2) {
        short T52 = this.f24322b.T5(f10 == null ? this.f24322b.l() : h(f10), sh2 == null ? this.f24322b.i() : i(sh2));
        if (T52 == this.f24322b.i()) {
            return null;
        }
        return k(T52);
    }

    @Override
    public Short remove(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24322b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = h(obj);
        }
        short c10 = this.f24322b.c(l10);
        if (c10 == this.f24322b.i()) {
            return null;
        }
        return k(c10);
    }

    public float h(Object obj) {
        return ((Float) obj).floatValue();
    }

    public short i(Object obj) {
        return ((Short) obj).shortValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Float j(float f10) {
        return Float.valueOf(f10);
    }

    public Short k(short s10) {
        return Short.valueOf(s10);
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Short> map) {
        Iterator<Map.Entry<? extends Float, ? extends Short>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Float, ? extends Short> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24322b = (ee.F) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24322b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24322b);
    }

    public N(ee.F f10) {
        this.f24322b = f10;
    }
}
