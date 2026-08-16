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

public class Q extends AbstractMap<Integer, Double> implements Map<Integer, Double>, Externalizable, Cloneable {

    public static final long f24348c = 1;

    public ee.I f24349b;

    public class a extends AbstractSet<Map.Entry<Integer, Double>> {

        public class C0605a implements Iterator<Map.Entry<Integer, Double>> {

            public final Zd.N f24351b;

            public class C0606a implements Map.Entry<Integer, Double> {

                public Double f24353b;

                public final Double f24354c;

                public final Integer f24355d;

                public C0606a(Double d10, Integer num) {
                    this.f24354c = d10;
                    this.f24355d = num;
                    this.f24353b = d10;
                }

                @Override
                public Integer getKey() {
                    return this.f24355d;
                }

                @Override
                public Double getValue() {
                    return this.f24353b;
                }

                @Override
                public Double setValue(Double d10) {
                    this.f24353b = d10;
                    return Q.this.put(this.f24355d, d10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24355d) && entry.getValue().equals(this.f24353b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24355d.hashCode() + this.f24353b.hashCode();
                }
            }

            public C0605a() {
                this.f24351b = Q.this.f24349b.iterator();
            }

            @Override
            public Map.Entry<Integer, Double> next() {
                this.f24351b.g();
                int key = this.f24351b.key();
                Integer j10 = key == Q.this.f24349b.l() ? null : Q.this.j(key);
                double value = this.f24351b.value();
                return new C0606a(value != Q.this.f24349b.i() ? Q.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24351b.hasNext();
            }

            @Override
            public void remove() {
                this.f24351b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Integer, Double> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Integer, Double>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            Q.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return Q.this.containsKey(key) && Q.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return Q.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Integer, Double>> iterator() {
            return new C0605a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Integer num = (Integer) ((Map.Entry) obj).getKey();
            Q q10 = Q.this;
            q10.f24349b.remove(q10.h(num));
            return true;
        }

        @Override
        public int size() {
            return Q.this.f24349b.size();
        }
    }

    public Q() {
    }

    @Override
    public Double get(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24349b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = h(obj);
        }
        double d10 = this.f24349b.get(l10);
        if (d10 == this.f24349b.i()) {
            return null;
        }
        return k(d10);
    }

    @Override
    public void clear() {
        this.f24349b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Integer) && this.f24349b.F(h(obj));
        }
        ee.I i10 = this.f24349b;
        return i10.F(i10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Double) && this.f24349b.T(i(obj));
    }

    public ee.I e() {
        return this.f24349b;
    }

    @Override
    public Set<Map.Entry<Integer, Double>> entrySet() {
        return new a();
    }

    @Override
    public Double put(Integer num, Double d10) {
        double W42 = this.f24349b.W4(num == null ? this.f24349b.l() : h(num), d10 == null ? this.f24349b.i() : i(d10));
        if (W42 == this.f24349b.i()) {
            return null;
        }
        return k(W42);
    }

    @Override
    public Double remove(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24349b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = h(obj);
        }
        double remove = this.f24349b.remove(l10);
        if (remove == this.f24349b.i()) {
            return null;
        }
        return k(remove);
    }

    public int h(Object obj) {
        return ((Integer) obj).intValue();
    }

    public double i(Object obj) {
        return ((Double) obj).doubleValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Integer j(int i10) {
        return Integer.valueOf(i10);
    }

    public Double k(double d10) {
        return Double.valueOf(d10);
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Double> map) {
        Iterator<Map.Entry<? extends Integer, ? extends Double>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Integer, ? extends Double> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24349b = (ee.I) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24349b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24349b);
    }

    public Q(ee.I i10) {
        this.f24349b = i10;
    }
}
