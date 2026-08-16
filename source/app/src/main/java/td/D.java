package Td;

import ee.InterfaceC13082x;
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

public class D extends AbstractMap<Double, Short> implements Map<Double, Short>, Externalizable, Cloneable {

    public static final long f24243c = 1;

    public InterfaceC13082x f24244b;

    public class a extends AbstractSet<Map.Entry<Double, Short>> {

        public class C0583a implements Iterator<Map.Entry<Double, Short>> {

            public final Zd.B f24246b;

            public class C0584a implements Map.Entry<Double, Short> {

                public Short f24248b;

                public final Short f24249c;

                public final Double f24250d;

                public C0584a(Short sh2, Double d10) {
                    this.f24249c = sh2;
                    this.f24250d = d10;
                    this.f24248b = sh2;
                }

                @Override
                public Double getKey() {
                    return this.f24250d;
                }

                @Override
                public Short getValue() {
                    return this.f24248b;
                }

                @Override
                public Short setValue(Short sh2) {
                    this.f24248b = sh2;
                    return D.this.put(this.f24250d, sh2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24250d) && entry.getValue().equals(this.f24248b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24250d.hashCode() + this.f24248b.hashCode();
                }
            }

            public C0583a() {
                this.f24246b = D.this.f24244b.iterator();
            }

            @Override
            public Map.Entry<Double, Short> next() {
                this.f24246b.g();
                double key = this.f24246b.key();
                Double j10 = key == D.this.f24244b.l() ? null : D.this.j(key);
                short value = this.f24246b.value();
                return new C0584a(value != D.this.f24244b.i() ? D.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24246b.hasNext();
            }

            @Override
            public void remove() {
                this.f24246b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Double, Short> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Double, Short>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            D.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return D.this.containsKey(key) && D.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return D.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Double, Short>> iterator() {
            return new C0583a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Double d10 = (Double) ((Map.Entry) obj).getKey();
            D d11 = D.this;
            d11.f24244b.a(d11.h(d10));
            return true;
        }

        @Override
        public int size() {
            return D.this.f24244b.size();
        }
    }

    public D() {
    }

    @Override
    public Short get(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24244b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = h(obj);
        }
        short p02 = this.f24244b.p0(l10);
        if (p02 == this.f24244b.i()) {
            return null;
        }
        return k(p02);
    }

    @Override
    public void clear() {
        this.f24244b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Double) && this.f24244b.A(h(obj));
        }
        InterfaceC13082x interfaceC13082x = this.f24244b;
        return interfaceC13082x.A(interfaceC13082x.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Short) && this.f24244b.L(i(obj));
    }

    public InterfaceC13082x e() {
        return this.f24244b;
    }

    @Override
    public Set<Map.Entry<Double, Short>> entrySet() {
        return new a();
    }

    @Override
    public Short put(Double d10, Short sh2) {
        short Y22 = this.f24244b.Y2(d10 == null ? this.f24244b.l() : h(d10), sh2 == null ? this.f24244b.i() : i(sh2));
        if (Y22 == this.f24244b.i()) {
            return null;
        }
        return k(Y22);
    }

    @Override
    public Short remove(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24244b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = h(obj);
        }
        short a10 = this.f24244b.a(l10);
        if (a10 == this.f24244b.i()) {
            return null;
        }
        return k(a10);
    }

    public double h(Object obj) {
        return ((Double) obj).doubleValue();
    }

    public short i(Object obj) {
        return ((Short) obj).shortValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Double j(double d10) {
        return Double.valueOf(d10);
    }

    public Short k(short s10) {
        return Short.valueOf(s10);
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Short> map) {
        Iterator<Map.Entry<? extends Double, ? extends Short>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Double, ? extends Short> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24244b = (InterfaceC13082x) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24244b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24244b);
    }

    public D(InterfaceC13082x interfaceC13082x) {
        this.f24244b = interfaceC13082x;
    }
}
