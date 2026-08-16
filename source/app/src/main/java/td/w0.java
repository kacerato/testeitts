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

public class w0 extends AbstractMap<Short, Long> implements Map<Short, Long>, Externalizable, Cloneable {

    public static final long f24779c = 1;

    public ee.k0 f24780b;

    public class a extends AbstractSet<Map.Entry<Short, Long>> {

        public class C0696a implements Iterator<Map.Entry<Short, Long>> {

            public final Zd.t0 f24782b;

            public class C0697a implements Map.Entry<Short, Long> {

                public Long f24784b;

                public final Long f24785c;

                public final Short f24786d;

                public C0697a(Long l10, Short sh2) {
                    this.f24785c = l10;
                    this.f24786d = sh2;
                    this.f24784b = l10;
                }

                @Override
                public Short getKey() {
                    return this.f24786d;
                }

                @Override
                public Long getValue() {
                    return this.f24784b;
                }

                @Override
                public Long setValue(Long l10) {
                    this.f24784b = l10;
                    return w0.this.put(this.f24786d, l10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24786d) && entry.getValue().equals(this.f24784b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24786d.hashCode() + this.f24784b.hashCode();
                }
            }

            public C0696a() {
                this.f24782b = w0.this.f24780b.iterator();
            }

            @Override
            public Map.Entry<Short, Long> next() {
                this.f24782b.g();
                short key = this.f24782b.key();
                Short j10 = key == w0.this.f24780b.l() ? null : w0.this.j(key);
                long value = this.f24782b.value();
                return new C0697a(value != w0.this.f24780b.i() ? w0.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24782b.hasNext();
            }

            @Override
            public void remove() {
                this.f24782b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Short, Long> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Short, Long>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            w0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return w0.this.containsKey(key) && w0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return w0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Short, Long>> iterator() {
            return new C0696a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Short sh2 = (Short) ((Map.Entry) obj).getKey();
            w0 w0Var = w0.this;
            w0Var.f24780b.d(w0Var.h(sh2));
            return true;
        }

        @Override
        public int size() {
            return w0.this.f24780b.size();
        }
    }

    public w0() {
    }

    @Override
    public Long get(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24780b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = h(obj);
        }
        long n02 = this.f24780b.n0(l10);
        if (n02 == this.f24780b.i()) {
            return null;
        }
        return k(n02);
    }

    @Override
    public void clear() {
        this.f24780b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Short) && this.f24780b.z(h(obj));
        }
        ee.k0 k0Var = this.f24780b;
        return k0Var.z(k0Var.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Long) && this.f24780b.R(i(obj));
    }

    public ee.k0 e() {
        return this.f24780b;
    }

    @Override
    public Set<Map.Entry<Short, Long>> entrySet() {
        return new a();
    }

    @Override
    public Long put(Short sh2, Long l10) {
        long xa2 = this.f24780b.xa(sh2 == null ? this.f24780b.l() : h(sh2), l10 == null ? this.f24780b.i() : i(l10));
        if (xa2 == this.f24780b.i()) {
            return null;
        }
        return k(xa2);
    }

    @Override
    public Long remove(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24780b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = h(obj);
        }
        long d10 = this.f24780b.d(l10);
        if (d10 == this.f24780b.i()) {
            return null;
        }
        return k(d10);
    }

    public short h(Object obj) {
        return ((Short) obj).shortValue();
    }

    public long i(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Short j(short s10) {
        return Short.valueOf(s10);
    }

    public Long k(long j10) {
        return Long.valueOf(j10);
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Long> map) {
        Iterator<Map.Entry<? extends Short, ? extends Long>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Short, ? extends Long> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24780b = (ee.k0) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24780b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24780b);
    }

    public w0(ee.k0 k0Var) {
        this.f24780b = k0Var;
    }
}
