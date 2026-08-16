package Td;

import Zd.InterfaceC3467z;
import ee.InterfaceC13080v;
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

public class A extends AbstractMap<Double, Long> implements Map<Double, Long>, Externalizable, Cloneable {

    public static final long f24221c = 1;

    public InterfaceC13080v f24222b;

    public class a extends AbstractSet<Map.Entry<Double, Long>> {

        public class C0579a implements Iterator<Map.Entry<Double, Long>> {

            public final InterfaceC3467z f24224b;

            public class C0580a implements Map.Entry<Double, Long> {

                public Long f24226b;

                public final Long f24227c;

                public final Double f24228d;

                public C0580a(Long l10, Double d10) {
                    this.f24227c = l10;
                    this.f24228d = d10;
                    this.f24226b = l10;
                }

                @Override
                public Double getKey() {
                    return this.f24228d;
                }

                @Override
                public Long getValue() {
                    return this.f24226b;
                }

                @Override
                public Long setValue(Long l10) {
                    this.f24226b = l10;
                    return A.this.put(this.f24228d, l10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24228d) && entry.getValue().equals(this.f24226b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24228d.hashCode() + this.f24226b.hashCode();
                }
            }

            public C0579a() {
                this.f24224b = A.this.f24222b.iterator();
            }

            @Override
            public Map.Entry<Double, Long> next() {
                this.f24224b.g();
                double key = this.f24224b.key();
                Double j10 = key == A.this.f24222b.l() ? null : A.this.j(key);
                long value = this.f24224b.value();
                return new C0580a(value != A.this.f24222b.i() ? A.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24224b.hasNext();
            }

            @Override
            public void remove() {
                this.f24224b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Double, Long> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Double, Long>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            A.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return A.this.containsKey(key) && A.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return A.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Double, Long>> iterator() {
            return new C0579a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Double d10 = (Double) ((Map.Entry) obj).getKey();
            A a10 = A.this;
            a10.f24222b.a(a10.h(d10));
            return true;
        }

        @Override
        public int size() {
            return A.this.f24222b.size();
        }
    }

    public A() {
    }

    @Override
    public Long get(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24222b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = h(obj);
        }
        long p02 = this.f24222b.p0(l10);
        if (p02 == this.f24222b.i()) {
            return null;
        }
        return k(p02);
    }

    @Override
    public void clear() {
        this.f24222b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Double) && this.f24222b.A(h(obj));
        }
        InterfaceC13080v interfaceC13080v = this.f24222b;
        return interfaceC13080v.A(interfaceC13080v.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Long) && this.f24222b.R(i(obj));
    }

    public InterfaceC13080v e() {
        return this.f24222b;
    }

    @Override
    public Set<Map.Entry<Double, Long>> entrySet() {
        return new a();
    }

    @Override
    public Long put(Double d10, Long l10) {
        long O22 = this.f24222b.O2(d10 == null ? this.f24222b.l() : h(d10), l10 == null ? this.f24222b.i() : i(l10));
        if (O22 == this.f24222b.i()) {
            return null;
        }
        return k(O22);
    }

    @Override
    public Long remove(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24222b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = h(obj);
        }
        long a10 = this.f24222b.a(l10);
        if (a10 == this.f24222b.i()) {
            return null;
        }
        return k(a10);
    }

    public double h(Object obj) {
        return ((Double) obj).doubleValue();
    }

    public long i(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Double j(double d10) {
        return Double.valueOf(d10);
    }

    public Long k(long j10) {
        return Long.valueOf(j10);
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Long> map) {
        Iterator<Map.Entry<? extends Double, ? extends Long>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Double, ? extends Long> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24222b = (InterfaceC13080v) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24222b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24222b);
    }

    public A(InterfaceC13080v interfaceC13080v) {
        this.f24222b = interfaceC13080v;
    }
}
