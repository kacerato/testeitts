package Td;

import Zd.InterfaceC3465x;
import ee.InterfaceC13079u;
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

public class C3085y extends AbstractMap<Double, Integer> implements Map<Double, Integer>, Externalizable, Cloneable {

    public static final long f24806c = 1;

    public InterfaceC13079u f24807b;

    public class a extends AbstractSet<Map.Entry<Double, Integer>> {

        public class C0702a implements Iterator<Map.Entry<Double, Integer>> {

            public final InterfaceC3465x f24809b;

            public class C0703a implements Map.Entry<Double, Integer> {

                public Integer f24811b;

                public final Integer f24812c;

                public final Double f24813d;

                public C0703a(Integer num, Double d10) {
                    this.f24812c = num;
                    this.f24813d = d10;
                    this.f24811b = num;
                }

                @Override
                public Double getKey() {
                    return this.f24813d;
                }

                @Override
                public Integer getValue() {
                    return this.f24811b;
                }

                @Override
                public Integer setValue(Integer num) {
                    this.f24811b = num;
                    return C3085y.this.put(this.f24813d, num);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24813d) && entry.getValue().equals(this.f24811b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24813d.hashCode() + this.f24811b.hashCode();
                }
            }

            public C0702a() {
                this.f24809b = C3085y.this.f24807b.iterator();
            }

            @Override
            public Map.Entry<Double, Integer> next() {
                this.f24809b.g();
                double key = this.f24809b.key();
                Double j10 = key == C3085y.this.f24807b.l() ? null : C3085y.this.j(key);
                int value = this.f24809b.value();
                return new C0703a(value != C3085y.this.f24807b.i() ? C3085y.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24809b.hasNext();
            }

            @Override
            public void remove() {
                this.f24809b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Double, Integer> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Double, Integer>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3085y.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3085y.this.containsKey(key) && C3085y.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3085y.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Double, Integer>> iterator() {
            return new C0702a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Double d10 = (Double) ((Map.Entry) obj).getKey();
            C3085y c3085y = C3085y.this;
            c3085y.f24807b.a(c3085y.h(d10));
            return true;
        }

        @Override
        public int size() {
            return C3085y.this.f24807b.size();
        }
    }

    public C3085y() {
    }

    @Override
    public Integer get(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24807b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = h(obj);
        }
        int p02 = this.f24807b.p0(l10);
        if (p02 == this.f24807b.i()) {
            return null;
        }
        return k(p02);
    }

    @Override
    public void clear() {
        this.f24807b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Double) && this.f24807b.A(h(obj));
        }
        InterfaceC13079u interfaceC13079u = this.f24807b;
        return interfaceC13079u.A(interfaceC13079u.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Integer) && this.f24807b.Q(i(obj));
    }

    public InterfaceC13079u e() {
        return this.f24807b;
    }

    @Override
    public Set<Map.Entry<Double, Integer>> entrySet() {
        return new a();
    }

    @Override
    public Integer put(Double d10, Integer num) {
        int N22 = this.f24807b.N2(d10 == null ? this.f24807b.l() : h(d10), num == null ? this.f24807b.i() : i(num));
        if (N22 == this.f24807b.i()) {
            return null;
        }
        return k(N22);
    }

    @Override
    public Integer remove(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24807b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = h(obj);
        }
        int a10 = this.f24807b.a(l10);
        if (a10 == this.f24807b.i()) {
            return null;
        }
        return k(a10);
    }

    public double h(Object obj) {
        return ((Double) obj).doubleValue();
    }

    public int i(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Double j(double d10) {
        return Double.valueOf(d10);
    }

    public Integer k(int i10) {
        return Integer.valueOf(i10);
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Integer> map) {
        Iterator<Map.Entry<? extends Double, ? extends Integer>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Double, ? extends Integer> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24807b = (InterfaceC13079u) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24807b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24807b);
    }

    public C3085y(InterfaceC13079u interfaceC13079u) {
        this.f24807b = interfaceC13079u;
    }
}
