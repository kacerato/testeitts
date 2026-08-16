package Td;

import Zd.InterfaceC3463v;
import ee.InterfaceC13077s;
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

public class C3083w extends AbstractMap<Double, Double> implements Map<Double, Double>, Externalizable, Cloneable {

    public static final long f24770c = 1;

    public InterfaceC13077s f24771b;

    public class a extends AbstractSet<Map.Entry<Double, Double>> {

        public class C0694a implements Iterator<Map.Entry<Double, Double>> {

            public final InterfaceC3463v f24773b;

            public class C0695a implements Map.Entry<Double, Double> {

                public Double f24775b;

                public final Double f24776c;

                public final Double f24777d;

                public C0695a(Double d10, Double d11) {
                    this.f24776c = d10;
                    this.f24777d = d11;
                    this.f24775b = d10;
                }

                @Override
                public Double getKey() {
                    return this.f24777d;
                }

                @Override
                public Double getValue() {
                    return this.f24775b;
                }

                @Override
                public Double setValue(Double d10) {
                    this.f24775b = d10;
                    return C3083w.this.put(this.f24777d, d10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24777d) && entry.getValue().equals(this.f24775b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24777d.hashCode() + this.f24775b.hashCode();
                }
            }

            public C0694a() {
                this.f24773b = C3083w.this.f24771b.iterator();
            }

            @Override
            public Map.Entry<Double, Double> next() {
                this.f24773b.g();
                double key = this.f24773b.key();
                Double j10 = key == C3083w.this.f24771b.l() ? null : C3083w.this.j(key);
                double value = this.f24773b.value();
                return new C0695a(value != C3083w.this.f24771b.i() ? C3083w.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24773b.hasNext();
            }

            @Override
            public void remove() {
                this.f24773b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Double, Double> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Double, Double>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3083w.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3083w.this.containsKey(key) && C3083w.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3083w.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Double, Double>> iterator() {
            return new C0694a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Double d10 = (Double) ((Map.Entry) obj).getKey();
            C3083w c3083w = C3083w.this;
            c3083w.f24771b.a(c3083w.h(d10));
            return true;
        }

        @Override
        public int size() {
            return C3083w.this.f24771b.size();
        }
    }

    public C3083w() {
    }

    @Override
    public Double get(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24771b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = h(obj);
        }
        double p02 = this.f24771b.p0(l10);
        if (p02 == this.f24771b.i()) {
            return null;
        }
        return k(p02);
    }

    @Override
    public void clear() {
        this.f24771b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Double) && this.f24771b.A(h(obj));
        }
        InterfaceC13077s interfaceC13077s = this.f24771b;
        return interfaceC13077s.A(interfaceC13077s.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Double) && this.f24771b.T(i(obj));
    }

    public InterfaceC13077s e() {
        return this.f24771b;
    }

    @Override
    public Set<Map.Entry<Double, Double>> entrySet() {
        return new a();
    }

    @Override
    public Double put(Double d10, Double d11) {
        double J22 = this.f24771b.J2(d10 == null ? this.f24771b.l() : h(d10), d11 == null ? this.f24771b.i() : i(d11));
        if (J22 == this.f24771b.i()) {
            return null;
        }
        return k(J22);
    }

    @Override
    public Double remove(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24771b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = h(obj);
        }
        double a10 = this.f24771b.a(l10);
        if (a10 == this.f24771b.i()) {
            return null;
        }
        return k(a10);
    }

    public double h(Object obj) {
        return ((Double) obj).doubleValue();
    }

    public double i(Object obj) {
        return ((Double) obj).doubleValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Double j(double d10) {
        return Double.valueOf(d10);
    }

    public Double k(double d10) {
        return Double.valueOf(d10);
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Double> map) {
        Iterator<Map.Entry<? extends Double, ? extends Double>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Double, ? extends Double> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24771b = (InterfaceC13077s) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24771b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24771b);
    }

    public C3083w(InterfaceC13077s interfaceC13077s) {
        this.f24771b = interfaceC13077s;
    }
}
