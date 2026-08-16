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

public class s0 extends AbstractMap<Short, Double> implements Map<Short, Double>, Externalizable, Cloneable {

    public static final long f24714c = 1;

    public ee.h0 f24715b;

    public class a extends AbstractSet<Map.Entry<Short, Double>> {

        public class C0682a implements Iterator<Map.Entry<Short, Double>> {

            public final Zd.p0 f24717b;

            public class C0683a implements Map.Entry<Short, Double> {

                public Double f24719b;

                public final Double f24720c;

                public final Short f24721d;

                public C0683a(Double d10, Short sh2) {
                    this.f24720c = d10;
                    this.f24721d = sh2;
                    this.f24719b = d10;
                }

                @Override
                public Short getKey() {
                    return this.f24721d;
                }

                @Override
                public Double getValue() {
                    return this.f24719b;
                }

                @Override
                public Double setValue(Double d10) {
                    this.f24719b = d10;
                    return s0.this.put(this.f24721d, d10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24721d) && entry.getValue().equals(this.f24719b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24721d.hashCode() + this.f24719b.hashCode();
                }
            }

            public C0682a() {
                this.f24717b = s0.this.f24715b.iterator();
            }

            @Override
            public Map.Entry<Short, Double> next() {
                this.f24717b.g();
                short key = this.f24717b.key();
                Short j10 = key == s0.this.f24715b.l() ? null : s0.this.j(key);
                double value = this.f24717b.value();
                return new C0683a(value != s0.this.f24715b.i() ? s0.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24717b.hasNext();
            }

            @Override
            public void remove() {
                this.f24717b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Short, Double> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Short, Double>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            s0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return s0.this.containsKey(key) && s0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return s0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Short, Double>> iterator() {
            return new C0682a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Short sh2 = (Short) ((Map.Entry) obj).getKey();
            s0 s0Var = s0.this;
            s0Var.f24715b.d(s0Var.h(sh2));
            return true;
        }

        @Override
        public int size() {
            return s0.this.f24715b.size();
        }
    }

    public s0() {
    }

    @Override
    public Double get(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24715b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = h(obj);
        }
        double n02 = this.f24715b.n0(l10);
        if (n02 == this.f24715b.i()) {
            return null;
        }
        return k(n02);
    }

    @Override
    public void clear() {
        this.f24715b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Short) && this.f24715b.z(h(obj));
        }
        ee.h0 h0Var = this.f24715b;
        return h0Var.z(h0Var.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Double) && this.f24715b.T(i(obj));
    }

    public ee.h0 e() {
        return this.f24715b;
    }

    @Override
    public Set<Map.Entry<Short, Double>> entrySet() {
        return new a();
    }

    @Override
    public Double put(Short sh2, Double d10) {
        double ma2 = this.f24715b.ma(sh2 == null ? this.f24715b.l() : h(sh2), d10 == null ? this.f24715b.i() : i(d10));
        if (ma2 == this.f24715b.i()) {
            return null;
        }
        return k(ma2);
    }

    @Override
    public Double remove(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24715b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = h(obj);
        }
        double d10 = this.f24715b.d(l10);
        if (d10 == this.f24715b.i()) {
            return null;
        }
        return k(d10);
    }

    public short h(Object obj) {
        return ((Short) obj).shortValue();
    }

    public double i(Object obj) {
        return ((Double) obj).doubleValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Short j(short s10) {
        return Short.valueOf(s10);
    }

    public Double k(double d10) {
        return Double.valueOf(d10);
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Double> map) {
        Iterator<Map.Entry<? extends Short, ? extends Double>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Short, ? extends Double> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24715b = (ee.h0) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24715b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24715b);
    }

    public s0(ee.h0 h0Var) {
        this.f24715b = h0Var;
    }
}
